package defpackage;

import java.io.EOFException;

/* JADX INFO: loaded from: classes5.dex */
public final class mj0 implements s18 {
    @Override // defpackage.s18
    public final void H(bu0 bu0Var, long j) throws EOFException {
        bu0Var.getClass();
        bu0Var.skip(j);
    }

    @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // defpackage.s18, java.io.Flushable
    public final void flush() {
    }

    @Override // defpackage.s18
    public final wv8 r() {
        return wv8.d;
    }
}
