package androidx.compose.runtime;

import androidx.compose.runtime.tooling.ComposeToolingFlags;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import defpackage.gx2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mb4;
import defpackage.nb4;
import defpackage.o22;
import defpackage.qb4;
import defpackage.s22;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
public final class RememberedCoroutineScope implements y22, RememberObserver {
    private volatile o22 _coroutineContext;
    private final Object lock = this;
    private final o22 overlayContext;
    private final o22 parentContext;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    public static final o22 CancelledCoroutineContext = new CancelledCoroutineContext();

    public RememberedCoroutineScope(o22 o22Var, o22 o22Var2) {
        this.parentContext = o22Var;
        this.overlayContext = o22Var2;
    }

    public final void cancelIfCreated() {
        synchronized (this.lock) {
            try {
                o22 o22Var = this._coroutineContext;
                if (o22Var == null) {
                    this._coroutineContext = CancelledCoroutineContext;
                } else {
                    qb4.b(o22Var, new ForgottenCoroutineScopeException());
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.y22
    public o22 getCoroutineContext() {
        o22 o22VarPlus;
        o22 o22Var = this._coroutineContext;
        if (o22Var == null || o22Var == CancelledCoroutineContext) {
            CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) this.parentContext.get(CompositionErrorContextImpl.Key);
            o22 rememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1 = compositionErrorContextImpl != null ? new RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(s22.a.b, compositionErrorContextImpl, this) : gx2.b;
            synchronized (this.lock) {
                try {
                    o22VarPlus = this._coroutineContext;
                    if (o22VarPlus == null) {
                        o22 o22Var2 = this.parentContext;
                        o22VarPlus = o22Var2.plus(new nb4((mb4) o22Var2.get(mb4.a.b))).plus(this.overlayContext).plus(rememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1);
                    } else if (o22VarPlus == CancelledCoroutineContext) {
                        o22 o22Var3 = this.parentContext;
                        nb4 nb4Var = new nb4((mb4) o22Var3.get(mb4.a.b));
                        nb4Var.w(new ForgottenCoroutineScopeException());
                        o22VarPlus = o22Var3.plus(nb4Var).plus(this.overlayContext).plus(rememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1);
                        if (ComposeToolingFlags.isVerboseTracingEnabled) {
                            o22VarPlus = o22VarPlus.plus(RememberedCoroutineScopeTracingContext.INSTANCE);
                        }
                    }
                    this._coroutineContext = o22VarPlus;
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            o22Var = o22VarPlus;
        }
        o22Var.getClass();
        return o22Var;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        cancelIfCreated();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        cancelIfCreated();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
