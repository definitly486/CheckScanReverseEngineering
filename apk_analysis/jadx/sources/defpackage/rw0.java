package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rw0 extends cg6<Byte, byte[], nw0> {
    public static final rw0 c = new rw0(cx0.a);

    @Override // defpackage.w
    public final int e(Object obj) {
        byte[] bArr = (byte[]) obj;
        bArr.getClass();
        return bArr.length;
    }

    @Override // defpackage.fn1, defpackage.w
    public final void h(du1 du1Var, int i, Object obj) {
        nw0 nw0Var = (nw0) obj;
        nw0Var.getClass();
        byte bDecodeByteElement = du1Var.decodeByteElement(this.b, i);
        nw0Var.b(nw0Var.d() + 1);
        byte[] bArr = nw0Var.a;
        int i2 = nw0Var.b;
        nw0Var.b = i2 + 1;
        bArr[i2] = bDecodeByteElement;
    }

    @Override // defpackage.w
    public final Object i(Object obj) {
        byte[] bArr = (byte[]) obj;
        bArr.getClass();
        nw0 nw0Var = new nw0();
        nw0Var.a = bArr;
        nw0Var.b = bArr.length;
        nw0Var.b(10);
        return nw0Var;
    }

    @Override // defpackage.cg6
    public final byte[] l() {
        return new byte[0];
    }

    @Override // defpackage.cg6
    public final void m(gu1 gu1Var, byte[] bArr, int i) {
        byte[] bArr2 = bArr;
        gu1Var.getClass();
        bArr2.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            gu1Var.encodeByteElement(this.b, i2, bArr2[i2]);
        }
    }
}
