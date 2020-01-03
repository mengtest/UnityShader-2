/**
* added by passion @ 2020-1-1
* https://passion.blog.csdn.net
* 法线贴图
*/

Shader "Custom/NormalMap"
{
    //属性
    Properties{
        _Diffuse("Diffuse", Color) = (1,1,1,1)//主颜色
        _MainTex("Base 2D", 2D) = "white"{}//主贴图
        _BumpMap("Bump Map", 2D) = "bump"{}//法线贴图
        // _BumpFactor ("Bump Scale", Range(0.1, 30.0)) = 10.0//法线缩放
    }
 
    //子着色器  
    SubShader
    {
        Pass
        {
            Tags{ "RenderType" = "Opaque" }
 
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag   

            #include "UnityCG.cginc"
            #include "Lighting.cginc"

            fixed4 _Diffuse;
            sampler2D _MainTex;
            float4 _MainTex_ST;//使用了TRANSFROM_TEX宏就需要定义XXX_ST
            sampler2D _BumpMap;
            // float _BumpFactor;
 
            //含tangent变量的appdata,系统UnityCG.cginc已定义
            // struct appdata_tan {
            //     float4 vertex : POSITION;
            //     float4 tangent : TANGENT;
            //     float3 normal : NORMAL;
            //     float4 texcoord : TEXCOORD0;
            // };

            //定义结构体：vertex shader阶段输出的内容
            struct v2f
            {
                float4 pos : SV_POSITION;
                //转化纹理坐标
                float2 uv : TEXCOORD0;
                //tangent空间的光线方向
                float3 lightDir : TEXCOORD1;
            };
 

            v2f vert(appdata_tan v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);

                //这个宏为我们定义好了模型空间到切线空间的转换矩阵rotation
                TANGENT_SPACE_ROTATION;
                //ObjectSpaceLightDir可以把光线方向转化到模型空间，然后通过rotation再转化到切线空间
                o.lightDir = mul(rotation, ObjSpaceLightDir(v.vertex));
                
                return o;
            }
 
            fixed4 frag(v2f i) : SV_Target
            {
                //unity自身的diffuse也是带了环境光，这里我们也增加一下环境光
                fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz * _Diffuse.xyz;
                //直接解出切线空间法线
                float3 tangentNormal = UnpackNormal(tex2D(_BumpMap, i.uv));

                //获取法线缩放
                // float3 normalFactor = float3(_BumpFactor, _BumpFactor, 1);
                //将factor与法线相乘并normalize
                // tangentNormal = normalize(tangentNormal * normalFactor);

                //normalize一下切线空间的光照方向
                float3 tangentLight = normalize(i.lightDir);
                //根据半兰伯特模型计算像素的光照信息
                fixed3 lambert = 0.5 * dot(tangentNormal, tangentLight) + 0.5;
                //最终输出颜色为lambert光强*材质diffuse颜色*光颜色
                fixed3 diffuse = lambert * _Diffuse.xyz * _LightColor0.xyz + ambient;
                //进行纹理采样
                fixed4 color = tex2D(_MainTex, i.uv);
                return fixed4(diffuse * color.rgb, 1.0);
            }
 
            ENDCG
        }
 
    }
        //前面的Shader失效的话，使用默认的Diffuse
        FallBack "Diffuse"
}