package androidx.compose.animation.core;

import androidx.compose.runtime.State;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.x81;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1", f = "AnimateAsState.kt", l = {430}, m = "invokeSuspend", v = 1)
public final class AnimateAsStateKt$animateValueAsState$3$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ State<AnimationSpec<T>> $animSpec$delegate;
    final /* synthetic */ Animatable<T, V> $animatable;
    final /* synthetic */ x81<T> $channel;
    final /* synthetic */ State<nl3<T, j59>> $listener$delegate;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: renamed from: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1$1, reason: invalid class name */
    @bd2(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1$1", f = "AnimateAsState.kt", l = {439}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ State<AnimationSpec<T>> $animSpec$delegate;
        final /* synthetic */ Animatable<T, V> $animatable;
        final /* synthetic */ State<nl3<T, j59>> $listener$delegate;
        final /* synthetic */ T $newTarget;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(T t, Animatable<T, V> animatable, State<? extends AnimationSpec<T>> state, State<? extends nl3<? super T, j59>> state2, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$newTarget = t;
            this.$animatable = animatable;
            this.$animSpec$delegate = state;
            this.$listener$delegate = state2;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$newTarget, this.$animatable, this.$animSpec$delegate, this.$listener$delegate, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            AnonymousClass1 anonymousClass1;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                if (!aa4.e(this.$newTarget, this.$animatable.getTargetValue())) {
                    Animatable<T, V> animatable = this.$animatable;
                    T t = this.$newTarget;
                    AnimationSpec animationSpecAnimateValueAsState$lambda$5 = AnimateAsStateKt.animateValueAsState$lambda$5(this.$animSpec$delegate);
                    this.label = 1;
                    anonymousClass1 = this;
                    if (Animatable.animateTo$default(animatable, t, animationSpecAnimateValueAsState$lambda$5, null, null, anonymousClass1, 12, null) == a32Var) {
                        return a32Var;
                    }
                }
                return j59.a;
            }
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            anonymousClass1 = this;
            nl3 nl3VarAnimateValueAsState$lambda$3 = AnimateAsStateKt.animateValueAsState$lambda$3(anonymousClass1.$listener$delegate);
            if (nl3VarAnimateValueAsState$lambda$3 != null) {
                nl3VarAnimateValueAsState$lambda$3.invoke(anonymousClass1.$animatable.getValue());
            }
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AnimateAsStateKt$animateValueAsState$3$1(x81<T> x81Var, Animatable<T, V> animatable, State<? extends AnimationSpec<T>> state, State<? extends nl3<? super T, j59>> state2, e02<? super AnimateAsStateKt$animateValueAsState$3$1> e02Var) {
        super(2, e02Var);
        this.$channel = x81Var;
        this.$animatable = animatable;
        this.$animSpec$delegate = state;
        this.$listener$delegate = state2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        AnimateAsStateKt$animateValueAsState$3$1 animateAsStateKt$animateValueAsState$3$1 = new AnimateAsStateKt$animateValueAsState$3$1(this.$channel, this.$animatable, this.$animSpec$delegate, this.$listener$delegate, e02Var);
        animateAsStateKt$animateValueAsState$3$1.L$0 = obj;
        return animateAsStateKt$animateValueAsState$3$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((AnimateAsStateKt$animateValueAsState$3$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0036 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x003f  */
    /* JADX WARN: Code duplicated, block: B:16:0x004f  */
    /* JADX WARN: Code duplicated, block: B:17:0x0051  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0034 -> B:12:0x0037). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x0036
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r12.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L1c
            if (r1 != r3) goto L16
            java.lang.Object r1 = r12.L$1
            k91 r1 = (defpackage.k91) r1
            java.lang.Object r4 = r12.L$0
            y22 r4 = (defpackage.y22) r4
            defpackage.r57.b(r13)
            goto L37
        L16:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r12)
            return r2
        L1c:
            defpackage.r57.b(r13)
            java.lang.Object r13 = r12.L$0
            y22 r13 = (defpackage.y22) r13
            x81<T> r1 = r12.$channel
            k91 r1 = r1.iterator()
            r4 = r13
        L2a:
            r12.L$0 = r4
            r12.L$1 = r1
            r12.label = r3
            java.lang.Object r13 = r1.b(r12)
            if (r13 != r0) goto L37
            return r0
        L37:
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            if (r13 == 0) goto L63
            java.lang.Object r13 = r1.next()
            x81<T> r5 = r12.$channel
            java.lang.Object r5 = r5.i()
            java.lang.Object r5 = defpackage.p91.b(r5)
            if (r5 != 0) goto L51
            r7 = r13
            goto L52
        L51:
            r7 = r5
        L52:
            androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1$1 r6 = new androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1$1
            androidx.compose.animation.core.Animatable<T, V> r8 = r12.$animatable
            androidx.compose.runtime.State<androidx.compose.animation.core.AnimationSpec<T>> r9 = r12.$animSpec$delegate
            androidx.compose.runtime.State<nl3<T, j59>> r10 = r12.$listener$delegate
            r11 = 0
            r6.<init>(r7, r8, r9, r10, r11)
            r13 = 3
            defpackage.av0.c(r4, r2, r2, r6, r13)
            goto L2a
        L63:
            j59 r12 = defpackage.j59.a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
