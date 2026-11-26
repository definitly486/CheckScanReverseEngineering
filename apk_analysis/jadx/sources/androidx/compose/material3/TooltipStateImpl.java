package androidx.compose.material3;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import defpackage.a31;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
final class TooltipStateImpl implements TooltipState {
    private final boolean isPersistent;
    private a31<? super j59> job;
    private final MutatorMutex mutatorMutex;
    private final MutableTransitionState<Boolean> transition;

    /* JADX INFO: renamed from: androidx.compose.material3.TooltipStateImpl$show$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.TooltipStateImpl$show$2", f = "Tooltip.kt", l = {1184, 1186}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ nl3<e02<? super j59>, Object> $cancellableShow;
        final /* synthetic */ MutatePriority $mutatePriority;
        int label;

        /* JADX INFO: renamed from: androidx.compose.material3.TooltipStateImpl$show$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.material3.TooltipStateImpl$show$2$1", f = "Tooltip.kt", l = {1186}, m = "invokeSuspend")
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ nl3<e02<? super j59>, Object> $cancellableShow;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(nl3<? super e02<? super j59>, ? extends Object> nl3Var, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$cancellableShow = nl3Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.$cancellableShow, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    nl3<e02<? super j59>, Object> nl3Var = this.$cancellableShow;
                    this.label = 1;
                    if (nl3Var.invoke(this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(nl3<? super e02<? super j59>, ? extends Object> nl3Var, MutatePriority mutatePriority, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.$cancellableShow = nl3Var;
            this.$mutatePriority = mutatePriority;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return TooltipStateImpl.this.new AnonymousClass2(this.$cancellableShow, this.$mutatePriority, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
        
            if (defpackage.yv8.b(1500, r5, r4) == r0) goto L20;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r4.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L19
                if (r1 == r3) goto Lc
                if (r1 != r2) goto L12
            Lc:
                defpackage.r57.b(r5)     // Catch: java.lang.Throwable -> L10
                goto L42
            L10:
                r5 = move-exception
                goto L50
            L12:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r4)
                r4 = 0
                return r4
            L19:
                defpackage.r57.b(r5)
                androidx.compose.material3.TooltipStateImpl r5 = androidx.compose.material3.TooltipStateImpl.this     // Catch: java.lang.Throwable -> L10
                boolean r5 = r5.isPersistent()     // Catch: java.lang.Throwable -> L10
                if (r5 == 0) goto L2f
                nl3<e02<? super j59>, java.lang.Object> r5 = r4.$cancellableShow     // Catch: java.lang.Throwable -> L10
                r4.label = r3     // Catch: java.lang.Throwable -> L10
                java.lang.Object r5 = r5.invoke(r4)     // Catch: java.lang.Throwable -> L10
                if (r5 != r0) goto L42
                goto L41
            L2f:
                androidx.compose.material3.TooltipStateImpl$show$2$1 r5 = new androidx.compose.material3.TooltipStateImpl$show$2$1     // Catch: java.lang.Throwable -> L10
                nl3<e02<? super j59>, java.lang.Object> r1 = r4.$cancellableShow     // Catch: java.lang.Throwable -> L10
                r3 = 0
                r5.<init>(r1, r3)     // Catch: java.lang.Throwable -> L10
                r4.label = r2     // Catch: java.lang.Throwable -> L10
                r1 = 1500(0x5dc, double:7.41E-321)
                java.lang.Object r5 = defpackage.yv8.b(r1, r5, r4)     // Catch: java.lang.Throwable -> L10
                if (r5 != r0) goto L42
            L41:
                return r0
            L42:
                androidx.compose.foundation.MutatePriority r5 = r4.$mutatePriority
                androidx.compose.foundation.MutatePriority r0 = androidx.compose.foundation.MutatePriority.PreventUserInput
                if (r5 == r0) goto L4d
                androidx.compose.material3.TooltipStateImpl r4 = androidx.compose.material3.TooltipStateImpl.this
                r4.dismiss()
            L4d:
                j59 r4 = defpackage.j59.a
                return r4
            L50:
                androidx.compose.foundation.MutatePriority r0 = r4.$mutatePriority
                androidx.compose.foundation.MutatePriority r1 = androidx.compose.foundation.MutatePriority.PreventUserInput
                if (r0 == r1) goto L5b
                androidx.compose.material3.TooltipStateImpl r4 = androidx.compose.material3.TooltipStateImpl.this
                r4.dismiss()
            L5b:
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TooltipStateImpl.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public TooltipStateImpl(boolean z, boolean z2, MutatorMutex mutatorMutex) {
        this.isPersistent = z2;
        this.mutatorMutex = mutatorMutex;
        this.transition = new MutableTransitionState<>(Boolean.valueOf(z));
    }

    @Override // androidx.compose.material3.TooltipState
    public void dismiss() {
        a31<? super j59> a31Var;
        getTransition().setTargetState$animation_core(Boolean.FALSE);
        if (!isPersistent() || (a31Var = this.job) == null) {
            return;
        }
        a31Var.d(null);
    }

    @Override // androidx.compose.material3.TooltipState
    public MutableTransitionState<Boolean> getTransition() {
        return this.transition;
    }

    @Override // androidx.compose.material3.TooltipState
    public boolean isPersistent() {
        return this.isPersistent;
    }

    @Override // androidx.compose.material3.TooltipState
    public boolean isVisible() {
        return getTransition().getCurrentState().booleanValue() || getTransition().getTargetState().booleanValue();
    }

    @Override // androidx.compose.material3.TooltipState
    public void onDispose() {
        a31<? super j59> a31Var = this.job;
        if (a31Var != null) {
            a31Var.d(null);
        }
    }

    @Override // androidx.compose.material3.TooltipState
    public Object show(MutatePriority mutatePriority, e02<? super j59> e02Var) {
        Object objMutate = this.mutatorMutex.mutate(mutatePriority, new AnonymousClass2(new TooltipStateImpl$show$cancellableShow$1(this, null), mutatePriority, null), e02Var);
        return objMutate == a32.COROUTINE_SUSPENDED ? objMutate : j59.a;
    }
}
