#version 330

// PUT YOUR CODE HERE
in	vec3	a_Position;
in	vec2	a_TexCoord;

uniform mat4	u_View;
uniform mat4	u_Projection;

out	vec2	v_TexCoord;

void main() 
{
        // PUT YOUR CODE HERE
    gl_Position = u_Projection*u_View*vec4(a_Position, 1);
    v_TexCoord = a_TexCoord;

}
