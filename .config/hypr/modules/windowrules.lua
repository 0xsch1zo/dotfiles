hl.window_rule({
    -- Fix some dragging issues with XWayland
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name      = "zen",
    match     = { class = "zen-alpha" },
    workspace = 2
})

hl.window_rule({
    name      = "vesktop",
    match     = { class = "vesktop" },
    workspace = 3
})


hl.window_rule({
    name = "spotify",
    match = { class = "spotify" },
    workspace = 4,
})

hl.window_rule({
    name = "pavucontrol",
    match = { initial_class = "^(org.pulseaudio.pavucontrol)$" },
    float = true,
})

hl.layer_rule({
    name = "rofi",
    match = { namespace = "^(rofi)$" },
    dim_around = true,
})

hl.layer_rule({
    name = "swaync",
    match = { namespace = "^(swaync).*" },
    animation = "slide right",
})
