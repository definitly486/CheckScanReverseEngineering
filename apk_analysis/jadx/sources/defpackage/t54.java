package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class t54 implements v48 {
    public final InputStream b;
    public final wv8 c;

    public t54(InputStream inputStream, wv8 wv8Var) {
        inputStream.getClass();
        wv8Var.getClass();
        this.b = inputStream;
        this.c = wv8Var;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.b.close();
    }

    @Override // defpackage.v48
    public final wv8 r() {
        return this.c;
    }

    @Override // defpackage.v48
    public final long t0(bu0 bu0Var, long j) throws IOException {
        bu0Var.getClass();
        if (j == 0) {
            return 0L;
        }
        if (j < 0) {
            c9.f(r01.c(j, "byteCount < 0: "));
            return 0L;
        }
        try {
            this.c.f();
            gl7 gl7VarY0 = bu0Var.y0(1);
            int i = this.b.read(gl7VarY0.a, gl7VarY0.c, (int) Math.min(j, 8192 - gl7VarY0.c));
            if (i != -1) {
                gl7VarY0.c += i;
                long j2 = i;
                bu0Var.c += j2;
                return j2;
            }
            if (gl7VarY0.b != gl7VarY0.c) {
                return -1L;
            }
            bu0Var.b = gl7VarY0.a();
            il7.a(gl7VarY0);
            return -1L;
        } catch (AssertionError e) {
            Logger logger = qm9.a;
            if (e.getCause() != null) {
                String message = e.getMessage();
                if (message != null ? ta8.D(message, "getsockname failed", false) : false) {
                    throw new IOException(e);
                }
            }
            throw e;
        }
    }

    public final String toString() {
        return "source(" + this.b + ')';
    }
}
