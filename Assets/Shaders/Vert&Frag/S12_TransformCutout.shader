/**
* added by passion @ 2020-1-1
* https://passion.blog.csdn.net
* 透明度裁剪
*/

Shader "Custom/Transform Cutout" 
{
	Properties 
	{
		_MainTex ("MainTex",2D) = "white"{}
		_Diffuse ("Diffuse",Color) = (1,1,1,1)
		_Cutoff("Cutoff",Range(0,1)) = 0.5
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
            #include "AutoLight.cginc"
			#include "Lighting.cginc"

			sampler2D _MainTex;
			fixed4 _MainTex_ST;
			fixed4 _Diffuse;
			float _Cutoff;

			struct a2v{
 
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float2 texcoord : TEXCOORD0;
			};
 			
			struct v2f{
 
				float4 pos : SV_POSITION;
				float2 uv : TEXCOORD0;
			};
 			
			v2f vert(a2v v)
			{
				v2f o;
				//顶点信息转换至世界空间
				o.pos = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);

				return o;
			}
 
			fixed4 frag(v2f i) : SV_Target
			{
				fixed4 col = tex2D(_MainTex, i.uv)*_Diffuse;
				clip(col.a - _Cutoff);
				
				return col;
			}
			ENDCG
 
		}
 
	}
	
	FallBack "Specular"
}