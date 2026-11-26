package androidx.camera.viewfinder.core.impl.quirk;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class SurfaceViewNotCroppedByParentQuirk implements Quirk {
    public static final SurfaceViewNotCroppedByParentQuirk INSTANCE = new SurfaceViewNotCroppedByParentQuirk();
    private static final String RED_MI_NOTE_10_MODEL = "M2101K7AG";
    private static final String XIAOMI = "XIAOMI";

    private SurfaceViewNotCroppedByParentQuirk() {
    }

    public static final boolean load() {
        return XIAOMI.equalsIgnoreCase(Build.MANUFACTURER) && RED_MI_NOTE_10_MODEL.equalsIgnoreCase(Build.MODEL);
    }
}
