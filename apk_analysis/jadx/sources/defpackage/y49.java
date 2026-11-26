package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class y49 extends cg6<v49, w49, x49> {
    public static final y49 c = new y49(z49.a);

    @Override // defpackage.w
    public final int e(Object obj) {
        return ((w49) obj).b.length;
    }

    @Override // defpackage.fn1, defpackage.w
    public final void h(du1 du1Var, int i, Object obj) {
        x49 x49Var = (x49) obj;
        x49Var.getClass();
        short sDecodeShort = du1Var.decodeInlineElement(this.b, i).decodeShort();
        x49Var.b(x49Var.d() + 1);
        short[] sArr = x49Var.a;
        int i2 = x49Var.b;
        x49Var.b = i2 + 1;
        sArr[i2] = sDecodeShort;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        short[] sArr = ((w49) obj).b;
        x49 x49Var = new x49();
        x49Var.a = sArr;
        x49Var.b = sArr.length;
        x49Var.b(10);
        return x49Var;
    }

    @Override // defpackage.cg6
    public final w49 l() {
        return new w49(new short[0]);
    }

    @Override // defpackage.cg6
    public final void m(gu1 gu1Var, w49 w49Var, int i) {
        short[] sArr = w49Var.b;
        gu1Var.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            gu1Var.encodeInlineElement(this.b, i2).encodeShort(sArr[i2]);
        }
    }
}
