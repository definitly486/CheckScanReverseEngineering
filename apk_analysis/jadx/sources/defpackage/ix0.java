package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class ix0 implements e47<byte[]> {
    public final byte[] b;

    public ix0(byte[] bArr) {
        r96.c(bArr, "Argument must not be null");
        this.b = bArr;
    }

    @Override // defpackage.e47
    public final Class<byte[]> a() {
        return byte[].class;
    }

    @Override // defpackage.e47
    public final byte[] get() {
        return this.b;
    }

    @Override // defpackage.e47
    public final int getSize() {
        return this.b.length;
    }

    @Override // defpackage.e47
    public final void recycle() {
    }
}
