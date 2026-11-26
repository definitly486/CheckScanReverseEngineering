package androidx.compose.runtime;

import androidx.compose.runtime.internal.AwaiterQueue;
import defpackage.a31;
import defpackage.a32;
import defpackage.bm3;
import defpackage.c31;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.k57;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.o22;
import defpackage.r57;
import defpackage.zya;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes2.dex */
public final class BroadcastFrameClock implements MonotonicFrameClock {
    public static final int $stable = 8;
    private final ll3<j59> onNewAwaiters;
    private final AwaiterQueue<FrameAwaiter<?>> queue;

    public static final class FrameAwaiter<R> extends AwaiterQueue.Awaiter {
        private a31<? super R> continuation;
        private nl3<? super Long, ? extends R> onFrame;

        public FrameAwaiter(nl3<? super Long, ? extends R> nl3Var, a31<? super R> a31Var) {
            this.continuation = a31Var;
            this.onFrame = nl3Var;
        }

        @Override // androidx.compose.runtime.internal.AwaiterQueue.Awaiter
        public void cancel() {
            this.onFrame = null;
            this.continuation = null;
        }

        public final void resume(long j) {
            a31<? super R> a31Var;
            Object aVar;
            nl3<? super Long, ? extends R> nl3Var = this.onFrame;
            if (nl3Var == null || (a31Var = this.continuation) == null) {
                return;
            }
            try {
                aVar = nl3Var.invoke(Long.valueOf(j));
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            a31Var.resumeWith(aVar);
        }

        @Override // androidx.compose.runtime.internal.AwaiterQueue.Awaiter
        public void resumeWithException(Throwable th) {
            a31<? super R> a31Var = this.continuation;
            if (a31Var != null) {
                a31Var.resumeWith(r57.a(th));
            }
        }
    }

    public BroadcastFrameClock(ll3<j59> ll3Var) {
        this.onNewAwaiters = ll3Var;
        this.queue = new AwaiterQueue<>();
    }

    public static /* synthetic */ void cancel$default(BroadcastFrameClock broadcastFrameClock, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = new CancellationException("clock cancelled");
        }
        broadcastFrameClock.cancel(cancellationException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 sendFrame$lambda$0(long j, FrameAwaiter frameAwaiter) {
        frameAwaiter.resume(j);
        return j59.a;
    }

    public final void cancel(CancellationException cancellationException) {
        this.queue.fail(cancellationException);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) MonotonicFrameClock.DefaultImpls.fold(this, r, bm3Var);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) MonotonicFrameClock.DefaultImpls.get(this, bVar);
    }

    public final boolean getHasAwaiters() {
        return this.queue.getHasAwaiters();
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ o22 minusKey(o22.b<?> bVar) {
        return MonotonicFrameClock.DefaultImpls.minusKey(this, bVar);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ o22 plus(o22 o22Var) {
        return MonotonicFrameClock.DefaultImpls.plus(this, o22Var);
    }

    public final void sendFrame(final long j) {
        this.queue.flushAndDispatchAwaiters(new nl3() { // from class: androidx.compose.runtime.b
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return BroadcastFrameClock.sendFrame$lambda$0(j, (BroadcastFrameClock.FrameAwaiter) obj);
            }
        });
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock
    public <R> Object withFrameNanos(nl3<? super Long, ? extends R> nl3Var, e02<? super R> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        final CancellationHandle cancellationHandleAddAwaiter = this.queue.addAwaiter(new FrameAwaiter(nl3Var, c31Var), this.onNewAwaiters);
        c31Var.n(new nl3<Throwable, j59>() { // from class: androidx.compose.runtime.BroadcastFrameClock$withFrameNanos$2$1
            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
                invoke2(th);
                return j59.a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                cancellationHandleAddAwaiter.cancel();
            }
        });
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BroadcastFrameClock() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ BroadcastFrameClock(ll3 ll3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : ll3Var);
    }
}
