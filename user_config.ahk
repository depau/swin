; Switch workspaces; if selected workspace does not exist, it is created.
#1::switchDesktopByNumber(1)
#2::switchDesktopByNumber(2)
#3::switchDesktopByNumber(3)
#4::switchDesktopByNumber(4)
#5::switchDesktopByNumber(5)
#6::switchDesktopByNumber(6)
#7::switchDesktopByNumber(7)
#8::switchDesktopByNumber(8)
#9::switchDesktopByNumber(9)
#0::switchDesktopByNumber(10)

>!#1::switchDesktopByNumber(5)
>!#2::switchDesktopByNumber(6)
>!#3::switchDesktopByNumber(7)
>!#4::switchDesktopByNumber(8)

; Move to workspace (then switch)
+#1::MoveCurrentWindowToDesktop(1)
+#2::MoveCurrentWindowToDesktop(2)
+#3::MoveCurrentWindowToDesktop(3)
+#4::MoveCurrentWindowToDesktop(4)
+#5::MoveCurrentWindowToDesktop(5)
+#6::MoveCurrentWindowToDesktop(6)
+#7::MoveCurrentWindowToDesktop(7)
+#8::MoveCurrentWindowToDesktop(8)
+#9::MoveCurrentWindowToDesktop(9)
+#0::MoveCurrentWindowToDesktop(10)

>!+#1::MoveCurrentWindowToDesktop(5)
>!+#2::MoveCurrentWindowToDesktop(6)
>!+#3::MoveCurrentWindowToDesktop(7)
>!+#4::MoveCurrentWindowToDesktop(8)

; (Shift+)Super+Tab switches back and forth through workspaces
#tab::nextDesktop()
+#tab::previousDesktop()

; Normally Super+Tab shows the activity overview screen. This rebinds it to Super+Esc
#esc::Send, #{Tab}

; IDK if this is useful but you can also add and remove workspaces manually
#c::createVirtualDesktop()
#-::deleteVirtualDesktop()

; Super+D opens Start menu
;#d::Send, ^{Esc}
#d::openWox()

; Super+Shift+Q closes the active window, then it activates the window beneath it
+#q::closeWindow()

+#e::poweroff()

; Lock the screen, matches the keybinding I use on Sway
#=::Send, #{l}

; Two ways to toggle maximization, to simulate fullscreen/floating toggle in Sway/i3
#f::toggleMaximize()
+#Space::toggleMaximize()

; Open "terminal". Default is Arch Linux WSL (you can create a link by drag-n-drop to \UWPAppLinks)
#Enter::Run, C:\UWPAppLinks\Arch Linux
; With Shift pressed, open Windows command prompt
+#Enter::Run, cmd

; Open Windows Explorer on Super+\. I don't have that on Sway but I do use the file manager a lot more often on Windows
#\::Run, explorer

; Take rectangular region screenshot to clipboard
>^AppsKey::Run, SnippingTool.exe /clip