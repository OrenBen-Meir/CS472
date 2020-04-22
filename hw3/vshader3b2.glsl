#version 330

// PUT YOUR CODE HERE
in	vec3	a_Position;

uniform mat4	u_View;
uniform mat4	u_Projection;

void main() 
{
	// PUT YOUR CODE HERE
        gl_Position = u_Projection*u_View*vec4(a_Position, 1);
}
