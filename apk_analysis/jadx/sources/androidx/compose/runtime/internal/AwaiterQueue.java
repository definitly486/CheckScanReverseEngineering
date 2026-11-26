package androidx.compose.runtime.internal;

import androidx.collection.MutableObjectList;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.OneShotCancellationHandle;
import androidx.compose.runtime.internal.AwaiterQueue;
import androidx.compose.runtime.internal.AwaiterQueue.Awaiter;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.p07;

/* JADX INFO: loaded from: classes2.dex */
public final class AwaiterQueue<A extends Awaiter> {
    public static final int $stable = 8;
    private MutableObjectList<A> awaiters;
    private Throwable failureCause;
    private final Object lock = new Object();
    private final AtomicInt pendingAwaitersCountUnlocked = AtomicAwaitersCount.m5574constructorimpl();
    private MutableObjectList<A> spareList;

    public static abstract class Awaiter {
        public static final int $stable = 0;

        public abstract void cancel();

        public abstract void resumeWithException(Throwable th);
    }

    public AwaiterQueue() {
        int i = 0;
        int i2 = 1;
        jh2 jh2Var = null;
        this.awaiters = new MutableObjectList<>(i, i2, jh2Var);
        this.spareList = new MutableObjectList<>(i, i2, jh2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addAwaiter$lambda$1(Awaiter awaiter, AwaiterQueue awaiterQueue, p07 p07Var) {
        int i;
        awaiter.cancel();
        AtomicInt atomicInt = awaiterQueue.pendingAwaitersCountUnlocked;
        int i2 = p07Var.b;
        do {
            i = atomicInt.get();
        } while (!atomicInt.compareAndSet(i, ((i >>> 27) & 15) == i2 ? i - 1 : i));
        return j59.a;
    }

    public final CancellationHandle addAwaiter(final A a, ll3<j59> ll3Var) {
        int i;
        int i2;
        final p07 p07Var = new p07();
        p07Var.b = -1;
        synchronized (this.lock) {
            Throwable th = this.failureCause;
            if (th != null) {
                a.resumeWithException(th);
                return CancellationHandle.Companion.getEmpty$runtime();
            }
            AtomicInt atomicInt = this.pendingAwaitersCountUnlocked;
            do {
                i = atomicInt.get();
                i2 = i + 1;
            } while (!atomicInt.compareAndSet(i, i2));
            boolean z = true;
            if ((134217727 & i2) != 1) {
                z = false;
            }
            p07Var.b = (i2 >>> 27) & 15;
            this.awaiters.add(a);
            if (z && ll3Var != null) {
                try {
                    ll3Var.invoke();
                } catch (Throwable th2) {
                    fail(th2);
                }
            }
            return new OneShotCancellationHandle(new ll3() { // from class: pz
                @Override // defpackage.ll3
                public final Object invoke() {
                    return AwaiterQueue.addAwaiter$lambda$1(a, this, p07Var);
                }
            });
        }
    }

    public final void fail(Throwable th) {
        int i;
        synchronized (this.lock) {
            try {
                if (this.failureCause != null) {
                    return;
                }
                this.failureCause = th;
                MutableObjectList<A> mutableObjectList = this.awaiters;
                Object[] objArr = mutableObjectList.content;
                int i2 = mutableObjectList._size;
                for (int i3 = 0; i3 < i2; i3++) {
                    ((Awaiter) objArr[i3]).resumeWithException(th);
                }
                this.awaiters.clear();
                AtomicInt atomicInt = this.pendingAwaitersCountUnlocked;
                do {
                    i = atomicInt.get();
                } while (!atomicInt.compareAndSet(i, AtomicAwaitersCount.m5585packimpl(atomicInt, ((i >>> 27) & 15) + 1, 0)));
                j59 j59Var = j59.a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void flushAndDispatchAwaiters(nl3<? super A, j59> nl3Var) {
        int i;
        int i2;
        synchronized (this.lock) {
            try {
                MutableObjectList<A> mutableObjectList = this.awaiters;
                this.awaiters = this.spareList;
                this.spareList = mutableObjectList;
                AtomicInt atomicInt = this.pendingAwaitersCountUnlocked;
                do {
                    i = atomicInt.get();
                } while (!atomicInt.compareAndSet(i, AtomicAwaitersCount.m5585packimpl(atomicInt, ((i >>> 27) & 15) + 1, 0)));
                int size = mutableObjectList.getSize();
                for (i2 = 0; i2 < size; i2++) {
                    nl3Var.invoke(mutableObjectList.get(i2));
                }
                mutableObjectList.clear();
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean getHasAwaiters() {
        return (this.pendingAwaitersCountUnlocked.get() & 134217727) > 0;
    }
}
