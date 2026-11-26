package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class eo8 {
    public boolean b;
    public final Object a = new Object();
    public final ArrayDeque c = new ArrayDeque();
    public final AtomicReference d = new AtomicReference();

    public final void a(Runnable runnable, Executor executor) {
        synchronized (this.a) {
            try {
                if (this.b) {
                    this.c.add(new pfc(runnable, executor));
                } else {
                    this.b = true;
                    c(runnable, executor);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        synchronized (this.a) {
            try {
                if (this.c.isEmpty()) {
                    this.b = false;
                    return;
                }
                pfc pfcVar = (pfc) this.c.remove();
                c(pfcVar.b, pfcVar.a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(final Runnable runnable, Executor executor) {
        try {
            executor.execute(new Runnable() { // from class: dec
                @Override // java.lang.Runnable
                public final void run() {
                    eo8 eo8Var = this.b;
                    AtomicReference atomicReference = eo8Var.d;
                    Preconditions.checkState(((Thread) atomicReference.getAndSet(Thread.currentThread())) == null);
                    try {
                        runnable.run();
                        atomicReference.set(null);
                        eo8Var.b();
                    } catch (Throwable th) {
                        try {
                            atomicReference.set(null);
                            eo8Var.b();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
            b();
        }
    }
}
