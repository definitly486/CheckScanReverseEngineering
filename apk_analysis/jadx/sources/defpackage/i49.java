package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class i49 extends cg6<f49, g49, h49> {
    public static final i49 c = new i49(j49.a);

    @Override // defpackage.w
    public final int e(Object obj) {
        return ((g49) obj).b.length;
    }

    @Override // defpackage.fn1, defpackage.w
    public final void h(du1 du1Var, int i, Object obj) {
        h49 h49Var = (h49) obj;
        h49Var.getClass();
        byte bDecodeByte = du1Var.decodeInlineElement(this.b, i).decodeByte();
        h49Var.b(h49Var.d() + 1);
        byte[] bArr = h49Var.a;
        int i2 = h49Var.b;
        h49Var.b = i2 + 1;
        bArr[i2] = bDecodeByte;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        byte[] bArr = ((g49) obj).b;
        h49 h49Var = new h49();
        h49Var.a = bArr;
        h49Var.b = bArr.length;
        h49Var.b(10);
        return h49Var;
    }

    @Override // defpackage.cg6
    public final g49 l() {
        return new g49(new byte[0]);
    }

    @Override // defpackage.cg6
    public final void m(gu1 gu1Var, g49 g49Var, int i) {
        byte[] bArr = g49Var.b;
        gu1Var.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            gu1Var.encodeInlineElement(this.b, i2).encodeByte(bArr[i2]);
        }
    }
}
