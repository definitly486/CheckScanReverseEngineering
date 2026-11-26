package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class h20 {
    public static void a(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        }
        if (obj2 != null) {
            return;
        }
        defpackage.o2.d(defpackage.ch.c(obj, "null value in entry: ", "=null"));
    }

    public static int a(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i);
    }
}
