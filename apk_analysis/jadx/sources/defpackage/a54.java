package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes5.dex */
public final class a54 implements v48 {
    public final iy6 b;
    public final Inflater c;
    public int d;
    public boolean e;

    public a54(iy6 iy6Var, Inflater inflater) {
        this.b = iy6Var;
        this.c = inflater;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.e) {
            return;
        }
        this.c.end();
        this.e = true;
        this.b.close();
    }

    @Override // defpackage.v48
    public final wv8 r() {
        return this.b.b.r();
    }

    @Override // defpackage.v48
    public final long t0(bu0 bu0Var, long j) {
        long j2;
        bu0Var.getClass();
        while (j >= 0) {
            if (this.e) {
                ah.f("closed");
                return 0L;
            }
            iy6 iy6Var = this.b;
            Inflater inflater = this.c;
            if (j == 0) {
                j2 = 0;
            } else {
                try {
                    gl7 gl7VarY0 = bu0Var.y0(1);
                    int iMin = (int) Math.min(j, 8192 - gl7VarY0.c);
                    if (inflater.needsInput() && !iy6Var.m()) {
                        gl7 gl7Var = iy6Var.c.b;
                        gl7Var.getClass();
                        int i = gl7Var.c;
                        int i2 = gl7Var.b;
                        int i3 = i - i2;
                        this.d = i3;
                        inflater.setInput(gl7Var.a, i2, i3);
                    }
                    int iInflate = inflater.inflate(gl7VarY0.a, gl7VarY0.c, iMin);
                    int i4 = this.d;
                    if (i4 != 0) {
                        int remaining = i4 - inflater.getRemaining();
                        this.d -= remaining;
                        iy6Var.skip(remaining);
                    }
                    if (iInflate > 0) {
                        gl7VarY0.c += iInflate;
                        j2 = iInflate;
                        bu0Var.c += j2;
                    } else {
                        if (gl7VarY0.b == gl7VarY0.c) {
                            bu0Var.b = gl7VarY0.a();
                            il7.a(gl7VarY0);
                        }
                        j2 = 0;
                    }
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            }
            if (j2 > 0) {
                return j2;
            }
            if (inflater.finished() || inflater.needsDictionary()) {
                return -1L;
            }
            if (iy6Var.m()) {
                throw new EOFException("source exhausted prematurely");
            }
        }
        c9.f(r01.c(j, "byteCount < 0: "));
        return 0L;
    }
}
