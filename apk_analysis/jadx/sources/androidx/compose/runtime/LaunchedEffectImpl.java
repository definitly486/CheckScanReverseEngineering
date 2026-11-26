package androidx.compose.runtime;

import androidx.compose.runtime.tooling.ComposeToolingFlags;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import defpackage.av0;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mb4;
import defpackage.o22;
import defpackage.pib;
import defpackage.s22;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes2.dex */
public final class LaunchedEffectImpl implements RememberObserver, s22 {
    public static final int $stable = 8;
    private mb4 job;
    private final o22 parentCoroutineContext;
    private final y22 scope;
    private final bm3<y22, e02<? super j59>, Object> task;

    /* JADX WARN: Multi-variable type inference failed */
    public LaunchedEffectImpl(o22 o22Var, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var) {
        this.parentCoroutineContext = o22Var;
        this.task = bm3Var;
        o22 o22VarPlus = o22Var.plus(this);
        this.scope = z22.a(ComposeToolingFlags.isVerboseTracingEnabled ? o22VarPlus.plus(LaunchedEffectTracingContext.INSTANCE) : o22VarPlus);
    }

    @Override // defpackage.o22
    public <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) o22.a.C0306a.a(this, r, bm3Var);
    }

    @Override // defpackage.o22
    public <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) o22.a.C0306a.b(this, bVar);
    }

    @Override // o22.a
    public o22.b<?> getKey() {
        return s22.a.b;
    }

    @Override // defpackage.s22
    public void handleException(o22 o22Var, Throwable th) throws Throwable {
        CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) o22Var.get(CompositionErrorContextImpl.Key);
        if (compositionErrorContextImpl != null) {
            compositionErrorContextImpl.attachComposeStackTrace(th, this);
        }
        s22 s22Var = (s22) this.parentCoroutineContext.get(s22.a.b);
        if (s22Var == null) {
            throw th;
        }
        s22Var.handleException(o22Var, th);
    }

    @Override // defpackage.o22
    public o22 minusKey(o22.b<?> bVar) {
        return o22.a.C0306a.c(this, bVar);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        mb4 mb4Var = this.job;
        if (mb4Var != null) {
            mb4Var.cancel(new LeftCompositionCancellationException());
        }
        this.job = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        mb4 mb4Var = this.job;
        if (mb4Var != null) {
            mb4Var.cancel(new LeftCompositionCancellationException());
        }
        this.job = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        mb4 mb4Var = this.job;
        if (mb4Var != null) {
            mb4Var.cancel(pib.a("Old job was still running!", null));
        }
        this.job = av0.c(this.scope, null, null, this.task, 3);
    }

    @Override // defpackage.o22
    public o22 plus(o22 o22Var) {
        return o22.a.C0306a.d(this, o22Var);
    }
}
