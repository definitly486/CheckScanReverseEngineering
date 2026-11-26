package androidx.lifecycle;

import defpackage.a32;
import defpackage.c31;
import defpackage.e02;
import defpackage.eg;
import defpackage.gu3;
import defpackage.gx2;
import defpackage.j59;
import defpackage.k57;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.r22;
import defpackage.uy4;
import defpackage.zya;

/* JADX INFO: loaded from: classes3.dex */
public final class WithLifecycleStateKt {

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.lifecycle.WithLifecycleStateKt$withStateAtLeastUnchecked$2, reason: invalid class name */
    public static final class AnonymousClass2<R> implements ll3<R> {
        final /* synthetic */ ll3<R> $block;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(ll3<? extends R> ll3Var) {
            this.$block = ll3Var;
        }

        @Override // defpackage.ll3
        public final R invoke() {
            return this.$block.invoke();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.lifecycle.LifecycleObserver, androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1] */
    public static final <R> Object suspendWithStateAtLeastUnchecked(final Lifecycle lifecycle, final Lifecycle.State state, boolean z, final r22 r22Var, final ll3<? extends R> ll3Var, e02<? super R> e02Var) throws Throwable {
        final c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        final ?? r7 = new LifecycleEventObserver() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                Object aVar;
                lifecycleOwner.getClass();
                event.getClass();
                if (event != Lifecycle.Event.Companion.upTo(state)) {
                    if (event == Lifecycle.Event.ON_DESTROY) {
                        lifecycle.removeObserver(this);
                        c31Var.resumeWith(new k57.a(new LifecycleDestroyedException()));
                        return;
                    }
                    return;
                }
                lifecycle.removeObserver(this);
                e02 e02Var2 = c31Var;
                try {
                    aVar = ll3Var.invoke();
                } catch (Throwable th) {
                    aVar = new k57.a(th);
                }
                e02Var2.resumeWith(aVar);
            }
        };
        if (z) {
            r22Var.dispatch(gx2.b, new Runnable() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$1
                @Override // java.lang.Runnable
                public final void run() {
                    lifecycle.addObserver(r7);
                }
            });
        } else {
            lifecycle.addObserver(r7);
        }
        c31Var.n(new nl3<Throwable, j59>() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                r22 r22Var2 = r22Var;
                gx2 gx2Var = gx2.b;
                if (!r22Var2.isDispatchNeeded(gx2Var)) {
                    lifecycle.removeObserver(r7);
                    return;
                }
                r22 r22Var3 = r22Var;
                final Lifecycle lifecycle2 = lifecycle;
                final WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 = r7;
                r22Var3.dispatch(gx2Var, new Runnable() { // from class: androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        lifecycle2.removeObserver(withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1);
                    }
                });
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

    public static final <R> Object withCreated(LifecycleOwner lifecycleOwner, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.CREATED;
        oi2 oi2Var = qo2.a;
        gu3 gu3VarK0 = uy4.a.k0();
        boolean zIsDispatchNeeded = gu3VarK0.isDispatchNeeded(e02Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return ll3Var.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, gu3VarK0, new AnonymousClass2(ll3Var), e02Var);
    }

    private static final <R> Object withCreated$$forInline(LifecycleOwner lifecycleOwner, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        oi2 oi2Var = qo2.a;
        uy4.a.getClass();
        throw null;
    }

    public static final <R> Object withResumed(LifecycleOwner lifecycleOwner, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.RESUMED;
        oi2 oi2Var = qo2.a;
        gu3 gu3VarK0 = uy4.a.k0();
        boolean zIsDispatchNeeded = gu3VarK0.isDispatchNeeded(e02Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return ll3Var.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, gu3VarK0, new AnonymousClass2(ll3Var), e02Var);
    }

    private static final <R> Object withResumed$$forInline(LifecycleOwner lifecycleOwner, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        oi2 oi2Var = qo2.a;
        uy4.a.getClass();
        throw null;
    }

    public static final <R> Object withStarted(LifecycleOwner lifecycleOwner, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.STARTED;
        oi2 oi2Var = qo2.a;
        gu3 gu3VarK0 = uy4.a.k0();
        boolean zIsDispatchNeeded = gu3VarK0.isDispatchNeeded(e02Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return ll3Var.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, gu3VarK0, new AnonymousClass2(ll3Var), e02Var);
    }

    private static final <R> Object withStarted$$forInline(LifecycleOwner lifecycleOwner, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        oi2 oi2Var = qo2.a;
        uy4.a.getClass();
        throw null;
    }

    public static final <R> Object withStateAtLeast(LifecycleOwner lifecycleOwner, Lifecycle.State state, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (state.compareTo(Lifecycle.State.CREATED) < 0) {
            eg.d(state, "target state must be CREATED or greater, found ");
            return null;
        }
        oi2 oi2Var = qo2.a;
        gu3 gu3VarK0 = uy4.a.k0();
        boolean zIsDispatchNeeded = gu3VarK0.isDispatchNeeded(e02Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return ll3Var.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, gu3VarK0, new AnonymousClass2(ll3Var), e02Var);
    }

    private static final <R> Object withStateAtLeast$$forInline(LifecycleOwner lifecycleOwner, Lifecycle.State state, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        lifecycleOwner.getLifecycle();
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            oi2 oi2Var = qo2.a;
            uy4.a.getClass();
            throw null;
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
    }

    public static final <R> Object withStateAtLeastUnchecked(Lifecycle lifecycle, Lifecycle.State state, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        oi2 oi2Var = qo2.a;
        gu3 gu3VarK0 = uy4.a.k0();
        boolean zIsDispatchNeeded = gu3VarK0.isDispatchNeeded(e02Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return ll3Var.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, gu3VarK0, new AnonymousClass2(ll3Var), e02Var);
    }

    private static final <R> Object withStateAtLeastUnchecked$$forInline(Lifecycle lifecycle, Lifecycle.State state, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        oi2 oi2Var = qo2.a;
        uy4.a.getClass();
        throw null;
    }

    private static final <R> Object withCreated$$forInline(Lifecycle lifecycle, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        oi2 oi2Var = qo2.a;
        uy4.a.getClass();
        throw null;
    }

    private static final <R> Object withResumed$$forInline(Lifecycle lifecycle, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        oi2 oi2Var = qo2.a;
        uy4.a.getClass();
        throw null;
    }

    private static final <R> Object withStarted$$forInline(Lifecycle lifecycle, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        Lifecycle.State state = Lifecycle.State.DESTROYED;
        oi2 oi2Var = qo2.a;
        uy4.a.getClass();
        throw null;
    }

    private static final <R> Object withStateAtLeast$$forInline(Lifecycle lifecycle, Lifecycle.State state, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            oi2 oi2Var = qo2.a;
            uy4.a.getClass();
            throw null;
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + state).toString());
    }

    public static final <R> Object withCreated(Lifecycle lifecycle, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        Lifecycle.State state = Lifecycle.State.CREATED;
        oi2 oi2Var = qo2.a;
        gu3 gu3VarK0 = uy4.a.k0();
        boolean zIsDispatchNeeded = gu3VarK0.isDispatchNeeded(e02Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return ll3Var.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, gu3VarK0, new AnonymousClass2(ll3Var), e02Var);
    }

    public static final <R> Object withResumed(Lifecycle lifecycle, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        Lifecycle.State state = Lifecycle.State.RESUMED;
        oi2 oi2Var = qo2.a;
        gu3 gu3VarK0 = uy4.a.k0();
        boolean zIsDispatchNeeded = gu3VarK0.isDispatchNeeded(e02Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return ll3Var.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, gu3VarK0, new AnonymousClass2(ll3Var), e02Var);
    }

    public static final <R> Object withStarted(Lifecycle lifecycle, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        Lifecycle.State state = Lifecycle.State.STARTED;
        oi2 oi2Var = qo2.a;
        gu3 gu3VarK0 = uy4.a.k0();
        boolean zIsDispatchNeeded = gu3VarK0.isDispatchNeeded(e02Var.getContext());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return ll3Var.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, gu3VarK0, new AnonymousClass2(ll3Var), e02Var);
    }

    public static final <R> Object withStateAtLeast(Lifecycle lifecycle, Lifecycle.State state, ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            oi2 oi2Var = qo2.a;
            gu3 gu3VarK0 = uy4.a.k0();
            boolean zIsDispatchNeeded = gu3VarK0.isDispatchNeeded(e02Var.getContext());
            if (!zIsDispatchNeeded) {
                if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                    if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                        return ll3Var.invoke();
                    }
                } else {
                    throw new LifecycleDestroyedException();
                }
            }
            return suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, gu3VarK0, new AnonymousClass2(ll3Var), e02Var);
        }
        eg.d(state, "target state must be CREATED or greater, found ");
        return null;
    }
}
