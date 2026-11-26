package androidx.lifecycle;

import defpackage.ah;
import defpackage.do2;
import defpackage.gu3;
import defpackage.o22;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.uy4;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: loaded from: classes3.dex */
public final class DispatchQueue {
    private boolean finished;
    private boolean isDraining;
    private boolean paused = true;
    private final Queue<Runnable> queue = new ArrayDeque();

    /* JADX INFO: Access modifiers changed from: private */
    public final void enqueue(Runnable runnable) {
        if (this.queue.offer(runnable)) {
            drainQueue();
        } else {
            ah.f("cannot enqueue any more runnables");
        }
    }

    public final boolean canRun() {
        return this.finished || !this.paused;
    }

    public final void dispatchAndEnqueue(o22 o22Var, Runnable runnable) {
        o22Var.getClass();
        runnable.getClass();
        oi2 oi2Var = qo2.a;
        gu3 gu3VarK0 = uy4.a.k0();
        if (gu3VarK0.isDispatchNeeded(o22Var) || canRun()) {
            gu3VarK0.dispatch(o22Var, new do2(0, this, runnable));
        } else {
            enqueue(runnable);
        }
    }

    public final void drainQueue() {
        if (this.isDraining) {
            return;
        }
        try {
            this.isDraining = true;
            while (!this.queue.isEmpty() && canRun()) {
                Runnable runnablePoll = this.queue.poll();
                if (runnablePoll != null) {
                    runnablePoll.run();
                }
            }
            this.isDraining = false;
        } catch (Throwable th) {
            this.isDraining = false;
            throw th;
        }
    }

    public final void finish() {
        this.finished = true;
        drainQueue();
    }

    public final void pause() {
        this.paused = true;
    }

    public final void resume() {
        if (this.paused) {
            if (this.finished) {
                ah.f("Cannot resume a finished dispatcher");
            } else {
                this.paused = false;
                drainQueue();
            }
        }
    }
}
