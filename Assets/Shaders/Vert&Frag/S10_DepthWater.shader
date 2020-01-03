/**
* added by passion @ 2020-1-1
* https://passion.blog.csdn.net
* 利用摄像机深度渲染，实现水的深度效果
*/

Shader "Custom/Depth Water"
{
	Properties
	{
		_Color0("Water Color",Color) = (1,1,1,1)//水的颜色
		_Color1("Water Depth",Color) = (0,0,0,0)//水的深度的颜色
		_Alpha("Alpha",Range(0,1)) = 1//水面透明度
		_ColorDepth("ColorDepth",Range(0,1)) = 0//水的深度
	}
	
	SubShader
	{
		Tags {"Queue" = "Transparent"}

		Pass
		{
			Blend SrcAlpha OneMinusSrcAlpha
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			struct a2v
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 pos : SV_POSITION;
				float4 scrPos : TEXCOORD1;
			};


			float4 _Color0;
			float4 _Color1;
			float _Alpha;//水的透明度
			float _ColorDepth;

			//摄像机深度图，移动端需要开启摄像机深度渲染(消耗性能增加DC),PC默认开启
			//Camera.depthTextureMode = DepthTextureMode.Depth;
			sampler2D _CameraDepthTexture;

			v2f vert(a2v v)
			{
				v2f o;

				o.pos = UnityObjectToClipPos(v.vertex);
				o.scrPos = ComputeScreenPos(o.pos);//将返回片段着色器的屏幕位置
				COMPUTE_EYEDEPTH(o.scrPos.z);//计算顶点摄像机空间的深度：距离裁剪平面的距离
				return o;
			}

			fixed4 frag(v2f i) : COLOR
			{

				//计算当前像素深度
				float  depth = tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.scrPos)).r;//UNITY_PROJ_COORD:深度值 [0,1]

				depth = LinearEyeDepth(depth);//深度根据相机的裁剪范围的值[0.3,1000],是将经过透视投影变换的深度值还原了
				depth -= i.scrPos.z;
				//计算水的透明度： 使用深度值
				float alpha = saturate(_Alpha*depth);

				//计算颜色深度：
				float colDepth = saturate(_ColorDepth*depth);
				colDepth = 1 - colDepth;
				colDepth = lerp(colDepth, colDepth*colDepth*colDepth, 0.5);//调整深度，看个人喜好

				half3 col;
				col.rgb = lerp(_Color0.rgb, _Color1.rgb, colDepth);

				return float4(col.rgb, alpha);
			}
			ENDCG
		}
	}
}