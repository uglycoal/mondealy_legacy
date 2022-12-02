varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    vec4 col =  v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    col.r = (col.b + pow(col.r, 2.8)) * 0.3;
    col.g = (col.b + pow(col.g, 2.4)) * 0.4;
    gl_FragColor = col;
}
