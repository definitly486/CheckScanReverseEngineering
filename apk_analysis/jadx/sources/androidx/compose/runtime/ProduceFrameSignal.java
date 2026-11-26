package androidx.compose.runtime;

import defpackage.a32;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.ah;
import defpackage.c31;
import defpackage.e02;
import defpackage.j59;
import defpackage.zya;

/* JADX INFO: loaded from: classes2.dex */
final class ProduceFrameSignal {
    private Object pendingFrameContinuation;

    public final Object awaitFrameRequest(Object obj, e02<? super j59> e02Var) throws Throwable {
        c31 c31Var;
        synchronized (obj) {
            if (this.pendingFrameContinuation == RecomposerKt.ProduceAnotherFrame) {
                this.pendingFrameContinuation = RecomposerKt.FramePending;
                return j59.a;
            }
            j59 j59Var = j59.a;
            c31 c31Var2 = new c31(1, zya.b(e02Var));
            c31Var2.u();
            synchronized (obj) {
                try {
                    if (this.pendingFrameContinuation == RecomposerKt.ProduceAnotherFrame) {
                        this.pendingFrameContinuation = RecomposerKt.FramePending;
                        c31Var = c31Var2;
                    } else {
                        this.pendingFrameContinuation = c31Var2;
                        c31Var = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (c31Var != null) {
                c31Var.resumeWith(j59.a);
            }
            Object objS = c31Var2.s();
            return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
        }
    }

    public final e02<j59> requestFrameLocked() {
        Object obj = this.pendingFrameContinuation;
        if (obj instanceof e02) {
            this.pendingFrameContinuation = RecomposerKt.FramePending;
            return (e02) obj;
        }
        if (!aa4.e(obj, RecomposerKt.ProduceAnotherFrame) && !aa4.e(obj, RecomposerKt.FramePending)) {
            if (obj == null) {
                this.pendingFrameContinuation = RecomposerKt.ProduceAnotherFrame;
                return null;
            }
            ah.f(ad2.b(obj, "invalid pendingFrameContinuation "));
        }
        return null;
    }

    public final void takeFrameRequestLocked() {
        if (!(this.pendingFrameContinuation == RecomposerKt.FramePending)) {
            PreconditionsKt.throwIllegalStateException("frame not pending");
        }
        this.pendingFrameContinuation = null;
    }
}
