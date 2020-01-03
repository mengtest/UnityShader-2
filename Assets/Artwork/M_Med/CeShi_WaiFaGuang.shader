// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// 注意：手动更改此数据可能会妨碍您在 Shader Forge 中打开它
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:Standard,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:5614,x:33301,y:32493,varname:node_5614,prsc:2|diff-9573-OUT,spec-6324-OUT,gloss-2486-OUT,normal-3768-RGB,emission-8252-OUT;n:type:ShaderForge.SFN_Fresnel,id:3205,x:32209,y:32219,varname:node_3205,prsc:2|EXP-8320-OUT;n:type:ShaderForge.SFN_Add,id:9573,x:32758,y:32173,varname:node_9573,prsc:2|A-3648-OUT,B-5339-OUT,C-884-RGB;n:type:ShaderForge.SFN_Color,id:9527,x:32037,y:32484,ptovrint:False,ptlb:Fresnel_Color,ptin:_Fresnel_Color,varname:_Fresnel_Color,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2973616,c2:0.9191176,c3:0.6875669,c4:1;n:type:ShaderForge.SFN_Multiply,id:4586,x:32383,y:32299,varname:node_4586,prsc:2|A-3205-OUT,B-9527-RGB;n:type:ShaderForge.SFN_Slider,id:8320,x:31863,y:32248,ptovrint:False,ptlb:Fresnel Light Area,ptin:_FresnelLightArea,varname:_FresnelLightArea,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.340845,max:10;n:type:ShaderForge.SFN_Multiply,id:5339,x:32555,y:32400,varname:node_5339,prsc:2|A-4586-OUT,B-487-OUT;n:type:ShaderForge.SFN_Slider,id:487,x:32220,y:32611,ptovrint:False,ptlb:Outer Light_intensity,ptin:_OuterLight_intensity,varname:_OuterLight_intensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.733773,max:5;n:type:ShaderForge.SFN_Tex2d,id:3099,x:30895,y:32025,ptovrint:False,ptlb:Main_Tex,ptin:_Main_Tex,varname:_Main_Tex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e119c25bdfc20d644b3f7532927f0a3b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6640,x:31464,y:31772,varname:node_6640,prsc:2|A-5629-OUT,B-3099-RGB,C-9038-RGB;n:type:ShaderForge.SFN_Color,id:1114,x:31085,y:31702,ptovrint:False,ptlb:Main_Color,ptin:_Main_Color,varname:_Main_Color,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8823529,c2:0.8823529,c3:0.8823529,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3768,x:32902,y:33170,ptovrint:False,ptlb:Normal_Tex,ptin:_Normal_Tex,varname:_Normal_Tex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c8098e61fbef75e4e84006f36314fc95,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalVector,id:9037,x:30145,y:31581,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:8170,x:30167,y:31752,varname:node_8170,prsc:2;n:type:ShaderForge.SFN_Dot,id:4863,x:30367,y:31641,varname:node_4863,prsc:2,dt:1|A-9037-OUT,B-8170-OUT;n:type:ShaderForge.SFN_Vector1,id:9416,x:30349,y:31485,varname:node_9416,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Add,id:4017,x:30574,y:31631,varname:node_4017,prsc:2|A-9416-OUT,B-4863-OUT;n:type:ShaderForge.SFN_Multiply,id:5303,x:30868,y:31575,varname:node_5303,prsc:2|A-9416-OUT,B-4017-OUT;n:type:ShaderForge.SFN_Multiply,id:5629,x:31283,y:31596,varname:node_5629,prsc:2|A-7715-OUT,B-1114-RGB;n:type:ShaderForge.SFN_Tex2d,id:371,x:30613,y:33405,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:_Specular,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:929101413894b914b81c09c777ff3ac4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:318,x:31206,y:33062,ptovrint:False,ptlb:Specular_Color,ptin:_Specular_Color,varname:_Specular_Color,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5310346,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:407,x:31490,y:32893,varname:node_407,prsc:2|A-1438-OUT,B-318-RGB,C-3594-OUT;n:type:ShaderForge.SFN_Multiply,id:7715,x:31075,y:31541,varname:node_7715,prsc:2|A-5303-OUT,B-5303-OUT;n:type:ShaderForge.SFN_Multiply,id:3648,x:31688,y:31912,varname:node_3648,prsc:2|A-6640-OUT,B-7060-OUT,C-9038-RGB;n:type:ShaderForge.SFN_Slider,id:7060,x:31362,y:32269,ptovrint:False,ptlb:MainTex_Intensity,ptin:_MainTex_Intensity,varname:_MainTex_Intensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:2.232053,max:8;n:type:ShaderForge.SFN_NormalVector,id:3579,x:30163,y:32497,prsc:2,pt:False;n:type:ShaderForge.SFN_HalfVector,id:5043,x:30190,y:32369,varname:node_5043,prsc:2;n:type:ShaderForge.SFN_Dot,id:7126,x:30397,y:32415,varname:node_7126,prsc:2,dt:1|A-5043-OUT,B-3579-OUT;n:type:ShaderForge.SFN_Power,id:8312,x:30994,y:32483,varname:node_8312,prsc:2|VAL-8069-OUT,EXP-5601-OUT;n:type:ShaderForge.SFN_Exp,id:5601,x:30594,y:32620,varname:node_5601,prsc:2,et:1|IN-9157-OUT;n:type:ShaderForge.SFN_Slider,id:9157,x:30190,y:32690,ptovrint:False,ptlb:Spec_Range,ptin:_Spec_Range,varname:_Spec_Range,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.586258,max:5;n:type:ShaderForge.SFN_Multiply,id:5729,x:31176,y:32508,varname:node_5729,prsc:2|A-8312-OUT,B-8092-OUT;n:type:ShaderForge.SFN_Slider,id:8092,x:30716,y:32759,ptovrint:False,ptlb:Spec_Intensity,ptin:_Spec_Intensity,varname:_Spec_Intensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8547009,max:5;n:type:ShaderForge.SFN_ComponentMask,id:1438,x:31206,y:32851,varname:node_1438,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-371-RGB;n:type:ShaderForge.SFN_Add,id:1451,x:30585,y:32336,varname:node_1451,prsc:2|A-4315-OUT,B-7126-OUT;n:type:ShaderForge.SFN_Vector1,id:4315,x:30350,y:32263,varname:node_4315,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Multiply,id:8069,x:30756,y:32289,varname:node_8069,prsc:2|A-4315-OUT,B-1451-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6274,x:31422,y:34028,varname:node_6274,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-371-RGB;n:type:ShaderForge.SFN_ComponentMask,id:6731,x:31459,y:33490,varname:node_6731,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-371-RGB;n:type:ShaderForge.SFN_Multiply,id:6324,x:31797,y:32880,varname:node_6324,prsc:2|A-5729-OUT,B-407-OUT;n:type:ShaderForge.SFN_Multiply,id:8252,x:32265,y:33797,varname:node_8252,prsc:2|A-6274-OUT,B-2179-RGB,C-3223-OUT;n:type:ShaderForge.SFN_Color,id:2179,x:31422,y:34193,ptovrint:False,ptlb:Emssion_Color,ptin:_Emssion_Color,varname:_Emssion_Color,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4643166,c2:0.8308824,c3:0.618527,c4:1;n:type:ShaderForge.SFN_Slider,id:3223,x:31330,y:34404,ptovrint:False,ptlb:Emission_Intensity,ptin:_Emission_Intensity,varname:_Emission_Intensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.624368,max:5;n:type:ShaderForge.SFN_Slider,id:3594,x:31127,y:33280,ptovrint:False,ptlb:Spec Color _Intensity,ptin:_SpecColor_Intensity,varname:_SpecColor_Intensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4529815,max:1;n:type:ShaderForge.SFN_Slider,id:7224,x:31436,y:33741,ptovrint:False,ptlb:Gloss_Intensity,ptin:_Gloss_Intensity,varname:_Gloss_Intensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4946575,max:1;n:type:ShaderForge.SFN_Add,id:2486,x:32140,y:33336,varname:node_2486,prsc:2|A-6731-OUT,B-7224-OUT;n:type:ShaderForge.SFN_AmbientLight,id:884,x:32628,y:32504,varname:node_884,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:2425,x:31966,y:31723,varname:node_2425,prsc:2;n:type:ShaderForge.SFN_LightColor,id:9038,x:31246,y:31967,varname:node_9038,prsc:2;proporder:1114-7060-3099-3768-318-3594-9157-8092-371-2179-3223-7224-8320-9527-487;pass:END;sub:END;*/

Shader "Custom/CeShi_WaiFaGuang" {
    Properties {
        [HDR]_Main_Color ("Main_Color", Color) = (0.8823529,0.8823529,0.8823529,1)
        _MainTex_Intensity ("MainTex_Intensity", Range(0.1, 8)) = 2.232053
        _Main_Tex ("Main_Tex", 2D) = "white" {}
        _Normal_Tex ("Normal_Tex", 2D) = "bump" {}
        [HDR]_Specular_Color ("Specular_Color", Color) = (0.5310346,1,0,1)
        _SpecColor_Intensity ("Spec Color _Intensity", Range(0, 1)) = 0.4529815
        _Spec_Range ("Spec_Range", Range(0, 5)) = 1.586258
        _Spec_Intensity ("Spec_Intensity", Range(0, 5)) = 0.8547009
        _Specular ("Specular", 2D) = "white" {}
        [HDR]_Emssion_Color ("Emssion_Color", Color) = (0.4643166,0.8308824,0.618527,1)
        _Emission_Intensity ("Emission_Intensity", Range(0, 5)) = 2.624368
        _Gloss_Intensity ("Gloss_Intensity", Range(0, 1)) = 0.4946575
        _FresnelLightArea ("Fresnel Light Area", Range(0, 10)) = 3.340845
        [HDR]_Fresnel_Color ("Fresnel_Color", Color) = (0.2973616,0.9191176,0.6875669,1)
        _OuterLight_intensity ("Outer Light_intensity", Range(0, 5)) = 2.733773
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _Fresnel_Color;
            uniform float _FresnelLightArea;
            uniform float _OuterLight_intensity;
            uniform sampler2D _Main_Tex; uniform float4 _Main_Tex_ST;
            uniform float4 _Main_Color;
            uniform sampler2D _Normal_Tex; uniform float4 _Normal_Tex_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform float4 _Specular_Color;
            uniform float _MainTex_Intensity;
            uniform float _Spec_Range;
            uniform float _Spec_Intensity;
            uniform float4 _Emssion_Color;
            uniform float _Emission_Intensity;
            uniform float _SpecColor_Intensity;
            uniform float _Gloss_Intensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_Tex_var = UnpackNormal(tex2D(_Normal_Tex,TRANSFORM_TEX(i.uv0, _Normal_Tex)));
                float3 normalLocal = _Normal_Tex_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 _Specular_var = tex2D(_Specular,TRANSFORM_TEX(i.uv0, _Specular));
                float gloss = (_Specular_var.rgb.b+_Gloss_Intensity);
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_4315 = 0.8;
                float3 specularColor = ((pow((node_4315*(node_4315+max(0,dot(halfDirection,i.normalDir)))),exp2(_Spec_Range))*_Spec_Intensity)*(_Specular_var.rgb.r*_Specular_Color.rgb*_SpecColor_Intensity));
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 indirectSpecular = (gi.indirect.specular)*specularColor;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float node_9416 = 0.9;
                float node_5303 = (node_9416*(node_9416+max(0,dot(normalDirection,lightDirection))));
                float4 _Main_Tex_var = tex2D(_Main_Tex,TRANSFORM_TEX(i.uv0, _Main_Tex));
                float3 diffuseColor = (((((node_5303*node_5303)*_Main_Color.rgb)*_Main_Tex_var.rgb*_LightColor0.rgb)*_MainTex_Intensity*_LightColor0.rgb)+((pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelLightArea)*_Fresnel_Color.rgb)*_OuterLight_intensity)+UNITY_LIGHTMODEL_AMBIENT.rgb);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (_Specular_var.rgb.g*_Emssion_Color.rgb*_Emission_Intensity);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _Fresnel_Color;
            uniform float _FresnelLightArea;
            uniform float _OuterLight_intensity;
            uniform sampler2D _Main_Tex; uniform float4 _Main_Tex_ST;
            uniform float4 _Main_Color;
            uniform sampler2D _Normal_Tex; uniform float4 _Normal_Tex_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform float4 _Specular_Color;
            uniform float _MainTex_Intensity;
            uniform float _Spec_Range;
            uniform float _Spec_Intensity;
            uniform float4 _Emssion_Color;
            uniform float _Emission_Intensity;
            uniform float _SpecColor_Intensity;
            uniform float _Gloss_Intensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_Tex_var = UnpackNormal(tex2D(_Normal_Tex,TRANSFORM_TEX(i.uv0, _Normal_Tex)));
                float3 normalLocal = _Normal_Tex_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 _Specular_var = tex2D(_Specular,TRANSFORM_TEX(i.uv0, _Specular));
                float gloss = (_Specular_var.rgb.b+_Gloss_Intensity);
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_4315 = 0.8;
                float3 specularColor = ((pow((node_4315*(node_4315+max(0,dot(halfDirection,i.normalDir)))),exp2(_Spec_Range))*_Spec_Intensity)*(_Specular_var.rgb.r*_Specular_Color.rgb*_SpecColor_Intensity));
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_9416 = 0.9;
                float node_5303 = (node_9416*(node_9416+max(0,dot(normalDirection,lightDirection))));
                float4 _Main_Tex_var = tex2D(_Main_Tex,TRANSFORM_TEX(i.uv0, _Main_Tex));
                float3 diffuseColor = (((((node_5303*node_5303)*_Main_Color.rgb)*_Main_Tex_var.rgb*_LightColor0.rgb)*_MainTex_Intensity*_LightColor0.rgb)+((pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelLightArea)*_Fresnel_Color.rgb)*_OuterLight_intensity)+UNITY_LIGHTMODEL_AMBIENT.rgb);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _Fresnel_Color;
            uniform float _FresnelLightArea;
            uniform float _OuterLight_intensity;
            uniform sampler2D _Main_Tex; uniform float4 _Main_Tex_ST;
            uniform float4 _Main_Color;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform float4 _Specular_Color;
            uniform float _MainTex_Intensity;
            uniform float _Spec_Range;
            uniform float _Spec_Intensity;
            uniform float4 _Emssion_Color;
            uniform float _Emission_Intensity;
            uniform float _SpecColor_Intensity;
            uniform float _Gloss_Intensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _Specular_var = tex2D(_Specular,TRANSFORM_TEX(i.uv0, _Specular));
                o.Emission = (_Specular_var.rgb.g*_Emssion_Color.rgb*_Emission_Intensity);
                
                float node_9416 = 0.9;
                float node_5303 = (node_9416*(node_9416+max(0,dot(normalDirection,lightDirection))));
                float4 _Main_Tex_var = tex2D(_Main_Tex,TRANSFORM_TEX(i.uv0, _Main_Tex));
                float3 diffColor = (((((node_5303*node_5303)*_Main_Color.rgb)*_Main_Tex_var.rgb*_LightColor0.rgb)*_MainTex_Intensity*_LightColor0.rgb)+((pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelLightArea)*_Fresnel_Color.rgb)*_OuterLight_intensity)+UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_4315 = 0.8;
                float3 specColor = ((pow((node_4315*(node_4315+max(0,dot(halfDirection,i.normalDir)))),exp2(_Spec_Range))*_Spec_Intensity)*(_Specular_var.rgb.r*_Specular_Color.rgb*_SpecColor_Intensity));
                float roughness = 1.0 - (_Specular_var.rgb.b+_Gloss_Intensity);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Standard"
    CustomEditor "ShaderForgeMaterialInspector"
}
