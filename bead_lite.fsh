#define BEAD_HIGH 0.35

#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

uniform sampler2D sampler0;
uniform vec2 u_texelDelta;
varying vec2 v_texcoord0;

varying vec2 v_texcoord1;

float dist(vec2 coord, vec2 source)
{
	vec2 delta = coord - source;
	return sqrt(dot(delta, delta));
}

float rolloff(float len)
{
	return exp(-6.0 * len);
}

vec3 lookup(vec2 pixel_no, vec3 color)
{
	float delta = dist(fract(pixel_no), vec2(0.5, 0.5));

	if (delta < BEAD_HIGH)
		return color;
	else
		return color * rolloff(delta - BEAD_HIGH);
}

void main()
{
	vec3 mid_color = lookup(v_texcoord1, texture2D(sampler0, v_texcoord0.xy).rgb);

	gl_FragColor = vec4(mid_color, 1.0);
}