# Conventional update-binary for Android recovery (Eclipse NDK build)

Some people may curious how does update-binary in your update.zip is created...And what is going on inside of it

This show you how to compile it in normal way.

# Features
1. Execution speed is faster, binary size is much smaller than AOSP rom generated binary, even without any PE compression.
2. Function is shrinked, but added set file permission.
3. Compatible with most platform, ARM, x86, etc.
4. SELinux is deleted from code.

# Example from [JamesDSPManager .zip installer](https://github.com/james34602/JamesDSPManager):
```
ui_print("**********************************************");
ui_print("*Installing JamesDSP for Android 5.X.X or above (ARM)*");
ui_print("**********************************************");
run_program("/sbin/busybox", "mount", "/system");
delete_recursive("/system/app/MusicFX");
delete_recursive("/system/priv-app/MusicFX");
delete_recursive("/system/priv-app/AudioFX");
delete_recursive("/system/priv-app/SoundAlive_20_L");
delete_recursive("/system/priv-app/SoundAlive_30");
delete_recursive("/data/data/org.cyanogenmod.audiofx");
delete_recursive("/data/data/com.android.musicfx");
delete_recursive("/data/data/com.sec.android.app.soundalive");
delete("/system/app/DSPManager_All.apk");
delete("/system/lib/libjamesDSPImpulseToolbox.so");
delete("/system/lib/soundfx/libjamesdsp.so");
delete("/system/vendor/etc/audio_effects.conf");
package_extract_dir("system", "/system");
ui_print("Fixing permissions...");
set_perm(0, 0, 0644, "/system/app/DSPManager_All.apk");
set_perm(0, 0, 0644, "/system/lib/libjamesDSPImpulseToolbox.so");
set_perm(0, 0, 0644, "/system/lib/soundfx/libjamesdsp.so");
set_perm(0, 0, 0644, "/system/vendor/etc/audio_effects.conf");
run_program("/sbin/busybox", "umount", "/system");
ui_print("**********************************************");
ui_print("* Installation complete...                   *");
ui_print("* Please reboot and launch JamesDSP          *");
ui_print("**********************************************");
show_progress(0.100000, 0);
```