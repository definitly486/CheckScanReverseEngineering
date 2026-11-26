package yads;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class lx4 extends ByteArrayOutputStream {
    public final rv b;

    public lx4(rv rvVar, int i) {
        this.b = rvVar;
        ((ByteArrayOutputStream) this).buf = rvVar.a(Math.max(i, 256));
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.b.a(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.b.a(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i) {
        int i2 = ((ByteArrayOutputStream) this).count + 1;
        if (i2 > ((ByteArrayOutputStream) this).buf.length) {
            byte[] bArrA = this.b.a(i2 * 2);
            System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArrA, 0, ((ByteArrayOutputStream) this).count);
            this.b.a(((ByteArrayOutputStream) this).buf);
            ((ByteArrayOutputStream) this).buf = bArrA;
        }
        super.write(i);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        int i3 = ((ByteArrayOutputStream) this).count + i2;
        if (i3 > ((ByteArrayOutputStream) this).buf.length) {
            byte[] bArrA = this.b.a(i3 * 2);
            System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArrA, 0, ((ByteArrayOutputStream) this).count);
            this.b.a(((ByteArrayOutputStream) this).buf);
            ((ByteArrayOutputStream) this).buf = bArrA;
        }
        super.write(bArr, i, i2);
    }
}
