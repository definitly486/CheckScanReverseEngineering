package androidx.camera.camera2.pipe.core;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class DebugKt {
    public static final void checkApi(int i, String str) {
        str.getClass();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= i) {
            return;
        }
        throw new IllegalStateException((str + " is not supported on API " + i2 + " (requires API " + i + ')').toString());
    }

    public static final void checkLOrHigher(String str) {
        str.getClass();
    }

    public static final void checkMOrHigher(String str) {
        str.getClass();
    }

    public static final void checkNOrHigher(String str) {
        str.getClass();
    }

    public static final void checkOOrHigher(String str) {
        str.getClass();
    }

    public static final void checkPOrHigher(String str) {
        str.getClass();
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return;
        }
        throw new IllegalStateException((str + " is not supported on API " + i + " (requires API 28)").toString());
    }

    public static final void checkQOrHigher(String str) {
        str.getClass();
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            return;
        }
        throw new IllegalStateException((str + " is not supported on API " + i + " (requires API 29)").toString());
    }
}
