package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class s74 extends cg6<Integer, int[], r74> {
    public static final s74 c = new s74(z74.a);

    @Override // defpackage.w
    public final int e(Object obj) {
        int[] iArr = (int[]) obj;
        iArr.getClass();
        return iArr.length;
    }

    @Override // defpackage.fn1, defpackage.w
    public final void h(du1 du1Var, int i, Object obj) {
        r74 r74Var = (r74) obj;
        r74Var.getClass();
        int iDecodeIntElement = du1Var.decodeIntElement(this.b, i);
        r74Var.b(r74Var.d() + 1);
        int[] iArr = r74Var.a;
        int i2 = r74Var.b;
        r74Var.b = i2 + 1;
        iArr[i2] = iDecodeIntElement;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        int[] iArr = (int[]) obj;
        iArr.getClass();
        r74 r74Var = new r74();
        r74Var.a = iArr;
        r74Var.b = iArr.length;
        r74Var.b(10);
        return r74Var;
    }

    @Override // defpackage.cg6
    public final int[] l() {
        return new int[0];
    }

    @Override // defpackage.cg6
    public final void m(gu1 gu1Var, int[] iArr, int i) {
        int[] iArr2 = iArr;
        gu1Var.getClass();
        iArr2.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            gu1Var.encodeIntElement(this.b, i2, iArr2[i2]);
        }
    }
}
