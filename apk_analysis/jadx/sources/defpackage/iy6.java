package defpackage;

import androidx.collection.SieveCacheKt;
import androidx.media3.muxer.MuxerUtil;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public final class iy6 implements wu0 {
    public final v48 b;
    public final bu0 c;
    public boolean d;

    public iy6(v48 v48Var) {
        v48Var.getClass();
        this.b = v48Var;
        this.c = new bu0();
    }

    @Override // defpackage.wu0
    public final byte[] C() {
        v48 v48Var = this.b;
        bu0 bu0Var = this.c;
        bu0Var.j0(v48Var);
        return bu0Var.Z(bu0Var.c);
    }

    public final String E(long j) {
        c0(j);
        return this.c.n0(j, ha1.b);
    }

    @Override // defpackage.wu0
    public final String F(Charset charset) {
        v48 v48Var = this.b;
        bu0 bu0Var = this.c;
        bu0Var.j0(v48Var);
        return bu0Var.n0(bu0Var.c, charset);
    }

    @Override // defpackage.wu0
    public final long M() {
        bu0 bu0Var;
        c0(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            boolean zRequest = request(i2);
            bu0Var = this.c;
            if (!zRequest) {
                break;
            }
            byte bQ = bu0Var.Q(i);
            if ((bQ < 48 || bQ > 57) && ((bQ < 97 || bQ > 102) && (bQ < 65 || bQ > 70))) {
                if (i != 0) {
                    break;
                }
                ga1.b(16);
                String string = Integer.toString(bQ, 16);
                string.getClass();
                throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(string));
            }
            i = i2;
        }
        return bu0Var.M();
    }

    @Override // defpackage.wu0
    public final String S(long j) {
        if (j < 0) {
            c9.f(r01.c(j, "limit < 0: "));
            return null;
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        long jN = n((byte) 10, 0L, j2);
        bu0 bu0Var = this.c;
        if (jN != -1) {
            return b.c(bu0Var, jN);
        }
        if (j2 < Long.MAX_VALUE && request(j2) && bu0Var.Q(j2 - 1) == 13 && request(j2 + 1) && bu0Var.Q(j2) == 10) {
            return b.c(bu0Var, j2);
        }
        bu0 bu0Var2 = new bu0();
        bu0Var.E(bu0Var2, 0L, Math.min(32L, bu0Var.c));
        throw new EOFException("\\n not found: limit=" + Math.min(bu0Var.c, j) + " content=" + bu0Var2.i(bu0Var2.c).g() + (char) 8230);
    }

    @Override // defpackage.wu0
    public final long W(gx0 gx0Var) {
        gx0Var.getClass();
        long jMax = 0;
        if (this.d) {
            ah.f("closed");
            return 0L;
        }
        while (true) {
            bu0 bu0Var = this.c;
            long jV = bu0Var.V(gx0Var, jMax);
            if (jV != -1) {
                return jV;
            }
            long j = bu0Var.c;
            if (this.b.t0(bu0Var, 8192L) == -1) {
                return -1L;
            }
            jMax = Math.max(jMax, j);
        }
    }

    @Override // defpackage.wu0
    public final String Y() {
        return S(Long.MAX_VALUE);
    }

    @Override // defpackage.wu0
    public final void c(bu0 bu0Var, long j) throws EOFException {
        bu0 bu0Var2 = this.c;
        try {
            c0(j);
            bu0Var2.c(bu0Var, j);
        } catch (EOFException e) {
            bu0Var.j0(bu0Var2);
            throw e;
        }
    }

    @Override // defpackage.wu0
    public final void c0(long j) {
        if (request(j)) {
            return;
        }
        n7.e();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.d) {
            return;
        }
        this.d = true;
        this.b.close();
        this.c.p();
    }

    @Override // defpackage.wu0
    public final int f0(yz5 yz5Var) throws EOFException {
        bu0 bu0Var;
        yz5Var.getClass();
        if (this.d) {
            ah.f("closed");
            return 0;
        }
        do {
            bu0Var = this.c;
            int iD = b.d(bu0Var, yz5Var, true);
            if (iD != -2) {
                if (iD == -1) {
                    break;
                }
                bu0Var.skip(yz5Var.c[iD].f());
                return iD;
            }
        } while (this.b.t0(bu0Var, 8192L) != -1);
        return -1;
    }

    @Override // defpackage.wu0, defpackage.vu0
    public final bu0 getBuffer() {
        return this.c;
    }

    @Override // defpackage.wu0
    public final gx0 i(long j) {
        c0(j);
        return this.c.i(j);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.d;
    }

    public final boolean m() {
        if (this.d) {
            ah.f("closed");
            return false;
        }
        bu0 bu0Var = this.c;
        return bu0Var.P() && this.b.t0(bu0Var, 8192L) == -1;
    }

    public final long n(byte b, long j, long j2) {
        if (this.d) {
            ah.f("closed");
            return 0L;
        }
        if (0 > j2) {
            c9.f(r01.c(j2, "fromIndex=0 toIndex="));
            return 0L;
        }
        long jMax = 0;
        while (jMax < j2) {
            bu0 bu0Var = this.c;
            byte b2 = b;
            long j3 = j2;
            long jU = bu0Var.U(b2, jMax, j3);
            if (jU != -1) {
                return jU;
            }
            long j4 = bu0Var.c;
            if (j4 >= j3 || this.b.t0(bu0Var, 8192L) == -1) {
                break;
            }
            jMax = Math.max(jMax, j4);
            b = b2;
            j2 = j3;
        }
        return -1L;
    }

    public final iy6 o() {
        return new iy6(new q46(this));
    }

    @Override // defpackage.wu0
    public final long o0(s18 s18Var) {
        bu0 bu0Var;
        long j = 0;
        while (true) {
            v48 v48Var = this.b;
            bu0Var = this.c;
            if (v48Var.t0(bu0Var, 8192L) == -1) {
                break;
            }
            long jV = bu0Var.v();
            if (jV > 0) {
                j += jV;
                s18Var.H(bu0Var, jV);
            }
        }
        long j2 = bu0Var.c;
        if (j2 <= 0) {
            return j;
        }
        long j3 = j + j2;
        s18Var.H(bu0Var, j2);
        return j3;
    }

    public final int p() {
        c0(4L);
        return h.d(this.c.readInt());
    }

    @Override // defpackage.v48
    public final wv8 r() {
        return this.b.r();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        bu0 bu0Var = this.c;
        if (bu0Var.c == 0 && this.b.t0(bu0Var, 8192L) == -1) {
            return -1;
        }
        return bu0Var.read(byteBuffer);
    }

    @Override // defpackage.wu0
    public final byte readByte() {
        c0(1L);
        return this.c.readByte();
    }

    @Override // defpackage.wu0
    public final int readInt() {
        c0(4L);
        return this.c.readInt();
    }

    @Override // defpackage.wu0
    public final short readShort() {
        c0(2L);
        return this.c.readShort();
    }

    @Override // defpackage.wu0
    public final boolean request(long j) {
        bu0 bu0Var;
        if (j < 0) {
            c9.f(r01.c(j, "byteCount < 0: "));
            return false;
        }
        if (this.d) {
            ah.f("closed");
            return false;
        }
        do {
            bu0Var = this.c;
            if (bu0Var.c >= j) {
                return true;
            }
        } while (this.b.t0(bu0Var, 8192L) != -1);
        return false;
    }

    @Override // defpackage.wu0
    public final void skip(long j) {
        if (this.d) {
            ah.f("closed");
            return;
        }
        while (j > 0) {
            bu0 bu0Var = this.c;
            if (bu0Var.c == 0 && this.b.t0(bu0Var, 8192L) == -1) {
                n7.e();
                return;
            } else {
                long jMin = Math.min(j, bu0Var.c);
                bu0Var.skip(jMin);
                j -= jMin;
            }
        }
    }

    @Override // defpackage.v48
    public final long t0(bu0 bu0Var, long j) {
        bu0Var.getClass();
        if (j < 0) {
            c9.f(r01.c(j, "byteCount < 0: "));
            return 0L;
        }
        if (this.d) {
            ah.f("closed");
            return 0L;
        }
        bu0 bu0Var2 = this.c;
        if (bu0Var2.c == 0) {
            if (j == 0) {
                return 0L;
            }
            if (this.b.t0(bu0Var2, 8192L) == -1) {
                return -1L;
            }
        }
        return bu0Var2.t0(bu0Var, Math.min(j, bu0Var2.c));
    }

    public final String toString() {
        return "buffer(" + this.b + ')';
    }

    public final long v() throws EOFException {
        char c;
        char c2;
        long j;
        c0(8L);
        bu0 bu0Var = this.c;
        if (bu0Var.c < 8) {
            n7.e();
            return 0L;
        }
        gl7 gl7Var = bu0Var.b;
        gl7Var.getClass();
        int i = gl7Var.b;
        int i2 = gl7Var.c;
        if (i2 - i < 8) {
            j = ((((long) bu0Var.readInt()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) bu0Var.readInt()));
            c = 24;
            c2 = '(';
        } else {
            byte[] bArr = gl7Var.a;
            c = 24;
            c2 = '(';
            int i3 = i + 7;
            long j2 = ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
            int i4 = i + 8;
            long j3 = j2 | (((long) bArr[i3]) & 255);
            bu0Var.c -= 8;
            if (i4 == i2) {
                bu0Var.b = gl7Var.a();
                il7.a(gl7Var);
            } else {
                gl7Var.b = i4;
            }
            j = j3;
        }
        return ((j & 255) << 56) | (((-72057594037927936L) & j) >>> 56) | ((71776119061217280L & j) >>> c2) | ((280375465082880L & j) >>> c) | ((1095216660480L & j) >>> 8) | ((4278190080L & j) << 8) | ((16711680 & j) << c) | ((65280 & j) << c2);
    }

    @Override // defpackage.wu0
    public final InputStream w0() {
        return new a();
    }

    public final short y() {
        c0(2L);
        return this.c.k0();
    }

    public static final class a extends InputStream {
        public a() {
        }

        @Override // java.io.InputStream
        public final int available() throws IOException {
            iy6 iy6Var = iy6.this;
            if (!iy6Var.d) {
                return (int) Math.min(iy6Var.c.c, SieveCacheKt.NodeLinkMask);
            }
            ki0.d("closed");
            return 0;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            iy6.this.close();
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            bArr.getClass();
            iy6 iy6Var = iy6.this;
            bu0 bu0Var = iy6Var.c;
            if (iy6Var.d) {
                ki0.d("closed");
                return 0;
            }
            h.b(bArr.length, i, i2);
            if (bu0Var.c == 0 && iy6Var.b.t0(bu0Var, 8192L) == -1) {
                return -1;
            }
            return bu0Var.read(bArr, i, i2);
        }

        public final String toString() {
            return iy6.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public final long transferTo(OutputStream outputStream) throws IOException {
            outputStream.getClass();
            iy6 iy6Var = iy6.this;
            bu0 bu0Var = iy6Var.c;
            if (iy6Var.d) {
                ki0.d("closed");
                return 0L;
            }
            long j = 0;
            while (true) {
                if (bu0Var.c == 0 && iy6Var.b.t0(bu0Var, 8192L) == -1) {
                    return j;
                }
                long j2 = bu0Var.c;
                j += j2;
                bu0Var.G0(outputStream, j2);
            }
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            iy6 iy6Var = iy6.this;
            bu0 bu0Var = iy6Var.c;
            if (iy6Var.d) {
                ki0.d("closed");
                return 0;
            }
            if (bu0Var.c == 0 && iy6Var.b.t0(bu0Var, 8192L) == -1) {
                return -1;
            }
            return bu0Var.readByte() & 255;
        }
    }
}
