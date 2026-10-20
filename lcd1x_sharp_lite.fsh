#define BRIGHTEN_SCANLINES 16.0

#define BRIGHTEN_LCD 4.0


#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

#define PI 3.141592654

uniform sampler2D sampler0;
uniform vec2 u_texelDelta;
varying vec2 v_texcoord0;

varying vec2 v_texcoord1;

const float INV_BRIGHTEN_SCANLINES_INC = 1.0 / (BRIGHTEN_SCANLINES + 1.0);
const float INV_BRIGHTEN_LCD_INC = 1.0 / (BRIGHTEN_LCD + 1.0);

void main()
{

	vec2 angle = 2.0 * PI * ((v_texcoord0.xy * v_texcoord1.xy) - 0.25);

	float yfactor = (BRIGHTEN_SCANLINES + sin(angle.y)) * INV_BRIGHTEN_SCANLINES_INC;
	float xfactor = (BRIGHTEN_LCD + sin(angle.x)) * INV_BRIGHTEN_LCD_INC;


	vec2 centerCoord = floor(v_texcoord0.xy * v_texcoord1.xy) + vec2(0.5, 0.5);
	vec3 colour = texture2D(sampler0, u_texelDelta.xy * centerCoord).rgb;


	colour.rgb = yfactor * xfactor * colour.rgb;

	gl_FragColor = vec4(colour.rgb, 1.0);
}