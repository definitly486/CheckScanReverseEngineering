package defpackage;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class esa extends OutputStream {
    public long b;

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int length;
        int i3;
        if (i < 0 || i > (length = bArr.length) || i2 < 0 || (i3 = i + i2) > length || i3 < 0) {
            v93.b();
        } else {
            this.b += (long) i2;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.b += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.b++;
    }
}
