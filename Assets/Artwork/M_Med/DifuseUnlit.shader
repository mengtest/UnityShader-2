Shader "Example/Unlit Shader"
{
    Properties
    {
		_MainTex("Texture", 2D) = "white" {}
		_MaskTex("Texture", 2D) = "white" {}
		_Color ("Color", Color) = (1,1,1,1)
		_Power ("Power", range(0,2)) = 1
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            // make fog work
            #pragma multi_compile_fog

            #include "UnityCG.cginc"
			 #include "UnityLightingCommon.cginc"

            struct appdata
            {
				float4 vertex : POSITION;
				half3 normal : NORMAL;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                UNITY_FOG_COORDS(1)
                float4 vertex : SV_POSITION;
				fixed4 diff : COLOR0;
            };

            sampler2D _MainTex;
			sampler2D _MaskTex;
            float4 _MainTex_ST;
			fixed4 _Color;
			float _Power;

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                UNITY_TRANSFER_FOG(o,o.vertex);


				//自定义 漫反射Lambert 光照模型
				half3 worldNormal = UnityObjectToWorldNormal(v.normal);//法线从自身坐标系转世界坐标系
				half nl = dot(worldNormal, _WorldSpaceLightPos0.xyz);
				nl = nl * 0.5 + 0.5;//漫反射遮蔽，半lambert
				o.diff = nl * _LightColor0;
				return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                // sample the texture
                fixed4 col = tex2D(_MainTex, i.uv) * _Color * _Power;
				col *= i.diff;
				
                // apply fog
                UNITY_APPLY_FOG(i.fogCoord, col);
                return col;
            }
            ENDCG
        }
    }
}
