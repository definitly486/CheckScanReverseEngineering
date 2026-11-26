package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class lv extends gh4 implements nl3<xu4, kv.a> {
    public static final lv f = new lv(1);

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[xu4.values().length];
            try {
                iArr[xu4.LoggedIn.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    @Override // defpackage.nl3
    public final kv.a invoke(xu4 xu4Var) {
        xu4 xu4Var2 = xu4Var;
        xu4Var2.getClass();
        return a.a[xu4Var2.ordinal()] == 1 ? kv.a.LoggedInFirstTime : kv.a.Error;
    }
}
