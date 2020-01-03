Shader "Hair" {
    Properties {
        _Color ("Main Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _MainTex ("Base (RGB) Alpha (A)", 2D) = "white" {}
        _Cutoff ("Base Alpha cutoff", Range (0,.9)) = .5
        _ZOffset ("ZBuffer Offset", Range (-30.0,30.0)) = 0 // sliders
    }
    SubShader {
        // Set up basic lighting
        Material {
            Diffuse [_Color]
            Ambient [_Color]
        }
        Lighting On

        // Render both front and back facing polygons.
        Cull Off

        // first pass:
        // render any pixels that are more than [_Cutoff] opaque
        Pass {
            AlphaTest Greater [_Cutoff]
            Offset [_ZOffset],[_ZOffset]
            SetTexture [_MainTex] {
                combine texture * primary DOUBLE, texture
            }
        }

        // Second pass:
        // render in the semitransparent details.
        Pass {

            // Dont write to the depth buffer
            Offset [_ZOffset],[_ZOffset]
            ZWrite off
            // Don't write pixels we have already written.
            ZTest Less
            // Only render pixels less or equal to the value
            AlphaTest LEqual [_Cutoff]

            // Set up alpha blending
            Blend SrcAlpha OneMinusSrcAlpha

            SetTexture [_MainTex] {
                combine texture * primary DOUBLE, texture
            }
        }
    }
}