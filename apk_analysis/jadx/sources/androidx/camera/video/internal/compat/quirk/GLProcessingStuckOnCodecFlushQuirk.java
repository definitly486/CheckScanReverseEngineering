package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;

/* JADX INFO: loaded from: classes.dex */
public final class GLProcessingStuckOnCodecFlushQuirk implements Quirk {
    public static final GLProcessingStuckOnCodecFlushQuirk INSTANCE = new GLProcessingStuckOnCodecFlushQuirk();

    private GLProcessingStuckOnCodecFlushQuirk() {
    }

    private final boolean isPositivoTwist2Pro() {
        return "positivo".equalsIgnoreCase(Build.BRAND) && "twist 2 pro".equalsIgnoreCase(Build.MODEL);
    }

    public static final boolean load() {
        return INSTANCE.isPositivoTwist2Pro();
    }
}
