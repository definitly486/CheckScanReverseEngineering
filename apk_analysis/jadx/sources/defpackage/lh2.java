package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class lh2 {
    public static final wk2 a;

    static {
        String property;
        hu3 hu3Var;
        int i = kh8.a;
        try {
            property = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property != null ? Boolean.parseBoolean(property) : false) {
            oi2 oi2Var = qo2.a;
            hu3 hu3Var2 = uy4.a;
            hu3Var2.getClass();
            hu3Var = !(hu3Var2 instanceof wk2) ? kh2.k : hu3Var2;
        } else {
            hu3Var = kh2.k;
        }
        a = hu3Var;
    }
}
