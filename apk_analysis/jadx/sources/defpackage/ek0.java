package defpackage;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes5.dex */
public final class ek0<T> extends a0<T> {
    public final Thread f;
    public final b13 g;

    public ek0(o22 o22Var, Thread thread, b13 b13Var) {
        super(o22Var, true, true);
        this.f = thread;
        this.g = b13Var;
    }

    @Override // defpackage.sb4
    public final void s(Object obj) {
        Thread threadCurrentThread = Thread.currentThread();
        Thread thread = this.f;
        if (aa4.e(threadCurrentThread, thread)) {
            return;
        }
        LockSupport.unpark(thread);
    }
}
