#define BRIGHTEN_SCANLINES 16.0

#define BRIGHTEN_LCD 4.0


#ifdef GL_ES
precision highp float;
precision highp int;
#endif

#define PI 3.141592654

uniform sampler2D sampler0;
varying vec2 v_texcoord0;

varying vec2 v_texcoord1;

const float INV_BRIGHTEN_SCANLINES_INC = 1.0 / (BRIGHTEN_SCANLINES + 1.0);
const float INV_BRIGHTEN_LCD_INC = 1.0 / (BRIGHTEN_LCD + 1.0);

void main()
{

	const vec3 offsets = PI * vec3(0.5, 0.5 - (2.0 / 3.0), 0.5 - (4.0 / 3.0));



	vec2 angle = PI * v_texcoord0.xy * 2.0 * v_texcoord1.xy;

	float yfactor = (BRIGHTEN_SCANLINES + sin(angle.y)) * INV_BRIGHTEN_SCANLINES_INC;
	vec3 xfactors = (BRIGHTEN_LCD + sin(angle.x + offsets)) * INV_BRIGHTEN_LCD_INC;


	vec3 colour = texture2D(sampler0, v_texcoord0.xy).xyz;


	colour.rgb = yfactor * xfactors * colour.rgb;

	gl_FragColor = vec4(colour.rgb, 1.0);
}