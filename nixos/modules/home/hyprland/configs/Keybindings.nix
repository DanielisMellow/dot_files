{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = { 
      bind = [
        # show keybinds list
        "$mainMod = SUPER"

        # Terminal
        "$mainMod, Return, exec, kitty"
        "CTRL ALT, Delete, exec, hyprctl dispatch exit 0"
        "$mainMod, Q, killactive,"
        "$mainMod, F, fullscreen"
        "$mainMod SHIFT, Q, closewindow"
        "$mainMod SHIFT, F, togglefloating"
        "$mainMod,Y, exec, hyprctl dispatch workspaceopt allfloat"
        "CTRL ALT, L, exec, LockScreen"
        "CTRL ALT, P, exec, Wlogout"

        # FEATURES / EXTRAS
        "$mainMod SHIFT,code:61, exec, KeyHints"
        "$mainMod, S, exec, RofiSearch" 
        "$mainMod SHIFT, B, exec, ChangeBlur" 
        "$mainMod SHIFT, G, exec, GameMode"
        "$mainMod ALT, L, exec, ChangeLayout"
        "$mainMod ALT, V, exec, ClipManager"
        "$mainMod SHIFT, N, exec, swaync-client -t -sw"
        "$mainMod, A, exec, ags -t 'overview'"

        # FEATURES / EXTRAS (UserScripts)
        "$mainMod, E, exec, QuickEdit"
        "$mainMod SHIFT, M, exec, RofiBeats"
        "$mainMod, W, exec, WallpaperSelect"
        "CTRL ALT, W, exec, WallpaperRandom"

        # Bar related
        "$mainMod, B, exec, killall -SIGUSR1 waybar"
        "$mainMod CTRL, B, exec, WaybarStyles"
        "$mainMod ALT, B, exec, WaybarLayout"

        # Master Layout
        "$mainMod CTRL, D, layoutmsg, removemaster"
        "$mainMod, I, layoutmsg, addmaster"
        "$mainMod, ], layoutmsg, cyclenext"
        "$mainMod, [, layoutmsg, cycleprev"
        "$mainMod, M, exec, hyprctl dispatch splitratio 0.3"
        "$mainMod, P, pseudo,"
        "$mainMod CTRL, Return, layoutmsg, swapwithmaster"

        # GROUP
        "$mainMod, G, togglegroup"
        "ALT, tab, changegroupactive"  


        # Special Keys / Hot Keys
        "bind = , xf86audioraisevolume, exec, Volume --inc" 
        "bind = , xf86audiolowervolume, exec, Volume.sh --dec" 
        "bind = , xf86AudioMicMute, exec,Volume.sh --toggle-mic"
        "bind = , xf86audiomute, exec, Volume.sh --toggle"
        "bind = , xf86Sleep, exec, systemctl suspend"  
        "bind = , xf86Rfkill, exec, AirplaneMode"

        # Media controls using keyboards
        # "bind = , xf86AudioPlayPause, exec, MediaCtrl --pause"
        # "bind = , xf86AudioPause, exec, MediaCtrl --pause"
        # "bind = , xf86AudioPlay, exec, MediaCtrl --pause"
        # "bind = , xf86AudioNext, exec, MediaCtrl --nxt"
        # "bind = , xf86AudioPrev, exec, MediaCtrl --prv"
        # "bind = , xf86audiostop, exec, MediaCtrl --stop"
        #
        # Screenshot keybindings NOTE: You may need to press Fn key as well
        "$mainMod, Print, exec, ScreenShot --now"
        "$mainMod SHIFT, Print, exec, ScreenShot --area"
        "$mainMod CTRL, Print, exec, ScreenShot --in5" 
        "$mainMod ALT, Print, exec, ScreenShot.sh --in10" 
        "ALT, Print, exec, ScreenShot --active" 

        # screenshot with swappy (another screenshot tool)
        "$mainMod SHIFT, S, exec, ScreenShot --swappy"

        # Resize windows
        "$mainMod SHIFT, H, resizeactive,-50 0"
        "$mainMod SHIFT, L, resizeactive,50 0"
        "$mainMod SHIFT, K, resizeactive,0 -50"
        "$mainMod SHIFT, J, resizeactive,0 50"

        # Move windows
        "$mainMod CTRL, H, movewindow, l"
        "$mainMod CTRL, L, movewindow, r"
        "$mainMod CTRL, K, movewindow, u"
        "$mainMod CTRL, J, movewindow, d"

        # Move focus with mainMod + arrow keys
        "$mainMod, H, movefocus, l"
        "$mainMod, L, movefocus, r"
        "$mainMod, K, movefocus, u"
        "$mainMod, J, movefocus, d"

        # Workspaces related
        "$mainMod, tab, workspace, m+1"
        "$mainMod SHIFT, tab, workspace, m-1"

        # Special workspace
        "$mainMod SHIFT, U, movetoworkspace, special"
        "$mainMod, U, togglespecialworkspace,"

        # The following mappings use the key codes to better support various keyboard layouts
        # 1 is code:10, 2 is code 11, etc
        # Switch workspaces with mainMod + [0-9] 
        "$mainMod, code:10, workspace, 1"
        "$mainMod, code:11, workspace, 2"
        "$mainMod, code:12, workspace, 3"
        "$mainMod, code:13, workspace, 4"
        "$mainMod, code:14, workspace, 5"
        "$mainMod, code:15, workspace, 6"
        "$mainMod, code:16, workspace, 7"
        "$mainMod, code:17, workspace, 8"
        "$mainMod, code:18, workspace, 9"
        "$mainMod, code:19, workspace, 10"

        # Move active window and follow to workspace mainMod + SHIFT [0-9]
        "$mainMod SHIFT, code:10, movetoworkspace, 1"
        "$mainMod SHIFT, code:11, movetoworkspace, 2"
        "$mainMod SHIFT, code:12, movetoworkspace, 3"
        "$mainMod SHIFT, code:13, movetoworkspace, 4"
        "$mainMod SHIFT, code:14, movetoworkspace, 5"
        "$mainMod SHIFT, code:15, movetoworkspace, 6"
        "$mainMod SHIFT, code:16, movetoworkspace, 7"
        "$mainMod SHIFT, code:17, movetoworkspace, 8"
        "$mainMod SHIFT, code:18, movetoworkspace, 9"
        "$mainMod SHIFT, code:19, movetoworkspace, 10"
        "$mainMod SHIFT, bracketleft, movetoworkspace, -1"
        "$mainMod SHIFT, bracketright, movetoworkspace, +1"

        # Move active window to a workspace silently mainMod + CTRL [0-9]
        "$mainMod CTRL, code:10, movetoworkspacesilent, 1"
        "$mainMod CTRL, code:11, movetoworkspacesilent, 2"
        "$mainMod CTRL, code:12, movetoworkspacesilent, 3"
        "$mainMod CTRL, code:13, movetoworkspacesilent, 4"
        "$mainMod CTRL, code:14, movetoworkspacesilent, 5"
        "$mainMod CTRL, code:15, movetoworkspacesilent, 6"
        "$mainMod CTRL, code:16, movetoworkspacesilent, 7"
        "$mainMod CTRL, code:17, movetoworkspacesilent, 8"
        "$mainMod CTRL, code:18, movetoworkspacesilent, 9"
        "$mainMod CTRL, code:19, movetoworkspacesilent, 10"
        "$mainMod CTRL, bracketleft, movetoworkspacesilent, -1"
        "$mainMod CTRL, bracketright, movetoworkspacesilent, +1"

        # Scroll through existing workspaces with mainMod + scroll
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"
        "$mainMod, period, workspace, e+1"
        "$mainMod, comma, workspace, e-1"


        ## App Menu
        "$mainMod, D, exec, pkill rofi || rofi -show drun -modi drun,filebrowser,run,window"
        ## Files 
        "$mainMod, T, exec, thunar"

        # pyprland
        "$mainMod SHIFT, Return, exec, pypr toggle term" 
        "$mainMod, Z, exec, pypr zoom" 
      ];


      # Move/resize windows with mainMod + LMB/RMB and dragging
      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
    };
    };
}
