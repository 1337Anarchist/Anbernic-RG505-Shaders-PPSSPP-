uniform vec2 u_texelDelta;
attribute vec4 a_position;
attribute vec2 a_texcoord0;
varying vec2 v_texcoord0;

varying vec2 v_texcoord1;

void main()
{
	v_texcoord0 = a_texcoord0;
	gl_Position = a_position;
	v_texcoord1 = 1.0 / u_texelDelta.xy;
}