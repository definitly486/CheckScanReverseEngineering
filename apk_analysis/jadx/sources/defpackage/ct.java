package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class ct implements v48 {
    public final /* synthetic */ n48 b;
    public final /* synthetic */ t54 c;

    public ct(n48 n48Var, t54 t54Var) {
        this.b = n48Var;
        this.c = t54Var;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        t54 t54Var = this.c;
        n48 n48Var = this.b;
        n48Var.h();
        try {
            try {
                t54Var.close();
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

    @Override // defpackage.v48
    public final wv8 r() {
        return this.b;
    }

    @Override // defpackage.v48
    public final long t0(bu0 bu0Var, long j) throws IOException {
        bu0Var.getClass();
        t54 t54Var = this.c;
        n48 n48Var = this.b;
        n48Var.h();
        try {
            try {
                long jT0 = t54Var.t0(bu0Var, j);
                if (n48Var.i()) {
                    throw n48Var.k(null);
                }
                return jT0;
            } catch (IOException e) {
                if (n48Var.i()) {
                    throw n48Var.k(e);
                }
                throw e;
            }
        } catch (Throwable th) {
            n48Var.i();
            throw th;
        }
    }

    public final String toString() {
        return "AsyncTimeout.source(" + this.c + ')';
    }
}
