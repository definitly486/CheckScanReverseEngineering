package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public final class t06 implements s18 {
    public final OutputStream b;
    public final wv8 c;

    public t06(OutputStream outputStream, wv8 wv8Var) {
        this.b = outputStream;
        this.c = wv8Var;
    }

    @Override // defpackage.s18
    public final void H(bu0 bu0Var, long j) throws IOException {
        bu0Var.getClass();
        h.b(bu0Var.c, 0L, j);
        while (j > 0) {
            this.c.f();
            gl7 gl7Var = bu0Var.b;
            gl7Var.getClass();
            int iMin = (int) Math.min(j, gl7Var.c - gl7Var.b);
            this.b.write(gl7Var.a, gl7Var.b, iMin);
            int i = gl7Var.b + iMin;
            gl7Var.b = i;
            long j2 = iMin;
            j -= j2;
            bu0Var.c -= j2;
            if (i == gl7Var.c) {
                bu0Var.b = gl7Var.a();
                il7.a(gl7Var);
            }
        }
    }

    @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.b.close();
    }

    @Override // defpackage.s18, java.io.Flushable
    public final void flush() throws IOException {
        this.b.flush();
    }

    @Override // defpackage.s18
    public final wv8 r() {
        return this.c;
    }

    public final String toString() {
        return "sink(" + this.b + ')';
    }
}
