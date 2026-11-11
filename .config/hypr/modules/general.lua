local colors = require(".modules.colors-hyprland")

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 7,
        border_size = 5,
        layout = "dwindle",
        col = {
            active_border = { colors = { colors.color4, colors.color5 }, angle = 45 },
            inactive_border = colors.color8,
        },
        allow_tearing = false,
    }
})
