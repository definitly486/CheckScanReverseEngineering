package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public final class hy6 implements vu0 {
    public final s18 b;
    public final bu0 c;
    public boolean d;

    public hy6(s18 s18Var) {
        s18Var.getClass();
        this.b = s18Var;
        this.c = new bu0();
    }

    @Override // defpackage.s18
    public final void H(bu0 bu0Var, long j) {
        bu0Var.getClass();
        if (this.d) {
            ah.f("closed");
        } else {
            this.c.H(bu0Var, j);
            m();
        }
    }

    @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        s18 s18Var = this.b;
        if (this.d) {
            return;
        }
        bu0 bu0Var = this.c;
        long j = bu0Var.c;
        if (j > 0) {
            s18Var.H(bu0Var, j);
        }
        th = null;
        try {
            s18Var.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        this.d = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // defpackage.vu0
    public final vu0 d(gx0 gx0Var) {
        gx0Var.getClass();
        if (this.d) {
            ah.f("closed");
            return null;
        }
        this.c.z0(gx0Var);
        m();
        return this;
    }

    @Override // defpackage.vu0, defpackage.s18, java.io.Flushable
    public final void flush() {
        if (this.d) {
            ah.f("closed");
            return;
        }
        bu0 bu0Var = this.c;
        long j = bu0Var.c;
        s18 s18Var = this.b;
        if (j > 0) {
            s18Var.H(bu0Var, j);
        }
        s18Var.flush();
    }

    @Override // defpackage.vu0
    public final bu0 getBuffer() {
        return this.c;
    }

    @Override // defpackage.vu0
    public final vu0 h(long j) {
        if (this.d) {
            ah.f("closed");
            return null;
        }
        this.c.B0(j);
        m();
        return this;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.d;
    }

    @Override // defpackage.vu0
    public final vu0 j(int i, byte[] bArr) {
        if (this.d) {
            ah.f("closed");
            return null;
        }
        this.c.write(bArr, 0, i);
        m();
        return this;
    }

    @Override // defpackage.vu0
    public final long j0(v48 v48Var) throws IOException {
        long j = 0;
        while (true) {
            long jT0 = ((t54) v48Var).t0(this.c, 8192L);
            if (jT0 == -1) {
                return j;
            }
            j += jT0;
            m();
        }
    }

    @Override // defpackage.vu0
    public final vu0 k(long j) {
        if (this.d) {
            ah.f("closed");
            return null;
        }
        this.c.C0(j);
        m();
        return this;
    }

    @Override // defpackage.vu0
    public final vu0 l(String str) {
        str.getClass();
        if (this.d) {
            ah.f("closed");
            return null;
        }
        this.c.I0(str);
        m();
        return this;
    }

    public final vu0 m() {
        if (this.d) {
            ah.f("closed");
            return null;
        }
        bu0 bu0Var = this.c;
        long jV = bu0Var.v();
        if (jV > 0) {
            this.b.H(bu0Var, jV);
        }
        return this;
    }

    @Override // defpackage.s18
    public final wv8 r() {
        return this.b.r();
    }

    public final String toString() {
        return "buffer(" + this.b + ')';
    }

    @Override // defpackage.vu0
    public final OutputStream v0() {
        return new a();
    }

    @Override // defpackage.vu0
    public final vu0 write(byte[] bArr) {
        bArr.getClass();
        if (this.d) {
            ah.f("closed");
            return null;
        }
        this.c.write(bArr, 0, bArr.length);
        m();
        return this;
    }

    @Override // defpackage.vu0
    public final vu0 writeByte(int i) {
        if (this.d) {
            ah.f("closed");
            return null;
        }
        this.c.A0(i);
        m();
        return this;
    }

    @Override // defpackage.vu0
    public final vu0 writeInt(int i) {
        if (this.d) {
            ah.f("closed");
            return null;
        }
        this.c.D0(i);
        m();
        return this;
    }

    @Override // defpackage.vu0
    public final vu0 writeShort(int i) {
        if (this.d) {
            ah.f("closed");
            return null;
        }
        this.c.E0(i);
        m();
        return this;
    }

    public static final class a extends OutputStream {
        public a() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            hy6.this.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() {
            hy6 hy6Var = hy6.this;
            if (hy6Var.d) {
                return;
            }
            hy6Var.flush();
        }

        public final String toString() {
            return hy6.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            bArr.getClass();
            hy6 hy6Var = hy6.this;
            if (hy6Var.d) {
                ki0.d("closed");
            } else {
                hy6Var.c.write(bArr, i, i2);
                hy6Var.m();
            }
        }

        @Override // java.io.OutputStream
        public final void write(int i) throws IOException {
            hy6 hy6Var = hy6.this;
            if (!hy6Var.d) {
                hy6Var.c.A0((byte) i);
                hy6Var.m();
            } else {
                ki0.d("closed");
            }
        }
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        if (!this.d) {
            int iWrite = this.c.write(byteBuffer);
            m();
            return iWrite;
        }
        ah.f("closed");
        return 0;
    }
}
