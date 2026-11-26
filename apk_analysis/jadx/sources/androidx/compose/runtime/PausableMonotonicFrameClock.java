package androidx.compose.runtime;

import androidx.compose.ui.spatial.RectListKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.nl3;
import defpackage.o22;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
public final class PausableMonotonicFrameClock implements MonotonicFrameClock {
    public static final int $stable = 8;
    private final MonotonicFrameClock frameClock;
    private final Latch latch = new Latch();

    /* JADX INFO: renamed from: androidx.compose.runtime.PausableMonotonicFrameClock$withFrameNanos$1, reason: invalid class name */
    @bd2(c = "androidx.compose.runtime.PausableMonotonicFrameClock", f = "PausableMonotonicFrameClock.kt", l = {RectListKt.BitOffsetForFocusable, RectListKt.BitOffsetForGesturable}, m = "withFrameNanos", v = 1)
    public static final class AnonymousClass1<R> extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PausableMonotonicFrameClock.this.withFrameNanos(null, this);
        }
    }

    public PausableMonotonicFrameClock(MonotonicFrameClock monotonicFrameClock) {
        this.frameClock = monotonicFrameClock;
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) MonotonicFrameClock.DefaultImpls.fold(this, r, bm3Var);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) MonotonicFrameClock.DefaultImpls.get(this, bVar);
    }

    public final boolean isPaused() {
        return !this.latch.isOpen();
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ o22 minusKey(o22.b<?> bVar) {
        return MonotonicFrameClock.DefaultImpls.minusKey(this, bVar);
    }

    public final void pause() {
        this.latch.closeLatch();
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ o22 plus(o22 o22Var) {
        return MonotonicFrameClock.DefaultImpls.plus(this, o22Var);
    }

    public final void resume() {
        this.latch.openLatch();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.runtime.MonotonicFrameClock
    public <R> Object withFrameNanos(nl3<? super Long, ? extends R> nl3Var, e02<? super R> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            Latch latch = this.latch;
            anonymousClass1.L$0 = nl3Var;
            anonymousClass1.label = 1;
            if (latch.await(anonymousClass1) != a32Var) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        nl3Var = (nl3) anonymousClass1.L$0;
        r57.b(obj);
        MonotonicFrameClock monotonicFrameClock = this.frameClock;
        anonymousClass1.L$0 = null;
        anonymousClass1.label = 2;
        Object objWithFrameNanos = monotonicFrameClock.withFrameNanos(nl3Var, anonymousClass1);
        return objWithFrameNanos == a32Var ? a32Var : objWithFrameNanos;
    }
}
