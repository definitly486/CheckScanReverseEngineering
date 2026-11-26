package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.TransformableStateKt;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.fm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.o07;
import defpackage.pg8;
import defpackage.q07;
import defpackage.r07;
import defpackage.r57;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class TransformableStateKt {
    private static final AnimationData ZeroAnimationVelocity = new AnimationData(0.0f, Offset.Companion.m6003getZeroF1C5BW0(), 0.0f, null);

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableStateKt$animateRotateBy$3, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TransformableStateKt$animateRotateBy$3", f = "TransformableState.kt", l = {288}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<TransformScope, e02<? super j59>, Object> {
        final /* synthetic */ AnimationSpec<Float> $animationSpec;
        final /* synthetic */ long $centroid;
        final /* synthetic */ float $degrees;
        final /* synthetic */ o07 $previous;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(o07 o07Var, float f, AnimationSpec<Float> animationSpec, long j, e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
            this.$previous = o07Var;
            this.$degrees = f;
            this.$animationSpec = animationSpec;
            this.$centroid = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(o07 o07Var, TransformScope transformScope, long j, AnimationScope animationScope) {
            TransformScope.m1647transformByWithCentroidIEwrmTk$default(transformScope, j, 0.0f, 0L, ((Number) animationScope.getValue()).floatValue() - o07Var.b, 6, null);
            o07Var.b = ((Number) animationScope.getValue()).floatValue();
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$previous, this.$degrees, this.$animationSpec, this.$centroid, e02Var);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // defpackage.bm3
        public final Object invoke(TransformScope transformScope, e02<? super j59> e02Var) {
            return ((AnonymousClass3) create(transformScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final TransformScope transformScope = (TransformScope) this.L$0;
                AnimationState animationStateAnimationState$default = AnimationStateKt.AnimationState$default(this.$previous.b, 0.0f, 0L, 0L, false, 30, null);
                Float f = new Float(this.$degrees);
                AnimationSpec<Float> animationSpec = this.$animationSpec;
                final o07 o07Var = this.$previous;
                final long j = this.$centroid;
                nl3 nl3Var = new nl3() { // from class: androidx.compose.foundation.gestures.g0
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return TransformableStateKt.AnonymousClass3.invokeSuspend$lambda$0(o07Var, transformScope, j, (AnimationScope) obj2);
                    }
                };
                this.label = 1;
                if (SuspendAnimationKt.animateTo$default(animationStateAnimationState$default, f, animationSpec, false, nl3Var, this, 4, null) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableStateKt$animateZoomBy$4, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TransformableStateKt$animateZoomBy$4", f = "TransformableState.kt", l = {252}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass4 extends pg8 implements bm3<TransformScope, e02<? super j59>, Object> {
        final /* synthetic */ AnimationSpec<Float> $animationSpec;
        final /* synthetic */ long $centroid;
        final /* synthetic */ o07 $previous;
        final /* synthetic */ float $zoomFactor;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(o07 o07Var, float f, AnimationSpec<Float> animationSpec, long j, e02<? super AnonymousClass4> e02Var) {
            super(2, e02Var);
            this.$previous = o07Var;
            this.$zoomFactor = f;
            this.$animationSpec = animationSpec;
            this.$centroid = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(o07 o07Var, TransformScope transformScope, long j, AnimationScope animationScope) {
            TransformScope.m1647transformByWithCentroidIEwrmTk$default(transformScope, j, o07Var.b == 0.0f ? 1.0f : ((Number) animationScope.getValue()).floatValue() / o07Var.b, 0L, 0.0f, 12, null);
            o07Var.b = ((Number) animationScope.getValue()).floatValue();
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$previous, this.$zoomFactor, this.$animationSpec, this.$centroid, e02Var);
            anonymousClass4.L$0 = obj;
            return anonymousClass4;
        }

        @Override // defpackage.bm3
        public final Object invoke(TransformScope transformScope, e02<? super j59> e02Var) {
            return ((AnonymousClass4) create(transformScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final TransformScope transformScope = (TransformScope) this.L$0;
                AnimationState animationStateAnimationState$default = AnimationStateKt.AnimationState$default(this.$previous.b, 0.0f, 0L, 0L, false, 30, null);
                Float f = new Float(this.$zoomFactor);
                AnimationSpec<Float> animationSpec = this.$animationSpec;
                final o07 o07Var = this.$previous;
                final long j = this.$centroid;
                nl3 nl3Var = new nl3() { // from class: androidx.compose.foundation.gestures.h0
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return TransformableStateKt.AnonymousClass4.invokeSuspend$lambda$0(o07Var, transformScope, j, (AnimationScope) obj2);
                    }
                };
                this.label = 1;
                if (SuspendAnimationKt.animateTo$default(animationStateAnimationState$default, f, animationSpec, false, nl3Var, this, 4, null) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableStateKt$rotateBy$3, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TransformableStateKt$rotateBy$3", f = "TransformableState.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C05123 extends pg8 implements bm3<TransformScope, e02<? super j59>, Object> {
        final /* synthetic */ long $centroid;
        final /* synthetic */ float $degrees;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05123(long j, float f, e02<? super C05123> e02Var) {
            super(2, e02Var);
            this.$centroid = j;
            this.$degrees = f;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C05123 c05123 = new C05123(this.$centroid, this.$degrees, e02Var);
            c05123.L$0 = obj;
            return c05123;
        }

        @Override // defpackage.bm3
        public final Object invoke(TransformScope transformScope, e02<? super j59> e02Var) {
            return ((C05123) create(transformScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            ((TransformScope) this.L$0).mo1477transformByWithCentroidIEwrmTk(this.$centroid, 1.0f, Offset.Companion.m6003getZeroF1C5BW0(), this.$degrees);
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableStateKt$stopTransformation$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TransformableStateKt$stopTransformation$2", f = "TransformableState.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<TransformScope, e02<? super j59>, Object> {
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(TransformScope transformScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(transformScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return j59.a;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableStateKt$zoomBy$3, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.TransformableStateKt$zoomBy$3", f = "TransformableState.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C05133 extends pg8 implements bm3<TransformScope, e02<? super j59>, Object> {
        final /* synthetic */ long $centroid;
        final /* synthetic */ float $zoomFactor;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05133(long j, float f, e02<? super C05133> e02Var) {
            super(2, e02Var);
            this.$centroid = j;
            this.$zoomFactor = f;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C05133 c05133 = new C05133(this.$centroid, this.$zoomFactor, e02Var);
            c05133.L$0 = obj;
            return c05133;
        }

        @Override // defpackage.bm3
        public final Object invoke(TransformScope transformScope, e02<? super j59> e02Var) {
            return ((C05133) create(transformScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            ((TransformScope) this.L$0).mo1477transformByWithCentroidIEwrmTk(this.$centroid, this.$zoomFactor, Offset.Companion.m6003getZeroF1C5BW0(), 0.0f);
            return j59.a;
        }
    }

    @ul2
    public static final TransformableState TransformableState(final dm3<? super Float, ? super Offset, ? super Float, j59> dm3Var) {
        return TransformableState((fm3<? super Offset, ? super Float, ? super Offset, ? super Float, j59>) new fm3() { // from class: p19
            @Override // defpackage.fm3
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                float fFloatValue = ((Float) obj4).floatValue();
                return TransformableStateKt.TransformableState$lambda$0(dm3Var, (Offset) obj, ((Float) obj2).floatValue(), (Offset) obj3, fFloatValue);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TransformableState$lambda$0(dm3 dm3Var, Offset offset, float f, Offset offset2, float f2) {
        dm3Var.invoke(Float.valueOf(f), offset2, Float.valueOf(f2));
        return j59.a;
    }

    @ul2
    /* JADX INFO: renamed from: animateBy-Su4bsnU, reason: not valid java name */
    public static final Object m1651animateBySu4bsnU(TransformableState transformableState, float f, long j, float f2, AnimationSpec animationSpec, AnimationSpec animationSpec2, AnimationSpec animationSpec3, e02 e02Var) {
        Object objM1653animateByjlnHOkQ = m1653animateByjlnHOkQ(transformableState, f, j, f2, animationSpec, animationSpec2, animationSpec3, Offset.Companion.m6002getUnspecifiedF1C5BW0(), e02Var);
        return objM1653animateByjlnHOkQ == a32.COROUTINE_SUSPENDED ? objM1653animateByjlnHOkQ : j59.a;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, androidx.compose.foundation.gestures.AnimationData] */
    /* JADX INFO: renamed from: animateBy-jlnHOkQ, reason: not valid java name */
    public static final Object m1653animateByjlnHOkQ(TransformableState transformableState, float f, long j, float f2, AnimationSpec<Float> animationSpec, AnimationSpec<Offset> animationSpec2, AnimationSpec<Float> animationSpec3, long j2, e02<? super j59> e02Var) {
        if (!(f > 0.0f)) {
            InlineClassHelperKt.throwIllegalArgumentException("zoom value should be greater than 0");
        }
        r07 r07Var = new r07();
        r07Var.b = new AnimationData(1.0f, Offset.Companion.m6003getZeroF1C5BW0(), 0.0f, null);
        Object objTransform$default = TransformableState.transform$default(transformableState, null, new TransformableStateKt$animateBy$4(r07Var, new AnimationData(f, j, f2, null), new DelegatingAnimationSpec(animationSpec, animationSpec2, animationSpec3), j2, null), e02Var, 1, null);
        return objTransform$default == a32.COROUTINE_SUSPENDED ? objTransform$default : j59.a;
    }

    @ul2
    /* JADX INFO: renamed from: animatePanBy-ubNVwUQ, reason: not valid java name */
    public static final Object m1655animatePanByubNVwUQ(TransformableState transformableState, long j, AnimationSpec animationSpec, e02 e02Var) {
        Object objM1657animatePanByumk_asQ = m1657animatePanByumk_asQ(transformableState, j, animationSpec, Offset.Companion.m6002getUnspecifiedF1C5BW0(), e02Var);
        return objM1657animatePanByumk_asQ == a32.COROUTINE_SUSPENDED ? objM1657animatePanByumk_asQ : j59.a;
    }

    /* JADX INFO: renamed from: animatePanBy-ubNVwUQ$default, reason: not valid java name */
    public static /* synthetic */ Object m1656animatePanByubNVwUQ$default(TransformableState transformableState, long j, AnimationSpec animationSpec, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            animationSpec = new SpringSpec(0.0f, 200.0f, null, 5, null);
        }
        return m1655animatePanByubNVwUQ(transformableState, j, animationSpec, e02Var);
    }

    /* JADX INFO: renamed from: animatePanBy-umk_asQ, reason: not valid java name */
    public static final Object m1657animatePanByumk_asQ(TransformableState transformableState, long j, AnimationSpec<Offset> animationSpec, long j2, e02<? super j59> e02Var) {
        q07 q07Var = new q07();
        q07Var.b = Offset.Companion.m6003getZeroF1C5BW0();
        Object objTransform$default = TransformableState.transform$default(transformableState, null, new TransformableStateKt$animatePanBy$3(q07Var, j, animationSpec, j2, null), e02Var, 1, null);
        return objTransform$default == a32.COROUTINE_SUSPENDED ? objTransform$default : j59.a;
    }

    /* JADX INFO: renamed from: animatePanBy-umk_asQ$default, reason: not valid java name */
    public static /* synthetic */ Object m1658animatePanByumk_asQ$default(TransformableState transformableState, long j, AnimationSpec animationSpec, long j2, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            animationSpec = new SpringSpec(0.0f, 200.0f, null, 5, null);
        }
        if ((i & 4) != 0) {
            j2 = Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        return m1657animatePanByumk_asQ(transformableState, j, animationSpec, j2, e02Var);
    }

    @ul2
    public static final Object animateRotateBy(TransformableState transformableState, float f, AnimationSpec animationSpec, e02 e02Var) {
        Object objM1659animateRotateByFgt4K4Q = m1659animateRotateByFgt4K4Q(transformableState, f, animationSpec, Offset.Companion.m6002getUnspecifiedF1C5BW0(), e02Var);
        return objM1659animateRotateByFgt4K4Q == a32.COROUTINE_SUSPENDED ? objM1659animateRotateByFgt4K4Q : j59.a;
    }

    public static /* synthetic */ Object animateRotateBy$default(TransformableState transformableState, float f, AnimationSpec animationSpec, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            animationSpec = new SpringSpec(0.0f, 200.0f, null, 5, null);
        }
        return animateRotateBy(transformableState, f, animationSpec, e02Var);
    }

    /* JADX INFO: renamed from: animateRotateBy-Fgt4K4Q, reason: not valid java name */
    public static final Object m1659animateRotateByFgt4K4Q(TransformableState transformableState, float f, AnimationSpec<Float> animationSpec, long j, e02<? super j59> e02Var) {
        Object objTransform$default = TransformableState.transform$default(transformableState, null, new AnonymousClass3(new o07(), f, animationSpec, j, null), e02Var, 1, null);
        return objTransform$default == a32.COROUTINE_SUSPENDED ? objTransform$default : j59.a;
    }

    /* JADX INFO: renamed from: animateRotateBy-Fgt4K4Q$default, reason: not valid java name */
    public static /* synthetic */ Object m1660animateRotateByFgt4K4Q$default(TransformableState transformableState, float f, AnimationSpec animationSpec, long j, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            animationSpec = new SpringSpec(0.0f, 200.0f, null, 5, null);
        }
        if ((i & 4) != 0) {
            j = Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        return m1659animateRotateByFgt4K4Q(transformableState, f, animationSpec, j, e02Var);
    }

    @ul2
    public static final Object animateZoomBy(TransformableState transformableState, float f, AnimationSpec animationSpec, e02 e02Var) {
        Object objM1661animateZoomByFgt4K4Q = m1661animateZoomByFgt4K4Q(transformableState, f, animationSpec, Offset.Companion.m6002getUnspecifiedF1C5BW0(), e02Var);
        return objM1661animateZoomByFgt4K4Q == a32.COROUTINE_SUSPENDED ? objM1661animateZoomByFgt4K4Q : j59.a;
    }

    public static /* synthetic */ Object animateZoomBy$default(TransformableState transformableState, float f, AnimationSpec animationSpec, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            animationSpec = new SpringSpec(0.0f, 200.0f, null, 5, null);
        }
        return animateZoomBy(transformableState, f, animationSpec, e02Var);
    }

    /* JADX INFO: renamed from: animateZoomBy-Fgt4K4Q, reason: not valid java name */
    public static final Object m1661animateZoomByFgt4K4Q(TransformableState transformableState, float f, AnimationSpec<Float> animationSpec, long j, e02<? super j59> e02Var) {
        if (!(f > 0.0f)) {
            InlineClassHelperKt.throwIllegalArgumentException("zoom value should be greater than 0");
        }
        o07 o07Var = new o07();
        o07Var.b = 1.0f;
        Object objTransform$default = TransformableState.transform$default(transformableState, null, new AnonymousClass4(o07Var, f, animationSpec, j, null), e02Var, 1, null);
        return objTransform$default == a32.COROUTINE_SUSPENDED ? objTransform$default : j59.a;
    }

    /* JADX INFO: renamed from: animateZoomBy-Fgt4K4Q$default, reason: not valid java name */
    public static /* synthetic */ Object m1662animateZoomByFgt4K4Q$default(TransformableState transformableState, float f, AnimationSpec animationSpec, long j, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            animationSpec = new SpringSpec(0.0f, 200.0f, null, 5, null);
        }
        if ((i & 4) != 0) {
            j = Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        return m1661animateZoomByFgt4K4Q(transformableState, f, animationSpec, j, e02Var);
    }

    /* JADX INFO: renamed from: panBy-DUneCvk, reason: not valid java name */
    public static final Object m1663panByDUneCvk(TransformableState transformableState, long j, long j2, e02<? super j59> e02Var) {
        Object objTransform$default = TransformableState.transform$default(transformableState, null, new TransformableStateKt$panBy$3(j2, j, null), e02Var, 1, null);
        return objTransform$default == a32.COROUTINE_SUSPENDED ? objTransform$default : j59.a;
    }

    /* JADX INFO: renamed from: panBy-DUneCvk$default, reason: not valid java name */
    public static /* synthetic */ Object m1664panByDUneCvk$default(TransformableState transformableState, long j, long j2, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            j2 = Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        return m1663panByDUneCvk(transformableState, j, j2, e02Var);
    }

    @ul2
    /* JADX INFO: renamed from: panBy-d-4ec7I, reason: not valid java name */
    public static final Object m1665panByd4ec7I(TransformableState transformableState, long j, e02 e02Var) {
        Object objM1663panByDUneCvk = m1663panByDUneCvk(transformableState, j, Offset.Companion.m6002getUnspecifiedF1C5BW0(), e02Var);
        return objM1663panByDUneCvk == a32.COROUTINE_SUSPENDED ? objM1663panByDUneCvk : j59.a;
    }

    @ul2
    public static final TransformableState rememberTransformableState(final dm3<? super Float, ? super Offset, ? super Float, j59> dm3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1681419281, i, -1, "androidx.compose.foundation.gestures.rememberTransformableState (TransformableState.kt:189)");
        }
        boolean z = (((i & 14) ^ 6) > 4 && composer.changed(dm3Var)) || (i & 6) == 4;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new fm3() { // from class: r19
                @Override // defpackage.fm3
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    float fFloatValue = ((Float) obj4).floatValue();
                    return TransformableStateKt.rememberTransformableState$lambda$0$0(dm3Var, (Offset) obj, ((Float) obj2).floatValue(), (Offset) obj3, fFloatValue);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        TransformableState transformableStateRememberTransformableState = rememberTransformableState((fm3<? super Offset, ? super Float, ? super Offset, ? super Float, j59>) objRememberedValue, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return transformableStateRememberTransformableState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 rememberTransformableState$lambda$0$0(dm3 dm3Var, Offset offset, float f, Offset offset2, float f2) {
        dm3Var.invoke(Float.valueOf(f), offset2, Float.valueOf(f2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 rememberTransformableState$lambda$1$0(State state, Offset offset, float f, Offset offset2, float f2) {
        ((fm3) state.getValue()).invoke(offset, Float.valueOf(f), offset2, Float.valueOf(f2));
        return j59.a;
    }

    @ul2
    public static final Object rotateBy(TransformableState transformableState, float f, e02 e02Var) {
        Object objM1666rotateByRg1IO4c = m1666rotateByRg1IO4c(transformableState, f, Offset.Companion.m6002getUnspecifiedF1C5BW0(), e02Var);
        return objM1666rotateByRg1IO4c == a32.COROUTINE_SUSPENDED ? objM1666rotateByRg1IO4c : j59.a;
    }

    /* JADX INFO: renamed from: rotateBy-Rg1IO4c, reason: not valid java name */
    public static final Object m1666rotateByRg1IO4c(TransformableState transformableState, float f, long j, e02<? super j59> e02Var) {
        Object objTransform$default = TransformableState.transform$default(transformableState, null, new C05123(j, f, null), e02Var, 1, null);
        return objTransform$default == a32.COROUTINE_SUSPENDED ? objTransform$default : j59.a;
    }

    /* JADX INFO: renamed from: rotateBy-Rg1IO4c$default, reason: not valid java name */
    public static /* synthetic */ Object m1667rotateByRg1IO4c$default(TransformableState transformableState, float f, long j, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            j = Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        return m1666rotateByRg1IO4c(transformableState, f, j, e02Var);
    }

    public static final Object stopTransformation(TransformableState transformableState, MutatePriority mutatePriority, e02<? super j59> e02Var) {
        Object objTransform = transformableState.transform(mutatePriority, new AnonymousClass2(null), e02Var);
        return objTransform == a32.COROUTINE_SUSPENDED ? objTransform : j59.a;
    }

    public static /* synthetic */ Object stopTransformation$default(TransformableState transformableState, MutatePriority mutatePriority, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return stopTransformation(transformableState, mutatePriority, e02Var);
    }

    @ul2
    public static final Object zoomBy(TransformableState transformableState, float f, e02 e02Var) {
        Object objM1668zoomByRg1IO4c = m1668zoomByRg1IO4c(transformableState, f, Offset.Companion.m6002getUnspecifiedF1C5BW0(), e02Var);
        return objM1668zoomByRg1IO4c == a32.COROUTINE_SUSPENDED ? objM1668zoomByRg1IO4c : j59.a;
    }

    /* JADX INFO: renamed from: zoomBy-Rg1IO4c, reason: not valid java name */
    public static final Object m1668zoomByRg1IO4c(TransformableState transformableState, float f, long j, e02<? super j59> e02Var) {
        Object objTransform$default = TransformableState.transform$default(transformableState, null, new C05133(j, f, null), e02Var, 1, null);
        return objTransform$default == a32.COROUTINE_SUSPENDED ? objTransform$default : j59.a;
    }

    /* JADX INFO: renamed from: zoomBy-Rg1IO4c$default, reason: not valid java name */
    public static /* synthetic */ Object m1669zoomByRg1IO4c$default(TransformableState transformableState, float f, long j, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            j = Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        return m1668zoomByRg1IO4c(transformableState, f, j, e02Var);
    }

    public static final TransformableState TransformableState(fm3<? super Offset, ? super Float, ? super Offset, ? super Float, j59> fm3Var) {
        return new DefaultTransformableState(fm3Var);
    }

    public static final TransformableState rememberTransformableState(fm3<? super Offset, ? super Float, ? super Offset, ? super Float, j59> fm3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-963411216, i, -1, "androidx.compose.foundation.gestures.rememberTransformableState (TransformableState.kt:210)");
        }
        final State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(fm3Var, composer, i & 14);
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = TransformableState((fm3<? super Offset, ? super Float, ? super Offset, ? super Float, j59>) new fm3() { // from class: q19
                @Override // defpackage.fm3
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    float fFloatValue = ((Float) obj4).floatValue();
                    return TransformableStateKt.rememberTransformableState$lambda$1$0(stateRememberUpdatedState, (Offset) obj, ((Float) obj2).floatValue(), (Offset) obj3, fFloatValue);
                }
            });
            composer.updateRememberedValue(objRememberedValue);
        }
        TransformableState transformableState = (TransformableState) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return transformableState;
    }
}
