package com.google.protobuf;

import androidx.tracing.Trace;
import androidx.work.WorkInfo;
import defpackage.ah;
import defpackage.fg;
import defpackage.fx0;
import defpackage.h79;
import defpackage.nz0;
import defpackage.o2;
import defpackage.y14;
import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CodedOutputStream extends y14 {
    public static final Logger p = Logger.getLogger(CodedOutputStream.class.getName());
    public static final boolean q = h79.e;
    public h o;

    public static abstract class a extends CodedOutputStream {
        public final byte[] r;
        public final int s;
        public int t;

        public a(int i) {
            if (i < 0) {
                fg.c("bufferSize must be >= 0");
                throw null;
            }
            byte[] bArr = new byte[Math.max(i, 20)];
            this.r = bArr;
            this.s = bArr.length;
        }

        public final void A0(long j) {
            int i = this.t;
            int i2 = i + 1;
            this.t = i2;
            byte[] bArr = this.r;
            bArr[i] = (byte) (j & 255);
            int i3 = i + 2;
            this.t = i3;
            bArr[i2] = (byte) ((j >> 8) & 255);
            int i4 = i + 3;
            this.t = i4;
            bArr[i3] = (byte) ((j >> 16) & 255);
            int i5 = i + 4;
            this.t = i5;
            bArr[i4] = (byte) (255 & (j >> 24));
            int i6 = i + 5;
            this.t = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i + 6;
            this.t = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i + 7;
            this.t = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.t = i + 8;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        }

        public final void B0(int i, int i2) {
            C0((i << 3) | i2);
        }

        public final void C0(int i) {
            boolean z = CodedOutputStream.q;
            byte[] bArr = this.r;
            if (z) {
                while (true) {
                    int i2 = i & WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                    int i3 = this.t;
                    if (i2 == 0) {
                        this.t = i3 + 1;
                        h79.l(bArr, i3, (byte) i);
                        return;
                    } else {
                        this.t = i3 + 1;
                        h79.l(bArr, i3, (byte) ((i & Trace.MAX_TRACE_LABEL_LENGTH) | 128));
                        i >>>= 7;
                    }
                }
            } else {
                while (true) {
                    int i4 = i & WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                    int i5 = this.t;
                    if (i4 == 0) {
                        this.t = i5 + 1;
                        bArr[i5] = (byte) i;
                        return;
                    } else {
                        this.t = i5 + 1;
                        bArr[i5] = (byte) ((i & Trace.MAX_TRACE_LABEL_LENGTH) | 128);
                        i >>>= 7;
                    }
                }
            }
        }

        public final void D0(long j) {
            boolean z = CodedOutputStream.q;
            byte[] bArr = this.r;
            if (z) {
                while (true) {
                    long j2 = j & (-128);
                    int i = this.t;
                    if (j2 == 0) {
                        this.t = i + 1;
                        h79.l(bArr, i, (byte) j);
                        return;
                    } else {
                        this.t = i + 1;
                        h79.l(bArr, i, (byte) ((((int) j) & Trace.MAX_TRACE_LABEL_LENGTH) | 128));
                        j >>>= 7;
                    }
                }
            } else {
                while (true) {
                    long j3 = j & (-128);
                    int i2 = this.t;
                    if (j3 == 0) {
                        this.t = i2 + 1;
                        bArr[i2] = (byte) j;
                        return;
                    } else {
                        this.t = i2 + 1;
                        bArr[i2] = (byte) ((((int) j) & Trace.MAX_TRACE_LABEL_LENGTH) | 128);
                        j >>>= 7;
                    }
                }
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int c0() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }

        public final void z0(int i) {
            int i2 = this.t;
            int i3 = i2 + 1;
            this.t = i3;
            byte[] bArr = this.r;
            bArr[i2] = (byte) (i & 255);
            int i4 = i2 + 2;
            this.t = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i2 + 3;
            this.t = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.t = i2 + 4;
            bArr[i5] = (byte) ((i >> 24) & 255);
        }
    }

    public static class b extends CodedOutputStream {
        public final byte[] r;
        public final int s;
        public int t;

        public b(byte[] bArr, int i, int i2) {
            if (bArr == null) {
                o2.d("buffer");
                throw null;
            }
            int i3 = i + i2;
            if ((i | i2 | (bArr.length - i3)) < 0) {
                nz0.d("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", new Object[]{Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)});
                throw null;
            }
            this.r = bArr;
            this.t = i;
            this.s = i3;
        }

        @Override // defpackage.y14
        public final void O(byte[] bArr, int i, int i2) throws OutOfSpaceException {
            z0(bArr, i, i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int c0() {
            return this.s - this.t;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void d0(byte b) throws OutOfSpaceException {
            try {
                byte[] bArr = this.r;
                int i = this.t;
                this.t = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.t), Integer.valueOf(this.s), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void e0(int i, boolean z) throws OutOfSpaceException {
            u0(i, 0);
            d0(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void f0(int i, byte[] bArr) throws OutOfSpaceException {
            w0(i);
            z0(bArr, 0, i);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void g0(int i, fx0 fx0Var) throws OutOfSpaceException {
            u0(i, 2);
            h0(fx0Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void h0(fx0 fx0Var) throws OutOfSpaceException {
            w0(fx0Var.size());
            fx0Var.q(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void i0(int i, int i2) throws OutOfSpaceException {
            u0(i, 5);
            j0(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void j0(int i) throws OutOfSpaceException {
            try {
                byte[] bArr = this.r;
                int i2 = this.t;
                int i3 = i2 + 1;
                this.t = i3;
                bArr[i2] = (byte) (i & 255);
                int i4 = i2 + 2;
                this.t = i4;
                bArr[i3] = (byte) ((i >> 8) & 255);
                int i5 = i2 + 3;
                this.t = i5;
                bArr[i4] = (byte) ((i >> 16) & 255);
                this.t = i2 + 4;
                bArr[i5] = (byte) ((i >> 24) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.t), Integer.valueOf(this.s), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void k0(int i, long j) throws OutOfSpaceException {
            u0(i, 1);
            l0(j);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void l0(long j) throws OutOfSpaceException {
            try {
                byte[] bArr = this.r;
                int i = this.t;
                int i2 = i + 1;
                this.t = i2;
                bArr[i] = (byte) (((int) j) & 255);
                int i3 = i + 2;
                this.t = i3;
                bArr[i2] = (byte) (((int) (j >> 8)) & 255);
                int i4 = i + 3;
                this.t = i4;
                bArr[i3] = (byte) (((int) (j >> 16)) & 255);
                int i5 = i + 4;
                this.t = i5;
                bArr[i4] = (byte) (((int) (j >> 24)) & 255);
                int i6 = i + 5;
                this.t = i6;
                bArr[i5] = (byte) (((int) (j >> 32)) & 255);
                int i7 = i + 6;
                this.t = i7;
                bArr[i6] = (byte) (((int) (j >> 40)) & 255);
                int i8 = i + 7;
                this.t = i8;
                bArr[i7] = (byte) (((int) (j >> 48)) & 255);
                this.t = i + 8;
                bArr[i8] = (byte) (((int) (j >> 56)) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.t), Integer.valueOf(this.s), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void m0(int i, int i2) throws OutOfSpaceException {
            u0(i, 0);
            n0(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void n0(int i) throws OutOfSpaceException {
            if (i >= 0) {
                w0(i);
            } else {
                y0(i);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void o0(int i, a0 a0Var, f0 f0Var) throws OutOfSpaceException {
            u0(i, 2);
            w0(((com.google.protobuf.a) a0Var).getSerializedSize(f0Var));
            f0Var.a(a0Var, this.o);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void p0(a0 a0Var) throws OutOfSpaceException {
            w0(a0Var.getSerializedSize());
            a0Var.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void q0(int i, a0 a0Var) throws OutOfSpaceException {
            u0(1, 3);
            v0(2, i);
            u0(3, 2);
            p0(a0Var);
            u0(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void r0(int i, fx0 fx0Var) throws OutOfSpaceException {
            u0(1, 3);
            v0(2, i);
            g0(3, fx0Var);
            u0(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void s0(int i, String str) throws OutOfSpaceException {
            u0(i, 2);
            t0(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void t0(String str) throws OutOfSpaceException {
            int i = this.t;
            try {
                int iZ = CodedOutputStream.Z(str.length() * 3);
                int iZ2 = CodedOutputStream.Z(str.length());
                byte[] bArr = this.r;
                if (iZ2 != iZ) {
                    w0(m0.b(str));
                    this.t = m0.a.d(str, bArr, this.t, c0());
                    return;
                }
                int i2 = i + iZ2;
                this.t = i2;
                int iD = m0.a.d(str, bArr, i2, c0());
                this.t = i;
                w0((iD - i) - iZ2);
                this.t = iD;
            } catch (m0.d e) {
                this.t = i;
                b0(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(e2);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void u0(int i, int i2) throws OutOfSpaceException {
            w0((i << 3) | i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void v0(int i, int i2) throws OutOfSpaceException {
            u0(i, 0);
            w0(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void w0(int i) throws OutOfSpaceException {
            while (true) {
                int i2 = i & WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                int i3 = this.t;
                byte[] bArr = this.r;
                if (i2 == 0) {
                    this.t = i3 + 1;
                    bArr[i3] = (byte) i;
                    return;
                } else {
                    try {
                        this.t = i3 + 1;
                        bArr[i3] = (byte) ((i & Trace.MAX_TRACE_LABEL_LENGTH) | 128);
                        i >>>= 7;
                    } catch (IndexOutOfBoundsException e) {
                        throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.t), Integer.valueOf(this.s), 1), e);
                    }
                }
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.t), Integer.valueOf(this.s), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void x0(int i, long j) throws OutOfSpaceException {
            u0(i, 0);
            y0(j);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void y0(long j) throws OutOfSpaceException {
            boolean z = CodedOutputStream.q;
            byte[] bArr = this.r;
            if (!z || c0() < 10) {
                while (true) {
                    long j2 = j & (-128);
                    int i = this.t;
                    if (j2 == 0) {
                        this.t = i + 1;
                        bArr[i] = (byte) j;
                        return;
                    } else {
                        try {
                            this.t = i + 1;
                            bArr[i] = (byte) ((((int) j) & Trace.MAX_TRACE_LABEL_LENGTH) | 128);
                            j >>>= 7;
                        } catch (IndexOutOfBoundsException e) {
                            throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.t), Integer.valueOf(this.s), 1), e);
                        }
                    }
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.t), Integer.valueOf(this.s), 1), e);
                }
            }
            while (true) {
                long j3 = j & (-128);
                int i2 = this.t;
                if (j3 == 0) {
                    this.t = i2 + 1;
                    h79.l(bArr, i2, (byte) j);
                    return;
                } else {
                    this.t = i2 + 1;
                    h79.l(bArr, i2, (byte) ((((int) j) & Trace.MAX_TRACE_LABEL_LENGTH) | 128));
                    j >>>= 7;
                }
            }
        }

        public final void z0(byte[] bArr, int i, int i2) throws OutOfSpaceException {
            try {
                System.arraycopy(bArr, i, this.r, this.t, i2);
                this.t += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.t), Integer.valueOf(this.s), Integer.valueOf(i2)), e);
            }
        }
    }

    public static final class c extends a {
        public final OutputStream u;

        public c(OutputStream outputStream, int i) {
            super(i);
            if (outputStream != null) {
                this.u = outputStream;
            } else {
                o2.d("out");
                throw null;
            }
        }

        public final void E0() throws IOException {
            this.u.write(this.r, 0, this.t);
            this.t = 0;
        }

        public final void F0(int i) throws IOException {
            if (this.s - this.t < i) {
                E0();
            }
        }

        public final void G0(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.t;
            int i4 = this.s;
            int i5 = i4 - i3;
            byte[] bArr2 = this.r;
            if (i5 >= i2) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.t += i2;
                return;
            }
            System.arraycopy(bArr, i, bArr2, i3, i5);
            int i6 = i + i5;
            int i7 = i2 - i5;
            this.t = i4;
            E0();
            if (i7 > i4) {
                this.u.write(bArr, i6, i7);
            } else {
                System.arraycopy(bArr, i6, bArr2, 0, i7);
                this.t = i7;
            }
        }

        @Override // defpackage.y14
        public final void O(byte[] bArr, int i, int i2) throws IOException {
            G0(bArr, i, i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void d0(byte b) throws IOException {
            if (this.t == this.s) {
                E0();
            }
            int i = this.t;
            this.t = i + 1;
            this.r[i] = b;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void e0(int i, boolean z) throws IOException {
            F0(11);
            B0(i, 0);
            byte b = z ? (byte) 1 : (byte) 0;
            int i2 = this.t;
            this.t = i2 + 1;
            this.r[i2] = b;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void f0(int i, byte[] bArr) throws IOException {
            w0(i);
            G0(bArr, 0, i);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void g0(int i, fx0 fx0Var) throws IOException {
            u0(i, 2);
            h0(fx0Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void h0(fx0 fx0Var) throws IOException {
            w0(fx0Var.size());
            fx0Var.q(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void i0(int i, int i2) throws IOException {
            F0(14);
            B0(i, 5);
            z0(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void j0(int i) throws IOException {
            F0(4);
            z0(i);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void k0(int i, long j) throws IOException {
            F0(18);
            B0(i, 1);
            A0(j);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void l0(long j) throws IOException {
            F0(8);
            A0(j);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void m0(int i, int i2) throws IOException {
            F0(20);
            B0(i, 0);
            if (i2 >= 0) {
                C0(i2);
            } else {
                D0(i2);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void n0(int i) throws IOException {
            if (i >= 0) {
                w0(i);
            } else {
                y0(i);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void o0(int i, a0 a0Var, f0 f0Var) throws IOException {
            u0(i, 2);
            w0(((com.google.protobuf.a) a0Var).getSerializedSize(f0Var));
            f0Var.a(a0Var, this.o);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void p0(a0 a0Var) throws IOException {
            w0(a0Var.getSerializedSize());
            a0Var.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void q0(int i, a0 a0Var) throws IOException {
            u0(1, 3);
            v0(2, i);
            u0(3, 2);
            p0(a0Var);
            u0(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void r0(int i, fx0 fx0Var) throws IOException {
            u0(1, 3);
            v0(2, i);
            g0(3, fx0Var);
            u0(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void s0(int i, String str) throws IOException {
            u0(i, 2);
            t0(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void t0(String str) throws IOException {
            try {
                int length = str.length() * 3;
                int iZ = CodedOutputStream.Z(length);
                int i = iZ + length;
                int i2 = this.s;
                if (i > i2) {
                    byte[] bArr = new byte[length];
                    int iD = m0.a.d(str, bArr, 0, length);
                    w0(iD);
                    G0(bArr, 0, iD);
                    return;
                }
                if (i > i2 - this.t) {
                    E0();
                }
                int iZ2 = CodedOutputStream.Z(str.length());
                int i3 = this.t;
                byte[] bArr2 = this.r;
                try {
                    if (iZ2 == iZ) {
                        int i4 = i3 + iZ2;
                        this.t = i4;
                        int iD2 = m0.a.d(str, bArr2, i4, i2 - i4);
                        this.t = i3;
                        C0((iD2 - i3) - iZ2);
                        this.t = iD2;
                    } else {
                        int iB = m0.b(str);
                        C0(iB);
                        this.t = m0.a.d(str, bArr2, this.t, iB);
                    }
                } catch (m0.d e) {
                    this.t = i3;
                    throw e;
                } catch (ArrayIndexOutOfBoundsException e2) {
                    throw new OutOfSpaceException(e2);
                }
            } catch (m0.d e3) {
                b0(str, e3);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void u0(int i, int i2) throws IOException {
            w0((i << 3) | i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void v0(int i, int i2) throws IOException {
            F0(20);
            B0(i, 0);
            C0(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void w0(int i) throws IOException {
            F0(5);
            C0(i);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void x0(int i, long j) throws IOException {
            F0(20);
            B0(i, 0);
            D0(j);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void y0(long j) throws IOException {
            F0(10);
            D0(j);
        }
    }

    public static int V(int i) {
        if (i >= 0) {
            return Z(i);
        }
        return 10;
    }

    public static int W(s sVar) {
        int serializedSize;
        if (sVar.b != null) {
            serializedSize = sVar.b.size();
        } else {
            serializedSize = sVar.a != null ? sVar.a.getSerializedSize() : 0;
        }
        return Z(serializedSize) + serializedSize;
    }

    public static int X(String str) {
        int length;
        try {
            length = m0.b(str);
        } catch (m0.d unused) {
            length = str.getBytes(q.a).length;
        }
        return Z(length) + length;
    }

    public static int Y(int i) {
        return Z(i << 3);
    }

    public static int Z(int i) {
        if ((i & WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int a0(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public final void U() {
        if (c0() == 0) {
            return;
        }
        ah.f("Did not write as much data as expected.");
    }

    public final void b0(String str, m0.d dVar) throws OutOfSpaceException {
        p.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) dVar);
        byte[] bytes = str.getBytes(q.a);
        try {
            w0(bytes.length);
            O(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e) {
            throw new OutOfSpaceException(e);
        }
    }

    public abstract int c0();

    public abstract void d0(byte b2);

    public abstract void e0(int i, boolean z);

    public abstract void f0(int i, byte[] bArr);

    public abstract void g0(int i, fx0 fx0Var);

    public abstract void h0(fx0 fx0Var);

    public abstract void i0(int i, int i2);

    public abstract void j0(int i);

    public abstract void k0(int i, long j);

    public abstract void l0(long j);

    public abstract void m0(int i, int i2);

    public abstract void n0(int i);

    public abstract void o0(int i, a0 a0Var, f0 f0Var);

    public abstract void p0(a0 a0Var);

    public abstract void q0(int i, a0 a0Var);

    public abstract void r0(int i, fx0 fx0Var);

    public abstract void s0(int i, String str);

    public abstract void t0(String str);

    public abstract void u0(int i, int i2);

    public abstract void v0(int i, int i2);

    public abstract void w0(int i);

    public abstract void x0(int i, long j);

    public abstract void y0(long j);

    public static class OutOfSpaceException extends IOException {
        public OutOfSpaceException(String str, IndexOutOfBoundsException indexOutOfBoundsException) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(str), indexOutOfBoundsException);
        }

        public OutOfSpaceException(IndexOutOfBoundsException indexOutOfBoundsException) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
        }

        public OutOfSpaceException() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }
}
