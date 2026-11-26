package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class bt implements s18 {
    public final /* synthetic */ n48 b;
    public final /* synthetic */ t06 c;

    public bt(n48 n48Var, t06 t06Var) {
        this.b = n48Var;
        this.c = t06Var;
    }

    @Override // defpackage.s18
    public final void H(bu0 bu0Var, long j) throws IOException {
        bu0Var.getClass();
        h.b(bu0Var.c, 0L, j);
        while (true) {
            long j2 = 0;
            if (j <= 0) {
                return;
            }
            gl7 gl7Var = bu0Var.b;
            gl7Var.getClass();
            while (j2 < 65536) {
                j2 += (long) (gl7Var.c - gl7Var.b);
                if (j2 >= j) {
                    j2 = j;
                    break;
                } else {
                    gl7Var = gl7Var.f;
                    gl7Var.getClass();
                }
            }
            t06 t06Var = this.c;
            n48 n48Var = this.b;
            n48Var.h();
            try {
                try {
                    t06Var.H(bu0Var, j2);
                    j59 j59Var = j59.a;
                    if (n48Var.i()) {
                        throw n48Var.k(null);
                    }
                    j -= j2;
                } catch (IOException e) {
                    if (!n48Var.i()) {
                        throw e;
                    }
                    throw n48Var.k(e);
                }
            } catch (Throwable th) {
                n48Var.i();
                throw th;
            }
        }
    }

    @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        t06 t06Var = this.c;
        n48 n48Var = this.b;
        n48Var.h();
        try {
            try {
                t06Var.close();
                j59 j59Var = j59.a;
                if (n48Var.i()) {
                    throw n48Var.k(null);
                }
            } catch (IOException e) {
                if (!n48Var.i()) {
                    throw e;
                }
                throw n48Var.k(e);
            }
        } catch (Throwable th) {
            n48Var.i();
            throw th;
        }
    }

    @Override // defpackage.s18, java.io.Flushable
    public final void flush() throws IOException {
        t06 t06Var = this.c;
        n48 n48Var = this.b;
        n48Var.h();
        try {
            try {
                t06Var.flush();
                j59 j59Var = j59.a;
                if (n48Var.i()) {
                    throw n48Var.k(null);
                }
            } catch (IOException e) {
                if (!n48Var.i()) {
                    throw e;
                }
                throw n48Var.k(e);
            }
        } catch (Throwable th) {
            n48Var.i();
            throw th;
        }
    }

    @Override // defpackage.s18
    public final wv8 r() {
        return this.b;
    }

    public final String toString() {
        return "AsyncTimeout.sink(" + this.c + ')';
    }
}
