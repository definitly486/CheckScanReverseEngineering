package androidx.compose.material3.internal;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.material3.TooltipState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
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
final class BasicTooltipStateImpl implements TooltipState {
    private final boolean isPersistent;
    private final MutableState isVisible$delegate;
    private a31<? super j59> job;
    private final MutatorMutex mutatorMutex;
    private final MutableTransitionState<Boolean> transition = new MutableTransitionState<>(Boolean.FALSE);

    /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipStateImpl$show$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.internal.BasicTooltipStateImpl$show$2", f = "BasicTooltip.kt", l = {410, 412}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ nl3<e02<? super j59>, Object> $cancellableShow;
        int label;

        /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipStateImpl$show$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.material3.internal.BasicTooltipStateImpl$show$2$1", f = "BasicTooltip.kt", l = {412}, m = "invokeSuspend")
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
        public AnonymousClass2(nl3<? super e02<? super j59>, ? extends Object> nl3Var, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.$cancellableShow = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return BasicTooltipStateImpl.this.new AnonymousClass2(this.$cancellableShow, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
        
            if (defpackage.yv8.b(1500, r6, r5) == r0) goto L20;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v4, types: [j59, java.lang.Object] */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r5.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L1a
                if (r1 == r4) goto Ld
                if (r1 != r3) goto L13
            Ld:
                defpackage.r57.b(r6)     // Catch: java.lang.Throwable -> L11
                goto L43
            L11:
                r6 = move-exception
                goto L4b
            L13:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r5)
                r5 = 0
                return r5
            L1a:
                defpackage.r57.b(r6)
                androidx.compose.material3.internal.BasicTooltipStateImpl r6 = androidx.compose.material3.internal.BasicTooltipStateImpl.this     // Catch: java.lang.Throwable -> L11
                boolean r6 = r6.isPersistent()     // Catch: java.lang.Throwable -> L11
                if (r6 == 0) goto L30
                nl3<e02<? super j59>, java.lang.Object> r6 = r5.$cancellableShow     // Catch: java.lang.Throwable -> L11
                r5.label = r4     // Catch: java.lang.Throwable -> L11
                java.lang.Object r6 = r6.invoke(r5)     // Catch: java.lang.Throwable -> L11
                if (r6 != r0) goto L43
                goto L42
            L30:
                androidx.compose.material3.internal.BasicTooltipStateImpl$show$2$1 r6 = new androidx.compose.material3.internal.BasicTooltipStateImpl$show$2$1     // Catch: java.lang.Throwable -> L11
                nl3<e02<? super j59>, java.lang.Object> r1 = r5.$cancellableShow     // Catch: java.lang.Throwable -> L11
                r4 = 0
                r6.<init>(r1, r4)     // Catch: java.lang.Throwable -> L11
                r5.label = r3     // Catch: java.lang.Throwable -> L11
                r3 = 1500(0x5dc, double:7.41E-321)
                java.lang.Object r6 = defpackage.yv8.b(r3, r6, r5)     // Catch: java.lang.Throwable -> L11
                if (r6 != r0) goto L43
            L42:
                return r0
            L43:
                androidx.compose.material3.internal.BasicTooltipStateImpl r5 = androidx.compose.material3.internal.BasicTooltipStateImpl.this
                r5.setVisible(r2)
                j59 r5 = defpackage.j59.a
                return r5
            L4b:
                androidx.compose.material3.internal.BasicTooltipStateImpl r5 = androidx.compose.material3.internal.BasicTooltipStateImpl.this
                r5.setVisible(r2)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.BasicTooltipStateImpl.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public BasicTooltipStateImpl(boolean z, boolean z2, MutatorMutex mutatorMutex) {
        this.isPersistent = z2;
        this.mutatorMutex = mutatorMutex;
        this.isVisible$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z), null, 2, null);
    }

    @Override // androidx.compose.material3.TooltipState
    public void dismiss() {
        setVisible(false);
    }

    @Override // androidx.compose.material3.TooltipState
    public MutableTransitionState<Boolean> getTransition() {
        return this.transition;
    }

    @Override // androidx.compose.material3.TooltipState
    public boolean isPersistent() {
        return this.isPersistent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.material3.TooltipState
    public boolean isVisible() {
        return ((Boolean) this.isVisible$delegate.getValue()).booleanValue();
    }

    @Override // androidx.compose.material3.TooltipState
    public void onDispose() {
        a31<? super j59> a31Var = this.job;
        if (a31Var != null) {
            a31Var.d(null);
        }
    }

    public void setVisible(boolean z) {
        this.isVisible$delegate.setValue(Boolean.valueOf(z));
    }

    @Override // androidx.compose.material3.TooltipState
    public Object show(MutatePriority mutatePriority, e02<? super j59> e02Var) {
        Object objMutate = this.mutatorMutex.mutate(mutatePriority, new AnonymousClass2(new BasicTooltipStateImpl$show$cancellableShow$1(this, null), null), e02Var);
        return objMutate == a32.COROUTINE_SUSPENDED ? objMutate : j59.a;
    }
}
