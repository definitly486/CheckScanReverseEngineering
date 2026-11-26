package defpackage;

import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class m53 implements s18 {
    public final s18 b;
    public final tx c;
    public boolean d;

    public m53(s18 s18Var, tx txVar) {
        this.b = s18Var;
        this.c = txVar;
    }

    @Override // defpackage.s18
    public final void H(bu0 bu0Var, long j) throws EOFException {
        if (this.d) {
            bu0Var.skip(j);
            return;
        }
        try {
            this.b.H(bu0Var, j);
        } catch (IOException e) {
            this.d = true;
            this.c.invoke(e);
        }
    }

    @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.b.close();
        } catch (IOException e) {
            this.d = true;
            this.c.invoke(e);
        }
    }

    @Override // defpackage.s18, java.io.Flushable
    public final void flush() {
        try {
            this.b.flush();
        } catch (IOException e) {
            this.d = true;
            this.c.invoke(e);
        }
    }

    @Override // defpackage.s18
    public final wv8 r() {
        return this.b.r();
    }
}
