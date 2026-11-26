package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class w91 extends cg6<Character, char[], u91> {
    public static final w91 c = new w91(ba1.a);

    @Override // defpackage.w
    public final int e(Object obj) {
        char[] cArr = (char[]) obj;
        cArr.getClass();
        return cArr.length;
    }

    @Override // defpackage.fn1, defpackage.w
    public final void h(du1 du1Var, int i, Object obj) {
        u91 u91Var = (u91) obj;
        u91Var.getClass();
        char cDecodeCharElement = du1Var.decodeCharElement(this.b, i);
        u91Var.b(u91Var.d() + 1);
        char[] cArr = u91Var.a;
        int i2 = u91Var.b;
        u91Var.b = i2 + 1;
        cArr[i2] = cDecodeCharElement;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        char[] cArr = (char[]) obj;
        cArr.getClass();
        u91 u91Var = new u91();
        u91Var.a = cArr;
        u91Var.b = cArr.length;
        u91Var.b(10);
        return u91Var;
    }

    @Override // defpackage.cg6
    public final char[] l() {
        return new char[0];
    }

    @Override // defpackage.cg6
    public final void m(gu1 gu1Var, char[] cArr, int i) {
        char[] cArr2 = cArr;
        gu1Var.getClass();
        cArr2.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            gu1Var.encodeCharElement(this.b, i2, cArr2[i2]);
        }
    }
}
