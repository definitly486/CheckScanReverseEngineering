package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class i23 extends InputStream {
    public final InputStream b;
    public int c = 1073741824;

    public i23(InputStream inputStream) {
        this.b = inputStream;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.c;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.b.close();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        int i = this.b.read();
        if (i == -1) {
            this.c = 0;
        }
        return i;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        return this.b.skip(j);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        int i = this.b.read(bArr);
        if (i == -1) {
            this.c = 0;
        }
        return i;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.b.read(bArr, i, i2);
        if (i3 == -1) {
            this.c = 0;
        }
        return i3;
    }
}
