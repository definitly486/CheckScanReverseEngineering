package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class lq2 extends cg6<Double, double[], kq2> {
    public static final lq2 c = new lq2(pq2.a);

    @Override // defpackage.w
    public final int e(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        return dArr.length;
    }

    @Override // defpackage.fn1, defpackage.w
    public final void h(du1 du1Var, int i, Object obj) {
        kq2 kq2Var = (kq2) obj;
        kq2Var.getClass();
        double dDecodeDoubleElement = du1Var.decodeDoubleElement(this.b, i);
        kq2Var.b(kq2Var.d() + 1);
        double[] dArr = kq2Var.a;
        int i2 = kq2Var.b;
        kq2Var.b = i2 + 1;
        dArr[i2] = dDecodeDoubleElement;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        kq2 kq2Var = new kq2();
        kq2Var.a = dArr;
        kq2Var.b = dArr.length;
        kq2Var.b(10);
        return kq2Var;
    }

    @Override // defpackage.cg6
    public final double[] l() {
        return new double[0];
    }

    @Override // defpackage.cg6
    public final void m(gu1 gu1Var, double[] dArr, int i) {
        double[] dArr2 = dArr;
        gu1Var.getClass();
        dArr2.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            gu1Var.encodeDoubleElement(this.b, i2, dArr2[i2]);
        }
    }
}
