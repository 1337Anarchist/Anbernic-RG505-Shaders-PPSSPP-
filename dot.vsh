uniform vec2 u_texelDelta;
attribute vec4 a_position;
attribute vec2 a_texcoord0;
varying vec2 v_texcoord0;

varying vec4 v_texcoord1;
varying vec4 v_texcoord2;
varying vec4 v_texcoord3;
varying vec4 v_texcoord4;
varying vec2 v_texcoord5;
varying vec2 v_texcoord6;

void main()
{
	v_texcoord0 = a_texcoord0;
	gl_Position = a_position;

	float dx = u_texelDelta.x;
	float dy = u_texelDelta.y;


	v_texcoord1 = vec4(v_texcoord0 + vec2(-dx, -dy), v_texcoord0 + vec2(0.0, -dy));


	v_texcoord2 = vec4(v_texcoord0 + vec2(dx, -dy), v_texcoord0 + vec2(-dx, 0.0));


	v_texcoord3 = vec4(v_texcoord0 + vec2(dx, 0.0), v_texcoord0 + vec2(-dx, dy));


	v_texcoord4 = vec4(v_texcoord0 + vec2(0.0, dy), v_texcoord0 + vec2(dx, dy));


	v_texcoord5 = v_texcoord0;


	v_texcoord6 = v_texcoord0 * (1.0 / (u_texelDelta/0.5));
}