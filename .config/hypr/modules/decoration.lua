local colors = require(".modules.colors-hyprland")

return {
    -- Change transparency of focused and unfocused windows
    active_opacity   = 1.0,
    inactive_opacity = 1.0,


    rounding = 10,
    rounding_power = 2,

    blur = {
        enabled = true,
        size = 3,
        passes = 1,
        vibrancy = 0.1696,
    },

    shadow = {
        enabled = false,
        range = 8,
        color = colors.color4,
        color_inactive = colors.color8,
    }
}
