#define BORDERMULT 16.0

#ifdef GL_ES
precision highp float;
precision highp int;
#endif

uniform sampler2D sampler0;
uniform vec2 u_texelDelta;
varying vec2 v_texcoord0;

varying vec2 v_texcoord1;

const float NATIVE_SCREEN_HEIGHT = 272.0;

void main()
{





	vec2 texcoordInPixels = v_texcoord0.xy * v_texcoord1.xy * NATIVE_SCREEN_HEIGHT * u_texelDelta.y;
	vec2 centerCoord = floor(texcoordInPixels.xy) + vec2(0.5, 0.5);
	vec2 distFromCenter = abs(centerCoord - texcoordInPixels);

	float Y = max(distFromCenter.x, distFromCenter.y);

	Y = Y * Y;
	float YY = Y * Y;
	float YYY = YY * Y;

	float LineWeight = YY - 2.7 * YYY;
	LineWeight = 1.0 - BORDERMULT * LineWeight;


	vec3 colour = texture2D(sampler0, v_texcoord0.xy).rgb * LineWeight;

	gl_FragColor = vec4(colour.rgb, 1.0);
}