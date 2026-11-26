package defpackage;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class yx1 extends FilterInputStream {
    public final long b;
    public int c;

    public yx1(InputStream inputStream, long j) {
        super(inputStream);
        this.b = j;
    }

    public final void a(int i) throws IOException {
        int i2 = this.c;
        if (i >= 0) {
            this.c = i2 + i;
            return;
        }
        long j = this.b;
        if (j - ((long) i2) <= 0) {
            return;
        }
        StringBuilder sbF = xp.f(j, "Failed to read all expected data, expected: ", ", but read: ");
        sbF.append(this.c);
        throw new IOException(sbF.toString());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        return (int) Math.max(this.b - ((long) this.c), ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        int i;
        i = super.read();
        a(i >= 0 ? 1 : -1);
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i, int i2) {
        int i3;
        i3 = super.read(bArr, i, i2);
        a(i3);
        return i3;
    }
}
