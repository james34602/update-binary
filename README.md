# Conventional update-binary for Android recovery (Eclipse NDK build)

Some people may curious how does update-binary in your update.zip is created...And what is going on inside of it

This show you how to compile it in normal way.

# Features
1. Execution speed is faster, binary size is much smaller than AOSP rom generated binary, even without any PE compression.
2. Function is shrinked, but added set file permission.
3. Compatible with most platform, ARM, x86, etc.
4. SELinux is deleted from code.