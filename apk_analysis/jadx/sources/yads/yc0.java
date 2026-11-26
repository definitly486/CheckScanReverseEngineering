package yads;

import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public final class yc0 extends InputStream {
    public final wc0 b;
    public final bd0 c;
    public boolean e = false;
    public boolean f = false;
    public final byte[] d = new byte[1];

    public yc0(wc0 wc0Var, bd0 bd0Var) {
        this.b = wc0Var;
        this.c = bd0Var;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f) {
            return;
        }
        this.b.close();
        this.f = true;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.f) {
            defpackage.ud.g();
            return 0;
        }
        if (!this.e) {
            this.b.a(this.c);
            this.e = true;
        }
        int iC = this.b.c(bArr, i, i2);
        if (iC == -1) {
            return -1;
        }
        return iC;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.d;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return this.d[0] & 255;
    }
}
