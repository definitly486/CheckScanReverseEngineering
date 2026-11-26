package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import defpackage.ra8;

/* JADX INFO: loaded from: classes.dex */
public final class PreviewFreezeAfterHighSpeedRecordingQuirk implements Quirk {
    public static final PreviewFreezeAfterHighSpeedRecordingQuirk INSTANCE = new PreviewFreezeAfterHighSpeedRecordingQuirk();
    private static final boolean isPixelPhone;

    /* JADX WARN: Code duplicated, block: B:7:0x0020  */
    static {
        boolean z;
        if (ra8.v(Build.BRAND, "google", true)) {
            String str = Build.MODEL;
            str.getClass();
            z = ra8.C(str, "Pixel", true);
        }
        isPixelPhone = z;
    }

    private PreviewFreezeAfterHighSpeedRecordingQuirk() {
    }

    public static final boolean load() {
        return isPixelPhone;
    }
}
