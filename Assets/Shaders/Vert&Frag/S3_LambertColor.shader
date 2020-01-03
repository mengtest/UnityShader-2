/**
* added by passion @ 2020-1-1
* https://passion.blog.csdn.net
* 漫反射+固定色
*/

Shader "Custom/Lambert Color"
{
    Properties{
        _Diffuse ("Diffuse",Color) = (1,1,1,1)
    }
 
    SubShader
    {
        Pass
        {
            Tags {"LightModel" = "ForwardBase"}
    
            CGPROGRAM
 
            #pragma vertex vert
            #pragma fragment frag
            #include "Lighting.cginc"
 
            fixed4 _Diffuse;
 
            struct a2v
            {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
 
            struct v2f
            {
                float4 pos : SV_POSITION;
                fixed3 color : COLOR;
            };
 
            v2f vert(a2v v)
            {
                v2f o;
                //保存顶点在裁剪空间中的坐标信息
                o.pos = UnityObjectToClipPos(v.vertex);
                //得到环境光部分
                fixed3 ambient =  UNITY_LIGHTMODEL_AMBIENT.xyz;
                //把顶点法线转换到世界空间中
                fixed3 worldnormal = normalize(mul(v.normal,(float3x3)unity_WorldToObject));
                //光源方向归一化
                fixed3 worldlight = normalize(_WorldSpaceLightPos0.xyz);
                //光源颜色和强度、漫反射属性、顶点法线、光源方向，利用公式计算
                fixed3 diffuse = _LightColor0.rgb * _Diffuse.rgb * saturate(dot(worldnormal,worldlight));
 
                //环境光 + 漫反射光 = 最终光照结果
                o.color = ambient + diffuse;
                return o;
            }
 
            fixed4 frag(v2f i) : SV_Target
            {
                return fixed4(i.color,1.0); 
            }
 
 
            ENDCG
 
        }
 
    }
 
    FallBack "Diffuse"
 
}