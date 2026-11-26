package androidx.core.util;

import android.util.Half;

/* JADX INFO: loaded from: classes2.dex */
public final class HalfKt {
    public static final Half toHalf(double d) {
        return Half.valueOf((float) d);
    }

    public static final Half toHalf(float f) {
        return Half.valueOf(f);
    }

    public static final Half toHalf(String str) {
        return Half.valueOf(str);
    }

    public static final Half toHalf(short s) {
        return Half.valueOf(s);
    }
}
