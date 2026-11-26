package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zj {
    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalStateException(String.valueOf(str));
        }
    }

    public static void a(int i, int i2) {
        if (i < 0 || i >= i2) {
            defpackage.v93.b();
        }
    }

    public static void a(String str, boolean z) {
        if (z) {
            return;
        }
        defpackage.bj.f(str);
    }
}
