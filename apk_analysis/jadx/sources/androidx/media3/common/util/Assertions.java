package androidx.media3.common.util;

import android.os.Looper;
import android.text.TextUtils;
import defpackage.o8;
import defpackage.v93;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes4.dex */
public final class Assertions {
    private Assertions() {
    }

    @Deprecated
    @Pure
    public static void checkArgument(boolean z) {
        o8.e(z);
    }

    @Deprecated
    @Pure
    public static int checkIndex(int i, int i2, int i3) {
        if (i >= i2 && i < i3) {
            return i;
        }
        v93.b();
        return 0;
    }

    @Deprecated
    @Pure
    public static void checkMainThread() {
        o8.s(Looper.myLooper() == Looper.getMainLooper(), "Not in application's main thread");
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static String checkNotEmpty(String str) {
        o8.e(!TextUtils.isEmpty(str));
        return str;
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static <T> T checkNotNull(T t, Object obj) {
        o8.l(t, obj);
        return t;
    }

    @Deprecated
    @Pure
    public static void checkState(boolean z) {
        o8.r(z);
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static <T> T checkStateNotNull(T t, Object obj) {
        o8.l(t, obj);
        return t;
    }

    @Deprecated
    @Pure
    public static void checkArgument(boolean z, Object obj) {
        o8.f(z, obj);
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }

    @Deprecated
    @Pure
    public static void checkState(boolean z, Object obj) {
        o8.s(z, obj);
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static <T> T checkStateNotNull(T t) {
        t.getClass();
        return t;
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static String checkNotEmpty(String str, Object obj) {
        o8.f(!TextUtils.isEmpty(str), obj);
        return str;
    }
}
