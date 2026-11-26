package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rc3 extends cg6<Float, float[], qc3> {
    public static final rc3 c = new rc3(wc3.a);

    @Override // defpackage.w
    public final int e(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        return fArr.length;
    }

    @Override // defpackage.fn1, defpackage.w
    public final void h(du1 du1Var, int i, Object obj) {
        qc3 qc3Var = (qc3) obj;
        qc3Var.getClass();
        float fDecodeFloatElement = du1Var.decodeFloatElement(this.b, i);
        qc3Var.b(qc3Var.d() + 1);
        float[] fArr = qc3Var.a;
        int i2 = qc3Var.b;
        qc3Var.b = i2 + 1;
        fArr[i2] = fDecodeFloatElement;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        qc3 qc3Var = new qc3();
        qc3Var.a = fArr;
        qc3Var.b = fArr.length;
        qc3Var.b(10);
        return qc3Var;
    }

    @Override // defpackage.cg6
    public final float[] l() {
        return new float[0];
    }

    @Override // defpackage.cg6
    public final void m(gu1 gu1Var, float[] fArr, int i) {
        float[] fArr2 = fArr;
        gu1Var.getClass();
        fArr2.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            gu1Var.encodeFloatElement(this.b, i2, fArr2[i2]);
        }
    }
}
