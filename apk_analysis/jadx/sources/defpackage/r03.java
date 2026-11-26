package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public enum r03 {
    L(1),
    M(0),
    Q(3),
    H(2);

    private static final r03[] FOR_BITS;
    private final int bits;

    static {
        r03 r03Var = L;
        r03 r03Var2 = M;
        r03 r03Var3 = Q;
        FOR_BITS = new r03[]{r03Var2, r03Var, H, r03Var3};
    }

    r03(int i) {
        this.bits = i;
    }

    public static r03 a(int i) {
        if (i >= 0) {
            r03[] r03VarArr = FOR_BITS;
            if (i < r03VarArr.length) {
                return r03VarArr[i];
            }
        }
        mi2.b();
        return null;
    }

    public final int d() {
        return this.bits;
    }
}
