package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class n49 extends cg6<k49, l49, m49> {
    public static final n49 c = new n49(o49.a);

    @Override // defpackage.w
    public final int e(Object obj) {
        return ((l49) obj).b.length;
    }

    @Override // defpackage.fn1, defpackage.w
    public final void h(du1 du1Var, int i, Object obj) {
        m49 m49Var = (m49) obj;
        m49Var.getClass();
        int iDecodeInt = du1Var.decodeInlineElement(this.b, i).decodeInt();
        m49Var.b(m49Var.d() + 1);
        int[] iArr = m49Var.a;
        int i2 = m49Var.b;
        m49Var.b = i2 + 1;
        iArr[i2] = iDecodeInt;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        int[] iArr = ((l49) obj).b;
        m49 m49Var = new m49();
        m49Var.a = iArr;
        m49Var.b = iArr.length;
        m49Var.b(10);
        return m49Var;
    }

    @Override // defpackage.cg6
    public final l49 l() {
        return new l49(new int[0]);
    }

    @Override // defpackage.cg6
    public final void m(gu1 gu1Var, l49 l49Var, int i) {
        int[] iArr = l49Var.b;
        gu1Var.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            gu1Var.encodeInlineElement(this.b, i2).encodeInt(iArr[i2]);
        }
    }
}
