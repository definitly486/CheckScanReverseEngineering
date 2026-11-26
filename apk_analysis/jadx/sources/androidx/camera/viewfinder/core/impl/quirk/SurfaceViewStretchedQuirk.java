package androidx.camera.viewfinder.core.impl.quirk;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class SurfaceViewStretchedQuirk implements Quirk {
    private static final String GALAXY_Z_FOLD_2 = "F2Q";
    private static final String GALAXY_Z_FOLD_3 = "Q2Q";
    public static final SurfaceViewStretchedQuirk INSTANCE = new SurfaceViewStretchedQuirk();
    private static final String LENOVO = "LENOVO";
    private static final String LENOVO_TAB_P12_PRO = "Q706F";
    private static final String OPPO = "OPPO";
    private static final String OPPO_FIND_N = "OP4E75L1";
    private static final String SAMSUNG = "SAMSUNG";

    private SurfaceViewStretchedQuirk() {
    }

    private final boolean isLenovoTablet() {
        return LENOVO.equalsIgnoreCase(Build.MANUFACTURER) && LENOVO_TAB_P12_PRO.equalsIgnoreCase(Build.DEVICE);
    }

    private final boolean isOppoFoldable() {
        return OPPO.equalsIgnoreCase(Build.MANUFACTURER) && OPPO_FIND_N.equalsIgnoreCase(Build.DEVICE);
    }

    private final boolean isSamsungFold2OrFold3() {
        if (!SAMSUNG.equalsIgnoreCase(Build.MANUFACTURER)) {
            return false;
        }
        String str = Build.DEVICE;
        return GALAXY_Z_FOLD_2.equalsIgnoreCase(str) || GALAXY_Z_FOLD_3.equalsIgnoreCase(str);
    }

    public static final boolean load() {
        if (Build.VERSION.SDK_INT >= 33) {
            return false;
        }
        SurfaceViewStretchedQuirk surfaceViewStretchedQuirk = INSTANCE;
        return surfaceViewStretchedQuirk.isSamsungFold2OrFold3() || surfaceViewStretchedQuirk.isOppoFoldable() || surfaceViewStretchedQuirk.isLenovoTablet();
    }
}
