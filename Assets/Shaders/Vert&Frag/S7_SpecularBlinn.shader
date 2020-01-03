/**
* added by passion @ 2020-1-1
* https://passion.blog.csdn.net
* 自定义光照-高光-BlinnPhong模型
*/

Shader "Custom/Diffuse Specular-Blinn" 
{
	Properties 
	{
		_MainTex ("MainTex",2D) = "white"{}//主贴图
		_Diffuse ("Diffuse",Color) = (1,1,1,1)//漫反射颜色
		_Specular("Specular",Color) = (1,1,1,1)//高光颜色
		_Gloss("Gloss",Range(5.0, 200)) = 20//光泽大小
		_Power("Power",Range(0, 10)) = 1//光泽强度
	}
	SubShader 
	{
		Pass
		{
			Tags { "LightMode"="ForwardBase" "RenderType"="Geometry"}
			 
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase

			#include "Lighting.cginc"
  			#include "UnityCG.cginc"
            #include "AutoLight.cginc"

			sampler2D _MainTex;
			fixed4 _MainTex_ST;
			fixed4 _Diffuse;
			fixed4 _Specular;
			float _Gloss;
			float _Power;

			struct a2v{
 
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float2 uv : TEXCOORD0;
			};
 			
			struct v2f{
 
				float4 pos : SV_POSITION;
				float2 uv : TEXCOORD0;
				float3 worldNormal : TEXCOORD1;
			};
 			
			v2f vert(a2v v)
			{
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);//顶点信息转换至世界空间
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);//应用uv的offset和tilling
				o.worldNormal=UnityObjectToWorldNormal(v.normal);//计算世界坐标系法线

				return o;
			}
 
			fixed4 frag(v2f i) : SV_Target
			{
				//环境光
				fixed3 ambient=UNITY_LIGHTMODEL_AMBIENT.xyz;

				/**Blinn Phong高光计算**/
				//灯光方向
				fixed3 worldlight=normalize(UnityWorldSpaceLightDir(i.pos));
				//视角方向				
				fixed3 viewDir=normalize(UnityWorldSpaceViewDir(i.pos));
				//半角向量
				fixed3 halfDir=normalize(worldlight + viewDir);
				//高光系数
				float nh = saturate(dot(i.worldNormal,halfDir));
				//计算高光
				fixed3 specular=_LightColor0.rgb * _Specular.rgb * pow(nh,_Gloss)*_Power;
				
				//颜色采样和混合
				fixed4 col = tex2D(_MainTex, i.uv);
				return col*_Diffuse + fixed4(ambient,1) * fixed4(specular,1);
			}
			ENDCG
 
		}
 
	}
	
	FallBack "Specular"
}