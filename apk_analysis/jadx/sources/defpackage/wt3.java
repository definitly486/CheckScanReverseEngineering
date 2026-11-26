package defpackage;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

/* JADX INFO: loaded from: classes5.dex */
public final class wt3 implements s18 {
    public final hy6 b;
    public final Deflater c;
    public final uk2 d;
    public boolean e;
    public final CRC32 f;

    public wt3(s18 s18Var) {
        hy6 hy6Var = new hy6(s18Var);
        this.b = hy6Var;
        Deflater deflater = new Deflater(-1, true);
        this.c = deflater;
        this.d = new uk2(hy6Var, deflater);
        this.f = new CRC32();
        bu0 bu0Var = hy6Var.c;
        bu0Var.E0(8075);
        bu0Var.A0(8);
        bu0Var.A0(0);
        bu0Var.D0(0);
        bu0Var.A0(0);
        bu0Var.A0(0);
    }

    @Override // defpackage.s18
    public final void H(bu0 bu0Var, long j) throws IOException {
        bu0Var.getClass();
        if (j < 0) {
            c9.f(r01.c(j, "byteCount < 0: "));
            return;
        }
        if (j == 0) {
            return;
        }
        gl7 gl7Var = bu0Var.b;
        gl7Var.getClass();
        long j2 = j;
        while (j2 > 0) {
            int iMin = (int) Math.min(j2, gl7Var.c - gl7Var.b);
            this.f.update(gl7Var.a, gl7Var.b, iMin);
            j2 -= (long) iMin;
            gl7Var = gl7Var.f;
            gl7Var.getClass();
        }
        this.d.H(bu0Var, j);
    }

    @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        Deflater deflater = this.c;
        hy6 hy6Var = this.b;
        bu0 bu0Var = hy6Var.c;
        if (this.e) {
            return;
        }
        try {
            uk2 uk2Var = this.d;
            uk2Var.c.finish();
            uk2Var.a(false);
            int value = (int) this.f.getValue();
            if (hy6Var.d) {
                throw new IllegalStateException("closed");
            }
            bu0Var.D0(h.d(value));
            hy6Var.m();
            int bytesRead = (int) deflater.getBytesRead();
            if (hy6Var.d) {
                throw new IllegalStateException("closed");
            }
            bu0Var.D0(h.d(bytesRead));
            hy6Var.m();
            th = null;
            try {
                deflater.end();
            } catch (Throwable th) {
                if (th == null) {
                    th = th;
                }
            }
            try {
                hy6Var.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                }
            }
            this.e = true;
            if (th != null) {
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // defpackage.s18, java.io.Flushable
    public final void flush() throws IOException {
        this.d.flush();
    }

    @Override // defpackage.s18
    public final wv8 r() {
        return this.b.b.r();
    }
}
