package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class oi2 extends u13 {
    public static final oi2 d = new oi2();
    public final x22 c = new x22(xo8.c, xo8.d, xo8.e, xo8.a);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // defpackage.r22
    public final void dispatch(o22 o22Var, Runnable runnable) {
        x22.o(this.c, runnable, 6);
    }

    @Override // defpackage.r22
    public final void dispatchYield(o22 o22Var, Runnable runnable) {
        x22.o(this.c, runnable, 2);
    }

    @Override // defpackage.u13
    public final Executor k0() {
        return this.c;
    }

    @Override // defpackage.r22
    public final r22 limitedParallelism(int i, String str) {
        zd3.b(i);
        if (i >= xo8.c) {
            return str != null ? new wh5(this, str) : this;
        }
        return super.limitedParallelism(i, str);
    }

    @Override // defpackage.r22
    public final String toString() {
        return "Dispatchers.Default";
    }
}
