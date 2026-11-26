package androidx.camera.core.internal.compat;

import android.media.MediaActionSound;

/* JADX INFO: loaded from: classes.dex */
class MediaActionSoundCompatApi33Impl {
    private MediaActionSoundCompatApi33Impl() {
    }

    public static boolean mustPlayShutterSound() {
        return MediaActionSound.mustPlayShutterSound();
    }
}
