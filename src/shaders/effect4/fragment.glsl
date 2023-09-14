uniform bool uColor,isMulti;
uniform sampler2D uTexture[16];
uniform vec2 mousei;
uniform float aspect,noise_speed,metaball,discard_threshold,antialias_threshold,noise_height,noise_scale;

varying vec2 vuv;
varying float vWave;
uniform float uScroll,uSection,time,scrollType;
#define SNOISEHOLDER
void main(){
    vec2 uv=vuv;
    gl_FragColor=uColor?mix(texture2D(uTexture[0],vuv),vec4(1.),vWave):texture2D(uTexture[0],vuv);
    !isMulti;
}