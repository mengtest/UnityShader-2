/**
* added by passion @ 2020-1-1
* https://passion.blog.csdn.net
* 自定义光照-漫反射-半兰伯特模型
*/

Shader "Custom/Diffuse Lambert" 
{
	Properties 
	{
		_MainTex ("MainTex",2D) = "white"{}
		_Diffuse ("Diffuse",Color) = (1,1,1,1)
	}
	SubShader 
	{
		Pass
		{
			Tags { "LightMode"="ForwardBase" "RenderType"="Geometry"}
			 
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

  			#include "UnityCG.cginc"
			#include "Lighting.cginc"//光照相关宏定义
            #include "AutoLight.cginc"
            
			sampler2D _MainTex;//贴图变量声明
            float4 _MainTex_ST;//UV贴图声明，否则TRANSFORM_TEX会报错
			fixed4 _Diffuse;//主颜色声明

			struct a2v{
 
				float4 vertex : POSITION;//语义：顶点坐标
				float3 normal : NORMAL;//语义：顶点法线
				float2 uv : TEXCOORD0;//语义：贴图的UV
			};
 			
			struct v2f{
 
				float4 pos : SV_POSITION;//语义：屏幕空间位置
				float2 uv : TEXCOORD0;//语义：几何阶段uv
				fixed3 worldNormal : TEXCOORD1;//世界坐标法线
			};
 			
			v2f vert(a2v v)
			{
				v2f o;
				
				o.pos = UnityObjectToClipPos(v.vertex);//顶点信息转换至世界空间
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);//应用uv的offset和tilling
				o.worldNormal=UnityObjectToWorldNormal(v.normal);//法线充自身空间转世界空间

				return o;
			}
 
			fixed4 frag(v2f i) : SV_Target
			{
				//获取环境光颜色，在Lighting中设置
				fixed3 ambient=UNITY_LIGHTMODEL_AMBIENT.xyz;

				//获取光照方向
				fixed3 worldlight = normalize(UnityWorldSpaceLightDir(i.pos));

				//漫反射（法线和光线点乘求夹角）
				fixed diff= saturate(dot(i.worldNormal,worldlight));
				//半兰伯特/漫反射遮蔽
				diff = diff*0.5+0.5;
				fixed3 diffuse=_LightColor0.rgb*diff*_Diffuse.rgb;

				//获取贴图颜色	
				fixed4 col = tex2D(_MainTex, i.uv);
				//贴图和环境光混合
				return col * fixed4(diffuse+ambient, 1.0);
			}
			ENDCG
 
		}
 
	}
	
	//回滚默认shader,硬件不支持上面subshader时，选择fallback
	FallBack "Specular"
}