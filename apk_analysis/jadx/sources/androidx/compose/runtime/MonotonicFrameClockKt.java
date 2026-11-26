package androidx.compose.runtime;

import defpackage.ah;
import defpackage.e02;
import defpackage.nl3;
import defpackage.o22;

/* JADX INFO: loaded from: classes2.dex */
public final class MonotonicFrameClockKt {
    public static final MonotonicFrameClock getMonotonicFrameClock(o22 o22Var) {
        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) o22Var.get(MonotonicFrameClock.Key);
        if (monotonicFrameClock != null) {
            return monotonicFrameClock;
        }
        ah.f("A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext.");
        return null;
    }

    public static /* synthetic */ void getMonotonicFrameClock$annotations(o22 o22Var) {
    }

    public static final <R> Object withFrameMillis(nl3<? super Long, ? extends R> nl3Var, e02<? super R> e02Var) {
        return getMonotonicFrameClock(e02Var.getContext()).withFrameNanos(new AnonymousClass2(nl3Var), e02Var);
    }

    public static final <R> Object withFrameNanos(nl3<? super Long, ? extends R> nl3Var, e02<? super R> e02Var) {
        return getMonotonicFrameClock(e02Var.getContext()).withFrameNanos(nl3Var, e02Var);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.compose.runtime.MonotonicFrameClockKt$withFrameMillis$2, reason: invalid class name */
    public static final class AnonymousClass2<R> implements nl3<Long, R> {
        final /* synthetic */ nl3<Long, R> $onFrame;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(nl3<? super Long, ? extends R> nl3Var) {
            this.$onFrame = nl3Var;
        }

        public final R invoke(long j) {
            return this.$onFrame.invoke(Long.valueOf(j / 1000000));
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(Long l) {
            return invoke(l.longValue());
        }
    }

    public static final <R> Object withFrameMillis(MonotonicFrameClock monotonicFrameClock, nl3<? super Long, ? extends R> nl3Var, e02<? super R> e02Var) {
        return monotonicFrameClock.withFrameNanos(new AnonymousClass2(nl3Var), e02Var);
    }
}
