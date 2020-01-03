/**
* added by passion @ 2020-1-1
* https://passion.blog.csdn.net
* 固定色（无3d效果）
*/

Shader "Custom/Solid Color"
{
    Properties
    {
        _MainColor("MainColor", Color) = (1,1,1,1)//主颜色
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

            #include "UnityCG.cginc"//shader常用函数和宏定义

            struct appdata
            {
                float4 vertex : POSITION;//语义：顶点坐标
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;//语义：屏幕空间位置
            };

            fixed4 _MainColor;//主颜色声明和属性区保持同名，否则cg不认识

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);//顶点从自身空间转裁剪空间，几何阶段使用
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                //直接返回主颜色
                return _MainColor;
            }
            ENDCG
        }
    }
}
