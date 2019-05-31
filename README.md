# Swin

A AutoHotkey script for Windows that tries to imitate my [Sway keybindings](https://github.com/Depau/sway-configs/blob/master/.config/sway/config).

Forked from [windows-desktop-switcher](https://github.com/pmb6tz/windows-desktop-switcher).

Window dragging code from [here](https://autohotkey.com/board/topic/25106-altlbutton-window-dragging/).

## Note

The `VirtualDesktopAccessor.dll` library was taken from [here](https://github.com/Ciantic/VirtualDesktopAccessor). Source code is distributed (or at least it looks like it is) but I have no idea how to build it myself (nor I want to learn how - damnit, Windows development sucks).

So either trust them like I did or (better) don't and build it yourself.

The library seems to do exactly what it advertises but I don't know if it does anything else. Also ymmv.


## Requirements

- AutoHotkey, of course
- Wox if you want to have a Rofi-style menu
- Windows 10 (to have workspaces)

## Implemented behavior

- Workspace switching with Super+#
- Workspace window moving with Super+Shift+#
- Next/previous workspace with Super+Tab (+Shift)
- Rofi-style Wox menu on Super+D
- Rectangular region screenshot to clipboard on RightCtrl+Menu (it's actually RightCtrl+PrintScreen on Sway but Menu on my work computer is at the same location of Print on my ThinkPad)
- Super+Shift+Spacebar and Super+F toggle maximization to simulate floating/fullscreen toggle
- Super+Shift+Q closes current window, then activates the one below it
- Super+mouse drag to drag windows (very limited)

In addition

- The tray icon shows the current workspace

Not implemented/won't fix

- Window tiling (unless somebody points out some script that does it decently)
