# RG505 Shaders

This shader set was made specifically for the Anbernic RG505, a handheld with a niche display resolution of 960 x 544. That panel is not a standard resolution you see in most shader packs or generic emulator guides, and because of that, a lot of shaders available online simply do not look right when applied directly.

I built and tuned these shaders around the RG505's panel characteristics so they work cleanly and look intentional on the actual hardware. The goal was not to blindly copy a random shader pack, but to create a set that fits the RG505's unique display and gives a better image for emulation and retro gaming without introducing ugly artifacts or excessive blur.

## Why these shaders are different

Most shaders online are designed around more common display sizes and resolutions, such as 720p, 1080p, or standard handheld panels. The RG505 breaks that pattern with its 960 x 544 native output, so shaders that assume a different aspect ratio or pixel structure often end up looking off, too soft, too harsh, or simply mismatched.

These shaders were tweaked individually to compensate for that. Each one was adjusted to suit the panel, the scaling behavior, and the kind of image output that works best on the RG505. The result is a set of shaders that are much more natural on the RG505. They are ideal for playing games at a 2X resolution on the RG505. At that scale, the image remains sharp enough to preserve the retro feel while still looking clean and readable on the handheld's screen.


## Combining shaders for better results

One of the best parts of this set is that you can combine shaders to offset each other's weaknesses. For example, Dot is naturally a bit blurry because of the way it recreates a CRT-like or screen-dot effect. This softness can be improved quite a bit by pairing it with a sharpen filter, which helps restore detail and makes the image look much more like a classic PSP-style presentation.

In practice, this means the shader pack is not just about picking one option and sticking with it. You can experiment with combinations to match the game or the look you want. Some shaders provide the overall texture treatment, while others refine the image and bring back the detail that would otherwise be lost.

## LCD1x Sharp notes

LCD1x Sharp is a special case and is not meant to be used the same way as the other shaders in the pack. It only works correctly at 1X resolution and is intended for a more retro, pixelated look. If you are aiming for a sharper, more stylized display treatment, it can be fantastic, but it is not designed as a general-purpose 2X shader.

This makes it especially useful for games that benefit from a more raw, old-school pixel aesthetic. If you want a clean, highly pixelated presentation at native scale, LCD1x Sharp is a good choice. But for the standard 2X RG505 setup, the rest of the shaders in this pack are the better fit.

## Shader set overview

- Bead: A soft, slightly textured effect that works well for a more natural, subtle LCD-like look.
- LCD3x: A stronger LCD-style effect for texture and scanline shaping, best for 2X.
- zfast LCD 1: A low cost LCD effect for harder to run titles.
- Dot: A dot-matrix / soft grid treatment with a classic retro feel; can be sharpened for a cleaner PSP-like look.
- LCD1x Sharp: Primarily intended for 1X scaling and a more retro/pixel-heavy appearance.

- Lite versions: The mobile shader variants (`*_lite.fsh`) are lighter-weight versions of the same shaders and are designed to reduce GPU workload. They typically run better because they simplify the shader math and avoid heavier processing paths.

## Installing in PPSSPP

PPSSPP supports custom shaders through its memory-stick shader folder, so this pack can be used directly inside the emulator without modifying the game files themselves.

To install the shaders:

1. Open PPSSPP.
2. Go to Settings > System > Memory Stick folder - Check The location of you PSP folder
3. Use a file explorer to open the `PSP` folder.
4. Create a `SHADERS` folder inside it if it does not already exist.
5. Copy all the `.fsh`, `.vsh`, and `.ini` files from this pack into `PSP/SHADERS/`.
6. In PPSSPP while in a game open the menu and go to "Display Layout and Effects" the new shaders should appear here with the existing PPSSPP shaders.
7. Pick an shader of your choice and enjoy!

This is the standard PPSSPP custom-shader setup used by many shader packs. PPSSPP itself handles the actual shader loading, and the files just need to live in the correct folder so the emulator can detect them.

PPSSPP will show the shaders in its graphics/shader selection menu, allowing you to switch between the default output and the custom variants you have placed in the `PSP/SHADERS` directory.

## Sample images

These examples show the output of the different shader treatments on the RG505 and help illustrate how they behave at 2X resolution.

### Base image

![Base 2X Res](Sample%20Images/Base%202X%20Res.png)

### Bead

![Bead 2X Res](Sample%20Images/Bead%202X%20Res.png)

### LCD3x

![LCD3x 2X Res](Sample%20Images/LCD3x%202X%20Res.png)

### zfast LCD 1

![Zfast LCD 2X Res](Sample%20Images/Zfast%20LCD%202X%20Res.png)

### Dot

![Dot 2X Res](Sample%20Images/Dot%202X%20Res.png)

### Dot + Sharpen

![Dot 2X Res + Sharpen 30%](Sample%20Images/Dot%202X%20Res%20+%20Sharpen%2030%25.png)

### LCD1x Sharp

![LCD1x (Only for 1x Res)](Sample%20Images/LCD1x%20%28Only%20for%201x%20Res%29.png)

## Credits and thanks

This shader set is built on an older shader codebase originally created by jdgleaver in 2018.Thanks to him, it could be used as a foundation to make this RG505-specific version.

This pack is a tailored set made for the RG505, refined for its OLED display, while you may use it on other displays it is likely to cause artifacts.
