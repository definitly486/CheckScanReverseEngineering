package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sv4 extends cg6<Long, long[], rv4> {
    public static final sv4 c = new sv4(gw4.a);

    @Override // defpackage.w
    public final int e(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        return jArr.length;
    }

    @Override // defpackage.fn1, defpackage.w
    public final void h(du1 du1Var, int i, Object obj) {
        rv4 rv4Var = (rv4) obj;
        rv4Var.getClass();
        long jDecodeLongElement = du1Var.decodeLongElement(this.b, i);
        rv4Var.b(rv4Var.d() + 1);
        long[] jArr = rv4Var.a;
        int i2 = rv4Var.b;
        rv4Var.b = i2 + 1;
        jArr[i2] = jDecodeLongElement;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        rv4 rv4Var = new rv4();
        rv4Var.a = jArr;
        rv4Var.b = jArr.length;
        rv4Var.b(10);
        return rv4Var;
    }

    @Override // defpackage.cg6
    public final long[] l() {
        return new long[0];
    }

    @Override // defpackage.cg6
    public final void m(gu1 gu1Var, long[] jArr, int i) {
        long[] jArr2 = jArr;
        gu1Var.getClass();
        jArr2.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            gu1Var.encodeLongElement(this.b, i2, jArr2[i2]);
        }
    }
}
