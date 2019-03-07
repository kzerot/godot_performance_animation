shader_type spatial;
render_mode  cull_back;
varying vec3 col;
varying vec3 pos;

float random (vec2 st) {
    return fract(sin(dot(st.xy,
                         vec2(12.9898,78.233)))*
        43758.5453123);
}

void vertex() {
    col = COLOR.rgb;

    pos = (WORLD_MATRIX * vec4(VERTEX,0.)).xyz;
    // same as above for binormal and tangent, if normal mapping is used
}
void fragment() {
    
//    uint seed = uint(col.x);
//    float rand = random(vec2(pos.x, pos.z));
//
//    if( rand >-4.0)
//        ALBEDO = vec3(rand, rand, rand);
//    else
//    vec3 col   = mix(color.rgb* 0.7, vec3(1.0), pos.y- 0.1);
    ALBEDO = col.rgb;

    ROUGHNESS = 0.2;
    METALLIC = 0.80;

//    EMISSION = abs(0.1 + sin((pos.y+TIME)*2.50)) * 0.3 * (ALBEDO) ;
    
    EMISSION = col.rgb * 0.2 * abs(sin(TIME* 0.4));
}

