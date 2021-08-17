varying vec2 v_vTexcoord;

uniform float progress; // Progress (set externally): 0.0 to 1.0

// Get the color of the target pixel, based on the scaled source.
// Pixels outside the source area are rendered black.
vec3 getRGB(vec2 xy, vec2 scale, float whiteness, float bright)
{
    vec2 srcXY = vec2(0.5 - (0.5 - xy.x) / scale.x, 0.5 - (0.5 - xy.y) / scale.y);
    if (srcXY.x < 0.0 || srcXY.x > 1.0 || srcXY.y < 0.0 || srcXY.y > 1.0)
    {
        // Outside source area - Use black.
        return vec3(0.0);
    }
    
    // Use the source data, applying a variable amount of whiteness.
    vec3 sourceRGB = texture2D(gm_BaseTexture, srcXY).rgb;
    return mix(sourceRGB, vec3(1.0), whiteness) * bright;
}

void main(void)
{
    // The x/y scale of the screen, calculated over time.
    vec2 scale = vec2(1.0) - vec2(smoothstep(0.15, 0.2, progress), smoothstep(0.0, 0.2, progress)) * 0.99;
    
    // Fade the color to white as time progresses...
    float whiteness = smoothstep(0.1, 0.3, progress);
    
    // ...and fade to black as the cycle finishes.
    float bright = 1.0 - smoothstep(0.5, 1.0, progress);
    
    gl_FragColor = vec4(getRGB(v_vTexcoord, scale, whiteness, bright), 1.0);
}

