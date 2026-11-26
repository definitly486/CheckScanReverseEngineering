package androidx.compose.ui.platform;

import android.view.Choreographer;
import androidx.compose.runtime.MonotonicFrameClock;
import defpackage.a32;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.c31;
import defpackage.e02;
import defpackage.g02;
import defpackage.k57;
import defpackage.nl3;
import defpackage.o22;
import defpackage.zya;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidUiFrameClock implements MonotonicFrameClock {
    public static final int $stable = 8;
    private final Choreographer choreographer;
    private final AndroidUiDispatcher dispatcher;

    public AndroidUiFrameClock(Choreographer choreographer, AndroidUiDispatcher androidUiDispatcher) {
        this.choreographer = choreographer;
        this.dispatcher = androidUiDispatcher;
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) MonotonicFrameClock.DefaultImpls.fold(this, r, bm3Var);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock, defpackage.o22
    public /* bridge */ <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) MonotonicFrameClock.DefaultImpls.get(this, bVar);
    }

    public final Choreographer getChoreographer() {
        return this.choreographer;
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
        AndroidUiDispatcher androidUiDispatcher = this.dispatcher;
        if (androidUiDispatcher == null) {
            o22.a aVar = e02Var.getContext().get(g02.a.b);
            androidUiDispatcher = aVar instanceof AndroidUiDispatcher ? (AndroidUiDispatcher) aVar : null;
        }
        final c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        Choreographer.FrameCallback frameCallback = new Choreographer.FrameCallback() { // from class: androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$callback$1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                Object aVar2;
                e02 e02Var2 = c31Var;
                try {
                    aVar2 = nl3Var.invoke(Long.valueOf(j));
                } catch (Throwable th) {
                    aVar2 = new k57.a(th);
                }
                e02Var2.resumeWith(aVar2);
            }
        };
        if (androidUiDispatcher == null || !aa4.e(androidUiDispatcher.getChoreographer(), getChoreographer())) {
            getChoreographer().postFrameCallback(frameCallback);
            c31Var.n(new AndroidUiFrameClock$withFrameNanos$2$2(this, frameCallback));
        } else {
            androidUiDispatcher.postFrameCallback$ui(frameCallback);
            c31Var.n(new AndroidUiFrameClock$withFrameNanos$2$1(androidUiDispatcher, frameCallback));
        }
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    public AndroidUiFrameClock(Choreographer choreographer) {
        this(choreographer, null);
    }
}
