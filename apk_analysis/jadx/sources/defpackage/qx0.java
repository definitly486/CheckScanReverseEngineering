package defpackage;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class qx0 implements v48 {
    public boolean b;
    public final /* synthetic */ wu0 c;
    public final /* synthetic */ lx0.d d;
    public final /* synthetic */ hy6 e;

    public qx0(wu0 wu0Var, lx0.d dVar, hy6 hy6Var) {
        this.c = wu0Var;
        this.d = dVar;
        this.e = hy6Var;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        boolean zT;
        if (!this.b) {
            byte[] bArr = gb9.a;
            TimeUnit.MILLISECONDS.getClass();
            try {
                zT = gb9.t(this, 100);
            } catch (IOException unused) {
                zT = false;
            }
            if (!zT) {
                this.b = true;
                this.d.a();
            }
        }
        this.c.close();
    }

    @Override // defpackage.v48
    public final wv8 r() {
        return this.c.r();
    }

    @Override // defpackage.v48
    public final long t0(bu0 bu0Var, long j) throws IOException {
        bu0Var.getClass();
        try {
            long jT0 = this.c.t0(bu0Var, j);
            hy6 hy6Var = this.e;
            if (jT0 != -1) {
                bu0Var.E(hy6Var.c, bu0Var.c - jT0, jT0);
                hy6Var.m();
                return jT0;
            }
            if (!this.b) {
                this.b = true;
                hy6Var.close();
            }
            return -1L;
        } catch (IOException e) {
            if (this.b) {
                throw e;
            }
            this.b = true;
            this.d.a();
            throw e;
        }
    }
}
