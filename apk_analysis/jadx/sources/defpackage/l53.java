package defpackage;

import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class l53 extends pj3 {
    public final nl3<IOException, j59> c;
    public boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public l53(s18 s18Var, nl3<? super IOException, j59> nl3Var) {
        super(s18Var);
        s18Var.getClass();
        this.c = nl3Var;
    }

    @Override // defpackage.pj3, defpackage.s18
    public final void H(bu0 bu0Var, long j) throws EOFException {
        bu0Var.getClass();
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

    @Override // defpackage.pj3, defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.d) {
            return;
        }
        try {
            super.close();
        } catch (IOException e) {
            this.d = true;
            this.c.invoke(e);
        }
    }

    @Override // defpackage.pj3, defpackage.s18, java.io.Flushable
    public final void flush() {
        if (this.d) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e) {
            this.d = true;
            this.c.invoke(e);
        }
    }
}
