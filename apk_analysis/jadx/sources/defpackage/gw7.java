package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gw7 extends cg6<Short, short[], fw7> {
    public static final gw7 c = new gw7(jw7.a);

    @Override // defpackage.w
    public final int e(Object obj) {
        short[] sArr = (short[]) obj;
        sArr.getClass();
        return sArr.length;
    }

    @Override // defpackage.fn1, defpackage.w
    public final void h(du1 du1Var, int i, Object obj) {
        fw7 fw7Var = (fw7) obj;
        fw7Var.getClass();
        short sDecodeShortElement = du1Var.decodeShortElement(this.b, i);
        fw7Var.b(fw7Var.d() + 1);
        short[] sArr = fw7Var.a;
        int i2 = fw7Var.b;
        fw7Var.b = i2 + 1;
        sArr[i2] = sDecodeShortElement;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        short[] sArr = (short[]) obj;
        sArr.getClass();
        fw7 fw7Var = new fw7();
        fw7Var.a = sArr;
        fw7Var.b = sArr.length;
        fw7Var.b(10);
        return fw7Var;
    }

    @Override // defpackage.cg6
    public final short[] l() {
        return new short[0];
    }

    @Override // defpackage.cg6
    public final void m(gu1 gu1Var, short[] sArr, int i) {
        short[] sArr2 = sArr;
        gu1Var.getClass();
        sArr2.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            gu1Var.encodeShortElement(this.b, i2, sArr2[i2]);
        }
    }
}
