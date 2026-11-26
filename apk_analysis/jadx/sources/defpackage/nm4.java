package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public class nm4 {

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[po4.values().length];
            try {
                iArr[po4.SYNCHRONIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[po4.PUBLICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[po4.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static <T> cl4<T> a(po4 po4Var, ll3<? extends T> ll3Var) {
        sm1 sm1Var = sm1.d;
        po4Var.getClass();
        ll3Var.getClass();
        int i = a.a[po4Var.ordinal()];
        if (i == 1) {
            return new fh8(ll3Var);
        }
        if (i == 2) {
            wb7 wb7Var = new wb7();
            wb7Var.b = ll3Var;
            wb7Var.c = sm1Var;
            return wb7Var;
        }
        if (i != 3) {
            me0.e();
            return null;
        }
        f79 f79Var = new f79();
        f79Var.b = ll3Var;
        f79Var.c = sm1Var;
        return f79Var;
    }

    public static fh8 b(ll3 ll3Var) {
        ll3Var.getClass();
        return new fh8(ll3Var);
    }
}
