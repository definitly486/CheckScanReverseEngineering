package androidx.room.concurrent;

import defpackage.j59;
import defpackage.ll3;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class CloseBarrier {
    private final AtomicInteger blockers;
    private final ll3<j59> closeAction;
    private final AtomicBoolean closeInitiated;

    public CloseBarrier(ll3<j59> ll3Var) {
        ll3Var.getClass();
        this.closeAction = ll3Var;
        this.blockers = new AtomicInteger(0);
        this.closeInitiated = new AtomicBoolean(false);
    }

    private final boolean isClosed() {
        return this.closeInitiated.get();
    }

    public final boolean block$room_runtime() {
        synchronized (this) {
            if (isClosed()) {
                return false;
            }
            this.blockers.incrementAndGet();
            return true;
        }
    }

    public final void close$room_runtime() {
        synchronized (this) {
            if (this.closeInitiated.compareAndSet(false, true)) {
                j59 j59Var = j59.a;
                while (this.blockers.get() != 0) {
                }
                this.closeAction.invoke();
            }
        }
    }

    public final void unblock$room_runtime() {
        synchronized (this) {
            this.blockers.decrementAndGet();
            if (this.blockers.get() < 0) {
                throw new IllegalStateException("Unbalanced call to unblock() detected.");
            }
            j59 j59Var = j59.a;
        }
    }
}
