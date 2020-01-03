// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-747-OUT,spec-416-OUT,gloss-905-OUT,normal-5557-RGB,emission-7831-OUT;n:type:ShaderForge.SFN_Tex2d,id:5557,x:32416,y:32455,ptovrint:False,ptlb:BumpTex,ptin:_BumpTex,varname:node_5557,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:9244,x:31927,y:32139,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_9244,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:2687,x:31378,y:32556,ptovrint:False,ptlb:SpecPower,ptin:_SpecPower,varname:node_2687,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:273,x:31852,y:32869,ptovrint:False,ptlb:GlossPower,ptin:_GlossPower,varname:_node_2687_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4504971,max:1;n:type:ShaderForge.SFN_Tex2d,id:9535,x:31364,y:32768,ptovrint:False,ptlb:SpecTex,ptin:_SpecTex,varname:node_9535,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:72e2d3ef0248c1c49a943d3b6b0288ea,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:416,x:31745,y:32560,varname:node_416,prsc:2|A-2687-OUT,B-9535-R;n:type:ShaderForge.SFN_Color,id:3968,x:31957,y:33574,ptovrint:False,ptlb:RimColor,ptin:_RimColor,varname:node_3968,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:4933,x:31565,y:33615,ptovrint:False,ptlb:RimPower,ptin:_RimPower,varname:node_4933,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Fresnel,id:7120,x:31957,y:33428,varname:node_7120,prsc:2|EXP-4933-OUT;n:type:ShaderForge.SFN_Multiply,id:550,x:32158,y:33483,cmnt:Fresnel,varname:node_550,prsc:2|A-7120-OUT,B-3968-RGB,C-9522-OUT;n:type:ShaderForge.SFN_Color,id:1270,x:31927,y:32340,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_1270,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:2237,x:32172,y:32226,cmnt:Main,varname:node_2237,prsc:2|A-9244-RGB,B-1270-RGB;n:type:ShaderForge.SFN_Slider,id:9522,x:31811,y:33755,ptovrint:False,ptlb:RimValue,ptin:_RimValue,varname:node_9522,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:5033,x:31952,y:33063,cmnt:Rim,varname:node_5033,prsc:2|A-9535-G,B-256-RGB,C-9872-OUT;n:type:ShaderForge.SFN_Slider,id:9872,x:31545,y:33284,ptovrint:False,ptlb:EmisionPower,ptin:_EmisionPower,varname:node_9872,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:256,x:31644,y:33088,ptovrint:False,ptlb:EmisionColor,ptin:_EmisionColor,varname:_RimColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:905,x:32178,y:32706,varname:node_905,prsc:2|A-9535-B,B-273-OUT;n:type:ShaderForge.SFN_Add,id:7831,x:32362,y:33201,varname:node_7831,prsc:2|A-5033-OUT,B-550-OUT;n:type:ShaderForge.SFN_LightVector,id:6794,x:31631,y:31675,varname:node_6794,prsc:2;n:type:ShaderForge.SFN_Dot,id:7658,x:31819,y:31724,cmnt:Lambert,varname:node_7658,prsc:2,dt:2|A-6794-OUT,B-5483-OUT;n:type:ShaderForge.SFN_NormalVector,id:5483,x:31631,y:31805,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:9753,x:32107,y:31690,cmnt:Back,varname:node_9753,prsc:2|A-9102-OUT,B-7658-OUT,C-1777-OUT;n:type:ShaderForge.SFN_Color,id:366,x:31631,y:31529,ptovrint:False,ptlb:BackColor,ptin:_BackColor,varname:node_366,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.162333,c4:1;n:type:ShaderForge.SFN_Slider,id:1777,x:31740,y:31892,ptovrint:False,ptlb:BackPower,ptin:_BackPower,varname:node_1777,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:747,x:32418,y:32127,varname:node_747,prsc:2|A-9753-OUT,B-2237-OUT;n:type:ShaderForge.SFN_OneMinus,id:9102,x:31819,y:31529,varname:node_9102,prsc:2|IN-366-RGB;proporder:1270-9244-5557-9535-2687-273-256-9872-366-1777-9522-4933-3968;pass:END;sub:END;*/

Shader "Shader Forge/Blinn-Spec-Difuse" {
    Properties {
        _MainColor ("MainColor", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _BumpTex ("BumpTex", 2D) = "bump" {}
        _SpecTex ("SpecTex", 2D) = "white" {}
        _SpecPower ("SpecPower", Range(0, 1)) = 1
        _GlossPower ("GlossPower", Range(0, 1)) = 0.4504971
        _EmisionColor ("EmisionColor", Color) = (1,1,1,1)
        _EmisionPower ("EmisionPower", Range(0, 1)) = 0
        _BackColor ("BackColor", Color) = (0,1,0.162333,1)
        _BackPower ("BackPower", Range(0, 1)) = 0
        _RimValue ("RimValue", Range(0, 10)) = 0
        _RimPower ("RimPower", Range(1, 10)) = 1
        _RimColor ("RimColor", Color) = (1,1,1,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _BumpTex; uniform float4 _BumpTex_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _SpecPower;
            uniform float _GlossPower;
            uniform sampler2D _SpecTex; uniform float4 _SpecTex_ST;
            uniform float4 _RimColor;
            uniform float _RimPower;
            uniform float4 _MainColor;
            uniform float _RimValue;
            uniform float _EmisionPower;
            uniform float4 _EmisionColor;
            uniform float4 _BackColor;
            uniform float _BackPower;
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
                float3 _BumpTex_var = UnpackNormal(tex2D(_BumpTex,TRANSFORM_TEX(i.uv0, _BumpTex)));
                float3 normalLocal = _BumpTex_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 _SpecTex_var = tex2D(_SpecTex,TRANSFORM_TEX(i.uv0, _SpecTex));
                float gloss = (_SpecTex_var.b*_GlossPower);
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
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_416 = (_SpecPower*_SpecTex_var.r);
                float3 specularColor = float3(node_416,node_416,node_416);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = (((1.0 - _BackColor.rgb)*min(0,dot(lightDirection,normalDirection))*_BackPower)+(_MainTex_var.rgb*_MainColor.rgb));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = ((_SpecTex_var.g*_EmisionColor.rgb*_EmisionPower)+(pow(1.0-max(0,dot(normalDirection, viewDirection)),_RimPower)*_RimColor.rgb*_RimValue));
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _BumpTex; uniform float4 _BumpTex_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _SpecPower;
            uniform float _GlossPower;
            uniform sampler2D _SpecTex; uniform float4 _SpecTex_ST;
            uniform float4 _RimColor;
            uniform float _RimPower;
            uniform float4 _MainColor;
            uniform float _RimValue;
            uniform float _EmisionPower;
            uniform float4 _EmisionColor;
            uniform float4 _BackColor;
            uniform float _BackPower;
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
                float3 _BumpTex_var = UnpackNormal(tex2D(_BumpTex,TRANSFORM_TEX(i.uv0, _BumpTex)));
                float3 normalLocal = _BumpTex_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 _SpecTex_var = tex2D(_SpecTex,TRANSFORM_TEX(i.uv0, _SpecTex));
                float gloss = (_SpecTex_var.b*_GlossPower);
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_416 = (_SpecPower*_SpecTex_var.r);
                float3 specularColor = float3(node_416,node_416,node_416);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = (((1.0 - _BackColor.rgb)*min(0,dot(lightDirection,normalDirection))*_BackPower)+(_MainTex_var.rgb*_MainColor.rgb));
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _SpecPower;
            uniform float _GlossPower;
            uniform sampler2D _SpecTex; uniform float4 _SpecTex_ST;
            uniform float4 _RimColor;
            uniform float _RimPower;
            uniform float4 _MainColor;
            uniform float _RimValue;
            uniform float _EmisionPower;
            uniform float4 _EmisionColor;
            uniform float4 _BackColor;
            uniform float _BackPower;
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
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _SpecTex_var = tex2D(_SpecTex,TRANSFORM_TEX(i.uv0, _SpecTex));
                o.Emission = ((_SpecTex_var.g*_EmisionColor.rgb*_EmisionPower)+(pow(1.0-max(0,dot(normalDirection, viewDirection)),_RimPower)*_RimColor.rgb*_RimValue));
                
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffColor = (((1.0 - _BackColor.rgb)*min(0,dot(lightDirection,normalDirection))*_BackPower)+(_MainTex_var.rgb*_MainColor.rgb));
                float node_416 = (_SpecPower*_SpecTex_var.r);
                float3 specColor = float3(node_416,node_416,node_416);
                float roughness = 1.0 - (_SpecTex_var.b*_GlossPower);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
