package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class mw0 implements cr<byte[]> {
    @Override // defpackage.cr
    public final int a(byte[] bArr) {
        return bArr.length;
    }

    @Override // defpackage.cr
    public final int b() {
        return 1;
    }

    @Override // defpackage.cr
    public final String getTag() {
        return "ByteArrayPool";
    }

    @Override // defpackage.cr
    public final byte[] newArray(int i) {
        return new byte[i];
    }
}
