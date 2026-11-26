package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class s49 extends cg6<p49, q49, r49> {
    public static final s49 c = new s49(t49.a);

    @Override // defpackage.w
    public final int e(Object obj) {
        return ((q49) obj).b.length;
    }

    @Override // defpackage.fn1, defpackage.w
    public final void h(du1 du1Var, int i, Object obj) {
        r49 r49Var = (r49) obj;
        r49Var.getClass();
        long jDecodeLong = du1Var.decodeInlineElement(this.b, i).decodeLong();
        r49Var.b(r49Var.d() + 1);
        long[] jArr = r49Var.a;
        int i2 = r49Var.b;
        r49Var.b = i2 + 1;
        jArr[i2] = jDecodeLong;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        long[] jArr = ((q49) obj).b;
        r49 r49Var = new r49();
        r49Var.a = jArr;
        r49Var.b = jArr.length;
        r49Var.b(10);
        return r49Var;
    }

    @Override // defpackage.cg6
    public final q49 l() {
        return new q49(new long[0]);
    }

    @Override // defpackage.cg6
    public final void m(gu1 gu1Var, q49 q49Var, int i) {
        long[] jArr = q49Var.b;
        gu1Var.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            gu1Var.encodeInlineElement(this.b, i2).encodeLong(jArr[i2]);
        }
    }
}
