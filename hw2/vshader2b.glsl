#version 330

in	vec2	a_Position;	// attribute variable: position vector
in	vec3	a_Color;	// attribute variable: color vector

out	vec4	v_Color;	// varying variable for passing color to fragment shader

uniform	mat4	u_Modelview;	// uniform variable for passing modelview  matrix
uniform	mat4	u_Projection;	// uniform variable for passing projection matrix
uniform	float	u_Theta;	// Theta parameter
uniform	int	u_Twist;	// Twist flag

void main() 
{
	// PUT YOUR CODE HERE

        float t;
        if (bool(u_Twist)) {
            t = sqrt(a_Position.x*a_Position.x + a_Position.y*a_Position.y)*u_Theta;

            float sintheta = sin(t);
            float costheta = cos(t);

            gl_Position = u_Projection*u_Modelview*vec4(
                        a_Position.x*costheta - a_Position.y*sintheta,
                        a_Position.x*sintheta + a_Position.y*costheta,
                        0, 1);
        } else {
            gl_Position = u_Projection*u_Modelview*vec4(a_Position, 0, 1);
        }

        // Sends color to fragment shader
        v_Color = vec4(a_Color, 1);
}
