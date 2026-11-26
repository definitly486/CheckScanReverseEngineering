package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class sh2 extends u13 implements Executor {
    public static final sh2 c = new sh2();
    public static final r22 d;

    static {
        x69 x69Var = x69.c;
        int i = kh8.a;
        if (64 >= i) {
            i = 64;
        }
        d = r22.limitedParallelism$default(x69Var, r96.e(i, 12, "kotlinx.coroutines.io.parallelism"), null, 2, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // defpackage.r22
    public final void dispatch(o22 o22Var, Runnable runnable) {
        d.dispatch(o22Var, runnable);
    }

    @Override // defpackage.r22
    public final void dispatchYield(o22 o22Var, Runnable runnable) {
        d.dispatchYield(o22Var, runnable);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        dispatch(gx2.b, runnable);
    }

    @Override // defpackage.u13
    public final Executor k0() {
        return this;
    }

    @Override // defpackage.r22
    public final r22 limitedParallelism(int i, String str) {
        return x69.c.limitedParallelism(i, str);
    }

    @Override // defpackage.r22
    public final String toString() {
        return "Dispatchers.IO";
    }
}
