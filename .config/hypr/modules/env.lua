--  Some default env vars.
hl.env("XCURSOR_SIZE", "24")
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_STYLE_OVERRIDE", "kvantum")
hl.env("XDG_SESSION_TYPE", "wayland")

--  Nvidia
hl.env("LIBVA_DRIVER_NAME", "iHD")
hl.env("MOZ_ENABLE_WAYLAND", "1")
-- env = GBM_BACKEND,nvidia-drm # firefox crashes
-- env = __GLX_VENDOR_LIBRARY_NAME,nvidia
-- env = NVD_BACKEND,direct
-- env = NVD_LOG,$home/nvd_log

--  HDPI scaling
-- env = GDK_SCALE,2

--  Cursor
-- env = HYPRCURSOR_THEME,Bibata-Modern-Classic
-- env = HYPRCURSOR_SIZE,24
hl.env("XCURSOR_THEME", "Bibata - Modern - Classic")
hl.env("XCURSOR_SIZE", "24")

return {
    user = "sentience",
    terminal = "ghostty",
    fileManager = "nemo",
    menu = "rofi -show drun",
    home = "/home/sentience",
}
