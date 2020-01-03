/**
* added by passion @ 2020-1-1
* https://passion.blog.csdn.net
* 顶点着色器的 自定义阴影（投射和接受）
*/

Shader "Custom/Cast Shadow"
{
	Properties
	{
		_MainTex("Main Texture", 2D) = "white" {}
		_Specular("Specular", Color) = (1,1,1,1)
		_Gloss("Gloss", Range(8,256)) = 8
	}

		SubShader
		{
			Pass
			{
				Tags
				{
					"LightMode" = "ForwardBase"
				}

				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
				#pragma multi_compile_fwdbase//计算阴影，必须开启

				#include "UnityCg.cginc"
				#include "Lighting.cginc"
				#include "AutoLight.cginc"//光照相关的宏定义

				sampler2D _MainTex;
				fixed4 _MainTex_ST;
				fixed4 _Specular;
				float _Gloss;

				struct appdata
				{
					float4 vertex : POSITION;
					float2 uv : TEXCOORD0;
					float3 normal : NORMAL;
				};

				struct v2f
				{
					float4 pos : SV_POSITION;
					float2 uv : TEXCOORD0;
					float3 worldNormal : TEXCOORD1;
					float4 worldPos: TEXCOORD2;

					SHADOW_COORDS(3)//按TEXCOORD数递增
				};

				v2f vert(appdata v)
				{
					v2f o;
					o.pos = UnityObjectToClipPos(v.vertex);
					o.uv = TRANSFORM_TEX(v.uv, _MainTex);
					o.worldNormal = UnityObjectToWorldNormal(v.normal);
					o.worldPos = mul(unity_ObjectToWorld, v.vertex);

					//cast shadow  填充阴影坐标，根据平台自动调整
					TRANSFER_SHADOW(o);
					return o;
				}

				fixed4 frag(v2f i) : SV_TARGET
				{
					//主帖图颜色
					fixed4 albedo = tex2D(_MainTex, i.uv);
					//光照衰减
					fixed4 ambient = albedo * UNITY_LIGHTMODEL_AMBIENT;

					//漫反射
					float3 worldLight = normalize(UnityWorldSpaceLightDir(i.worldPos.xyz));
					float3 worldView = normalize(UnityWorldSpaceViewDir(i.worldPos.xyz));
					fixed4 diff = albedo * _LightColor0 * max(0, dot(i.worldNormal, worldLight));

					//高光颜色
					float3 halfDir = normalize(worldView + worldLight);
					fixed4 spec = albedo * _Specular * pow(max(0, dot(halfDir, i.worldNormal)), _Gloss);

					//receive shadow
					UNITY_LIGHT_ATTENUATION(atten, i, i.worldPos.xyz);

					fixed4 col = ambient + (diff + spec) * atten;
					return col;
				}

				ENDCG
			}


		}

			Fallback "VertexLit"
}