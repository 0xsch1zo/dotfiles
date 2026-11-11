local env = require(".modules.env")

hl.on("hyprland.start", function()
    hl.exec_cmd("hyprlock")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("awww-daemon && awww img $home/.currentwal.png")
    hl.exec_cmd(env.terminal)
    hl.exec_cmd("zen-browser")
    hl.exec_cmd("vesktop")
    hl.exec_cmd("spotify")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("waybar")
    hl.exec_cmd("playerctld daemon")
    hl.exec_cmd(
        string.format(
            "%s/go/bin/pbr %s/Documents/KeepassXC/Passwords.kdbx /run/media/%s/9644-1C65/ origin &> %s/pbr_logs",
            env.home,
            env.home,
            env.user,
            env.home
        )
    )
    hl.exec_cmd(
        string.format(
            "kanata -c %s/.config/kanata/config.kbd",
            env.home
        )
    )
end)
