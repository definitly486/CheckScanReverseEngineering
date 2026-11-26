package androidx.lifecycle;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mb4;
import defpackage.oi2;
import defpackage.pg8;
import defpackage.qo2;
import defpackage.r57;
import defpackage.ul2;
import defpackage.uy4;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
public final class PausingDispatcherKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2, reason: invalid class name */
    @bd2(c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", f = "PausingDispatcher.jvm.kt", l = {213}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ bm3<y22, e02<? super T>, Object> $block;
        final /* synthetic */ Lifecycle.State $minState;
        final /* synthetic */ Lifecycle $this_whenStateAtLeast;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Lifecycle lifecycle, Lifecycle.State state, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$this_whenStateAtLeast = lifecycle;
            this.$minState = state;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_whenStateAtLeast, this.$minState, this.$block, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
            LifecycleController lifecycleController;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lifecycleController = (LifecycleController) this.L$0;
                try {
                    r57.b(obj);
                    lifecycleController.finish();
                    return obj;
                } catch (Throwable th) {
                    th = th;
                    lifecycleController.finish();
                    throw th;
                }
            }
            r57.b(obj);
            mb4 mb4Var = (mb4) ((y22) this.L$0).getCoroutineContext().get(mb4.a.b);
            if (mb4Var == null) {
                ah.f("when[State] methods should have a parent job");
                return null;
            }
            PausingDispatcher pausingDispatcher = new PausingDispatcher();
            LifecycleController lifecycleController2 = new LifecycleController(this.$this_whenStateAtLeast, this.$minState, pausingDispatcher.dispatchQueue, mb4Var);
            try {
                bm3<y22, e02<? super T>, Object> bm3Var = this.$block;
                this.L$0 = lifecycleController2;
                this.label = 1;
                obj = av0.d(pausingDispatcher, bm3Var, this);
                if (obj == a32Var) {
                    return a32Var;
                }
                lifecycleController = lifecycleController2;
                lifecycleController.finish();
                return obj;
            } catch (Throwable th2) {
                th = th2;
                lifecycleController = lifecycleController2;
                lifecycleController.finish();
                throw th;
            }
        }
    }

    @ul2
    public static final <T> Object whenCreated(LifecycleOwner lifecycleOwner, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        return whenCreated(lifecycleOwner.getLifecycle(), bm3Var, e02Var);
    }

    @ul2
    public static final <T> Object whenResumed(LifecycleOwner lifecycleOwner, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        return whenResumed(lifecycleOwner.getLifecycle(), bm3Var, e02Var);
    }

    @ul2
    public static final <T> Object whenStarted(LifecycleOwner lifecycleOwner, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        return whenStarted(lifecycleOwner.getLifecycle(), bm3Var, e02Var);
    }

    @ul2
    public static final <T> Object whenStateAtLeast(Lifecycle lifecycle, Lifecycle.State state, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        oi2 oi2Var = qo2.a;
        return av0.d(uy4.a.k0(), new AnonymousClass2(lifecycle, state, bm3Var, null), e02Var);
    }

    @ul2
    public static final <T> Object whenCreated(Lifecycle lifecycle, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.CREATED, bm3Var, e02Var);
    }

    @ul2
    public static final <T> Object whenResumed(Lifecycle lifecycle, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.RESUMED, bm3Var, e02Var);
    }

    @ul2
    public static final <T> Object whenStarted(Lifecycle lifecycle, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        return whenStateAtLeast(lifecycle, Lifecycle.State.STARTED, bm3Var, e02Var);
    }
}
