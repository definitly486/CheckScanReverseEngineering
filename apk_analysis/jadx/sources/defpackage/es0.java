package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class es0 extends cg6<Boolean, boolean[], ds0> {
    public static final es0 c = new es0(gs0.a);

    @Override // defpackage.w
    public final int e(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        return zArr.length;
    }

    @Override // defpackage.fn1, defpackage.w
    public final void h(du1 du1Var, int i, Object obj) {
        ds0 ds0Var = (ds0) obj;
        ds0Var.getClass();
        boolean zDecodeBooleanElement = du1Var.decodeBooleanElement(this.b, i);
        ds0Var.b(ds0Var.d() + 1);
        boolean[] zArr = ds0Var.a;
        int i2 = ds0Var.b;
        ds0Var.b = i2 + 1;
        zArr[i2] = zDecodeBooleanElement;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        ds0 ds0Var = new ds0();
        ds0Var.a = zArr;
        ds0Var.b = zArr.length;
        ds0Var.b(10);
        return ds0Var;
    }

    @Override // defpackage.cg6
    public final boolean[] l() {
        return new boolean[0];
    }

    @Override // defpackage.cg6
    public final void m(gu1 gu1Var, boolean[] zArr, int i) {
        boolean[] zArr2 = zArr;
        gu1Var.getClass();
        zArr2.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            gu1Var.encodeBooleanElement(this.b, i2, zArr2[i2]);
        }
    }
}
