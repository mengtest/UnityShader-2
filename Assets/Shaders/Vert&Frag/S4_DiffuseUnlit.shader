/**
* added by passion @ 2020-1-1
* https://passion.blog.csdn.net
* 无光照 贴图+颜色混合
*/

Shader "Custom/DiffuseUnlit"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}//主贴图
        _Diffuse ("Diffuse ", Color) = (1,1,1,1)//主颜色
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

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;//语义：顶点坐标
                float2 uv : TEXCOORD0;//语义：顶点法线
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;//语义：屏幕空间位置
                float2 uv : TEXCOORD0;//语义：几何阶段uv
            };

            sampler2D _MainTex;//贴图变量声明和属性声明对应
            float4 _MainTex_ST;//UV贴图声明，否则TRANSFORM_TEX会报错
            fixed4 _Diffuse;

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);//顶点从自身空间转裁剪空间，几何阶段使用
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);//应用uv的offset和tilling
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                // sample the texture
                fixed4 col = tex2D(_MainTex, i.uv);//采样贴图像素

                col *= _Diffuse;
                return col;
            }
            ENDCG
        }
    }
}
