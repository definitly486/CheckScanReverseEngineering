package androidx.camera.video.internal.compat;

import android.media.MediaMuxer;
import java.io.FileDescriptor;

/* JADX INFO: loaded from: classes.dex */
public final class Api26Impl {
    private Api26Impl() {
    }

    public static MediaMuxer createMediaMuxer(FileDescriptor fileDescriptor, int i) {
        return new MediaMuxer(fileDescriptor, i);
    }
}
