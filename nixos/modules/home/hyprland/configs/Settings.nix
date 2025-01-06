{ ... }:
{
  wayland.windowManager.hyprland = {
    settings = { 

      general = {
        sensitivity=1.00;
        apply_sens_to_raw=1;
        gaps_in = 4;
        gaps_out = 8;
        border_size = 2;
        resize_on_border = true; 
        "col.active_border" = "rgb(98971A) rgb(CC241D) 45deg";
        "col.inactive_border" = "0x00000000";
        layout = "dwindle";

        border_part_of_window = false;
        no_border_on_floating = false;
      };


      input = {
        kb_layout = "us";
        kb_options="grp:alt_shift_toggle";
        repeat_rate=50;
        repeat_delay=300;
        numlock_by_default = true;
        left_handed=false;
        follow_mouse = true;
        float_switch_override_focus = 0;
        mouse_refocus = 0;
        sensitivity = 0;
        touchpad = {
          natural_scroll = true;
          disable_while_typing=true;
          natural_scroll=false;
          clickfinger_behavior=false;
          middle_button_emulation=true;
          tap-to-click=true;
          drag_lock=false;
        };
      };
        gestures = {
          workspace_swipe=true;
          workspace_swipe_fingers=3;
          workspace_swipe_distance=400;
          workspace_swipe_invert=true;
          workspace_swipe_min_speed_to_force=30;
          workspace_swipe_cancel_ratio=0.5;
          workspace_swipe_create_new=true;
          workspace_swipe_forever=true;
        };

      dwindle = {
        # no_gaps_when_only = false;
        force_split = 0;
        special_scale_factor = 1.0;
        split_width_multiplier = 1.0;
        use_active_for_splits = true;
        pseudotile = "yes";
        preserve_split = "yes";
      };

      master = {
        new_status = "master";
        special_scale_factor = 1;
        # no_gaps_when_only = false;
      };
      group ={
        "col.border_active" = "rgb(98971A)";

        groupbar ={
            "col.active" = "rgb(CC241D)"
        };
      };


      decoration = {
        rounding = 8;
        active_opacity = 1;
        inactive_opacity = 0.90;
        fullscreen_opacity = 1.0;

        blur = {
          enabled = true;
          size = 5;
          passes = 2;
          brightness = 1;
          contrast = 1.4;
          ignore_opacity = true;
          noise = 0;
          new_optimizations = true;
          xray = true;
        };

        shadow = {
          enabled = true;
          ignore_window = true;
          offset = "0 2";
          range = 20;
          render_power = 3;
          color = "rgba(00000055)";
        };
      };

      animations = {
        enabled = true;

        bezier = [
          "fluent_decel, 0, 0.2, 0.4, 1"
          "easeOutCirc, 0, 0.55, 0.45, 1"
          "easeOutCubic, 0.33, 1, 0.68, 1"
          "fade_curve, 0, 0.55, 0.45, 1"
        ];

        animation = [
          # name, enable, speed, curve, style

          # Windows
          "windowsIn,   0, 4, easeOutCubic,  popin 20%" # window open
          "windowsOut,  0, 4, fluent_decel,  popin 80%" # window close.
          "windowsMove, 1, 2, fluent_decel, slide" # everything in between, moving, dragging, resizing.

          # Fade
          "fadeIn,      1, 3,   fade_curve" # fade in (open) -> layers and windows
          "fadeOut,     1, 3,   fade_curve" # fade out (close) -> layers and windows
          "fadeSwitch,  0, 1,   easeOutCirc" # fade on changing activewindow and its opacity
          "fadeShadow,  1, 10,  easeOutCirc" # fade on changing activewindow for shadows
          "fadeDim,     1, 4,   fluent_decel" # the easing of the dimming of inactive windows
          # "border,      1, 2.7, easeOutCirc"  # for animating the border's color switch speed
          # "borderangle, 1, 30,  fluent_decel, once" # for animating the border's gradient angle - styles: once (default), loop
          "workspaces,  1, 4,   easeOutCubic, fade" # styles: slide, slidevert, fade, slidefade, slidefadevert
        ];
      };


      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        mouse_move_enables_dpms = true;
        
        enable_swallow = true;
        no_direct_scanout = true; #for fullscreen games
        focus_on_activate = true;


        disable_autoreload = true;
        always_follow_on_dnd = true;
        layers_hog_keyboard_focus = true;
        animate_manual_resizes = false;
        new_window_takes_over_fullscreen = 2;
        middle_click_paste = false;
      };

      binds = {
          workspace_back_and_forth=true;
          allow_workspace_cycles=true;
          pass_mouse_when_bound=false;
      };
    };
    };
    };
}
