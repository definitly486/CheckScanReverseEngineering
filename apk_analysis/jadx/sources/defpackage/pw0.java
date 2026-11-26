package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class pw0 implements u83 {
    public final byte[] a;
    public final zz5 b;

    public static final class a implements u83.a<byte[]> {
        @Override // u83.a
        public final u83 a(Object obj, zz5 zz5Var, sy6 sy6Var) {
            return new pw0((byte[]) obj, zz5Var);
        }
    }

    public pw0(byte[] bArr, zz5 zz5Var) {
        this.a = bArr;
        this.b = zz5Var;
    }

    @Override // defpackage.u83
    public final Object a(pz2 pz2Var) {
        bu0 bu0Var = new bu0();
        byte[] bArr = this.a;
        bArr.getClass();
        bu0Var.write(bArr, 0, bArr.length);
        return new x48(new a58(bu0Var, this.b.f, null), null, z82.MEMORY);
    }
}
