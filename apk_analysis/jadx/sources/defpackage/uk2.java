package defpackage;

import java.io.IOException;
import java.util.zip.Deflater;

/* JADX INFO: loaded from: classes5.dex */
public final class uk2 implements s18 {
    public final hy6 b;
    public final Deflater c;
    public boolean d;

    public uk2(hy6 hy6Var, Deflater deflater) {
        this.b = hy6Var;
        this.c = deflater;
    }

    @Override // defpackage.s18
    public final void H(bu0 bu0Var, long j) throws IOException {
        bu0Var.getClass();
        h.b(bu0Var.c, 0L, j);
        while (true) {
            Deflater deflater = this.c;
            if (j <= 0) {
                deflater.setInput(rm9.b, 0, 0);
                return;
            }
            gl7 gl7Var = bu0Var.b;
            gl7Var.getClass();
            int iMin = (int) Math.min(j, gl7Var.c - gl7Var.b);
            deflater.setInput(gl7Var.a, gl7Var.b, iMin);
            a(false);
            long j2 = iMin;
            bu0Var.c -= j2;
            int i = gl7Var.b + iMin;
            gl7Var.b = i;
            if (i == gl7Var.c) {
                bu0Var.b = gl7Var.a();
                il7.a(gl7Var);
            }
            j -= j2;
        }
    }

    public final void a(boolean z) throws IOException {
        gl7 gl7VarY0;
        int iDeflate;
        hy6 hy6Var = this.b;
        bu0 bu0Var = hy6Var.c;
        while (true) {
            gl7VarY0 = bu0Var.y0(1);
            byte[] bArr = gl7VarY0.a;
            int i = gl7VarY0.c;
            Deflater deflater = this.c;
            if (z) {
                try {
                    iDeflate = deflater.deflate(bArr, i, 8192 - i, 2);
                } catch (NullPointerException e) {
                    throw new IOException("Deflater already closed", e);
                }
            } else {
                iDeflate = deflater.deflate(bArr, i, 8192 - i);
            }
            if (iDeflate > 0) {
                gl7VarY0.c += iDeflate;
                bu0Var.c += (long) iDeflate;
                hy6Var.m();
            } else if (deflater.needsInput()) {
                break;
            }
        }
        if (gl7VarY0.b == gl7VarY0.c) {
            bu0Var.b = gl7VarY0.a();
            il7.a(gl7VarY0);
        }
    }

    @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        Deflater deflater = this.c;
        if (this.d) {
            return;
        }
        deflater.finish();
        a(false);
        th = null;
        try {
            deflater.end();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        try {
            this.b.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.d = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // defpackage.s18, java.io.Flushable
    public final void flush() throws IOException {
        a(true);
        this.b.flush();
    }

    @Override // defpackage.s18
    public final wv8 r() {
        return this.b.b.r();
    }

    public final String toString() {
        return "DeflaterSink(" + this.b + ')';
    }
}
