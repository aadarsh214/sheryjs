uniform sampler2D uTexture[16];
uniform float uIntercept,displaceAmount,scrollType,time,a,b,onMouse,uScroll,uSection;
uniform bool isMulti;
uniform vec2 mousei;
uniform float aspect,noise_speed,metaball,discard_threshold,antialias_threshold,noise_height,noise_scale;

varying vec2 vuv;
#define SNOISEHOLDER
void main(){
    vec2 uv=(vuv/1.1)+.05;
    vec3 v=vec3(vuv.x*1.+time*a/10.,vuv.y,time);
    vec2 surface=vec2(snoise(v)*.08,snoise(v)*.01);
    surface=onMouse==0.?surface:onMouse==1.?mix(vec2(0.),surface,uIntercept):mix(surface,vec2(0.),uIntercept);
    uv+=refract(vec2(.0,.0),surface,b);
    gl_FragColor=texture2D(uTexture[0],uv);
    !isMulti;
}