/**
* added by passion @ 2020-1-1
* https://passion.blog.csdn.net
* 波动水面
*/

Shader "Example/Wave Water"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _Speed ("Speed", Range(0, 100)) = 10
        _Height ("Height", Range(0, 1)) = 0.5
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
            #include "AutoLight.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
                float3 normal : NORMAL;
                float2 uv : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };

            sampler2D _MainTex;
            float4 _MainTex_ST;
            uniform float _Speed;
            uniform float _Height;

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                o.normal = UnityObjectToWorldNormal(v.normal);

                //计算顶点的相对坐标
                float4 objPos = mul(unity_ObjectToWorld, float4(0,0,0,1));
                float3 worldPos = mul(unity_ObjectToWorld, v.vertex);
                float3 localPos = worldPos.rgb-objPos.rgb;

                float offset = sin(localPos.r+localPos.b+(_Time*_Speed))*_Height;
                offset*=o.uv.x;
                offset*=o.uv.y;

                o.vertex.xyz += float3(0,offset,0);

                UNITY_TRANSFER_FOG(o,o.vertex);
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                // sample the texture
                fixed4 col = tex2D(_MainTex, i.uv);
                // apply fog
                UNITY_APPLY_FOG(i.fogCoord, col);
                return col;
            }
            ENDCG
        }
    }
}
