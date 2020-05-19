
varying vec4 WorldPosition;
uniform float uTime;

varying float test;

void main(void) {
  vec3 pos = position;
  pos.z += cos(pos.y * 10. + uTime * 1.2) * (2. - abs(pos.y) / 50.);
	gl_Position = projectionMatrix * modelViewMatrix * vec4(pos, 1.0);
  WorldPosition = modelMatrix * vec4(pos, 1.0);
}