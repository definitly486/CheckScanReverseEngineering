package androidx.compose.runtime;

import android.view.Choreographer;
import defpackage.a32;
import defpackage.bm3;
import defpackage.bv0;
import defpackage.c31;
import defpackage.e02;
import defpackage.j59;
import defpackage.k57;
import defpackage.nl3;
import defpackage.o22;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.uy4;
import defpackage.zya;

/* JADX INFO: loaded from: classes2.dex */
final class DefaultChoreographerFrameClock implements MonotonicFrameClock {
    public static final DefaultChoreographerFrameClock INSTANCE = new DefaultChoreographerFrameClock();
    private static final Choreographer choreographer;

    static {
        oi2 oi2Var = qo2.a;
        choreographer = (Choreographer) bv0.a(uy4.a.k0(), new DefaultChoreographerFrameClock$choreographer$1(null));
    }

    private DefaultChoreographerFrameClock() {
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) MonotonicFrameClock.DefaultImpls.fold(this, r, bm3Var);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) MonotonicFrameClock.DefaultImpls.get(this, bVar);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ o22 minusKey(o22.b<?> bVar) {
        return MonotonicFrameClock.DefaultImpls.minusKey(this, bVar);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ o22 plus(o22 o22Var) {
        return MonotonicFrameClock.DefaultImpls.plus(this, o22Var);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock
    public <R> Object withFrameNanos(final nl3<? super Long, ? extends R> nl3Var, e02<? super R> e02Var) throws Throwable {
        final c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        final Choreographer.FrameCallback frameCallback = new Choreographer.FrameCallback() { // from class: androidx.compose.runtime.DefaultChoreographerFrameClock$withFrameNanos$2$callback$1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                Object aVar;
                e02 e02Var2 = c31Var;
                DefaultChoreographerFrameClock defaultChoreographerFrameClock = DefaultChoreographerFrameClock.INSTANCE;
                try {
                    aVar = nl3Var.invoke(Long.valueOf(j));
                } catch (Throwable th) {
                    aVar = new k57.a(th);
                }
                e02Var2.resumeWith(aVar);
            }
        };
        choreographer.postFrameCallback(frameCallback);
        c31Var.n(new nl3<Throwable, j59>() { // from class: androidx.compose.runtime.DefaultChoreographerFrameClock$withFrameNanos$2$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                DefaultChoreographerFrameClock.choreographer.removeFrameCallback(frameCallback);
            }

            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
                invoke2(th);
                return j59.a;
            }
        });
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }
}
