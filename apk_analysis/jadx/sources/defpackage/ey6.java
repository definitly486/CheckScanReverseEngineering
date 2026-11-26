package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.InvalidMarkException;

/* JADX INFO: loaded from: classes5.dex */
public final class ey6 {
    public static final b a = new b(new byte[0], 0, 0);

    public static class b extends m1 {
        public int b;
        public final int c;
        public final byte[] d;
        public int e = -1;

        public b(byte[] bArr, int i, int i2) {
            o8.f(i >= 0, "offset must be >= 0");
            o8.f(i2 >= 0, "length must be >= 0");
            int i3 = i2 + i;
            o8.f(i3 <= bArr.length, "offset + length exceeds array boundary");
            this.d = bArr;
            this.b = i;
            this.c = i3;
        }

        @Override // defpackage.dy6
        public final void G(byte[] bArr, int i, int i2) {
            System.arraycopy(this.d, this.b, bArr, i, i2);
            this.b += i2;
        }

        @Override // defpackage.m1, defpackage.dy6
        public final void I() {
            this.e = this.b;
        }

        @Override // defpackage.dy6
        public final int q() {
            return this.c - this.b;
        }

        @Override // defpackage.dy6
        public final int readUnsignedByte() {
            a(1);
            int i = this.b;
            this.b = i + 1;
            return this.d[i] & 255;
        }

        @Override // defpackage.m1, defpackage.dy6
        public final void reset() {
            int i = this.e;
            if (i == -1) {
                throw new InvalidMarkException();
            }
            this.b = i;
        }

        @Override // defpackage.dy6
        public final void s0(OutputStream outputStream, int i) throws IOException {
            a(i);
            outputStream.write(this.d, this.b, i);
            this.b += i;
        }

        @Override // defpackage.dy6
        public final void skipBytes(int i) {
            a(i);
            this.b += i;
        }

        @Override // defpackage.dy6
        public final dy6 t(int i) {
            a(i);
            int i2 = this.b;
            this.b = i2 + i;
            return new b(this.d, i2, i);
        }
    }

    public static final class a extends InputStream implements gg4 {
        public dy6 b;

        @Override // java.io.InputStream
        public final int available() {
            return this.b.q();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            this.b.close();
        }

        @Override // java.io.InputStream
        public final void mark(int i) {
            this.b.I();
        }

        @Override // java.io.InputStream
        public final boolean markSupported() {
            return this.b.markSupported();
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            dy6 dy6Var = this.b;
            if (dy6Var.q() == 0) {
                return -1;
            }
            int iMin = Math.min(dy6Var.q(), i2);
            dy6Var.G(bArr, i, iMin);
            return iMin;
        }

        @Override // java.io.InputStream
        public final void reset() {
            this.b.reset();
        }

        @Override // java.io.InputStream
        public final long skip(long j) {
            dy6 dy6Var = this.b;
            int iMin = (int) Math.min(dy6Var.q(), j);
            dy6Var.skipBytes(iMin);
            return iMin;
        }

        @Override // java.io.InputStream
        public final int read() {
            dy6 dy6Var = this.b;
            if (dy6Var.q() == 0) {
                return -1;
            }
            return dy6Var.readUnsignedByte();
        }
    }
}
