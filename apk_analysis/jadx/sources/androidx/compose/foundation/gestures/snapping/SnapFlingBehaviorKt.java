package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.nm1;
import defpackage.o07;
import defpackage.r57;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class SnapFlingBehaviorKt {
    private static final boolean DEBUG = false;
    private static final float MinFlingVelocityDp = Dp.m9042constructorimpl(400.0f);
    public static final float NoDistance = 0.0f;
    public static final float NoVelocity = 0.0f;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateDecay$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt", f = "SnapFlingBehavior.kt", l = {308}, m = "animateDecay", v = 1)
    public static final class AnonymousClass1 extends f02 {
        float F$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SnapFlingBehaviorKt.animateDecay(null, 0.0f, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateWithTarget$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt", f = "SnapFlingBehavior.kt", l = {349}, m = "animateWithTarget", v = 1)
    public static final class C05161 extends f02 {
        float F$0;
        float F$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C05161(e02<? super C05161> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SnapFlingBehaviorKt.animateWithTarget(null, 0.0f, 0.0f, null, null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object animateDecay(final ScrollScope scrollScope, final float f, AnimationState<Float, AnimationVector1D> animationState, DecayAnimationSpec<Float> decayAnimationSpec, final nl3<? super Float, j59> nl3Var, e02<? super AnimationResult<Float, AnimationVector1D>> e02Var) {
        AnonymousClass1 anonymousClass1;
        o07 o07Var;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            final o07 o07Var2 = new o07();
            boolean z = animationState.getVelocity().floatValue() == 0.0f;
            nl3 nl3Var2 = new nl3() { // from class: d48
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return SnapFlingBehaviorKt.animateDecay$lambda$0(f, o07Var2, scrollScope, nl3Var, (AnimationScope) obj2);
                }
            };
            anonymousClass1.L$0 = animationState;
            anonymousClass1.L$1 = o07Var2;
            anonymousClass1.F$0 = f;
            anonymousClass1.label = 1;
            if (SuspendAnimationKt.animateDecay(animationState, decayAnimationSpec, !z, nl3Var2, anonymousClass1) == a32Var) {
                return a32Var;
            }
            o07Var = o07Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            f = anonymousClass1.F$0;
            o07Var = (o07) anonymousClass1.L$1;
            animationState = (AnimationState) anonymousClass1.L$0;
            r57.b(obj);
        }
        return new AnimationResult(new Float(f - o07Var.b), animationState);
    }

    private static final void animateDecay$consumeDelta(AnimationScope<Float, AnimationVector1D> animationScope, ScrollScope scrollScope, nl3<? super Float, j59> nl3Var, float f) {
        float fScrollBy;
        try {
            fScrollBy = scrollScope.scrollBy(f);
        } catch (CancellationException unused) {
            animationScope.cancelAnimation();
            fScrollBy = 0.0f;
        }
        nl3Var.invoke(Float.valueOf(fScrollBy));
        if (Math.abs(f - fScrollBy) > 0.5f) {
            animationScope.cancelAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animateDecay$lambda$0(float f, o07 o07Var, ScrollScope scrollScope, nl3 nl3Var, AnimationScope animationScope) {
        if (Math.abs(((Number) animationScope.getValue()).floatValue()) >= Math.abs(f)) {
            float fCoerceToTarget = coerceToTarget(((Number) animationScope.getValue()).floatValue(), f);
            animateDecay$consumeDelta(animationScope, scrollScope, nl3Var, fCoerceToTarget - o07Var.b);
            animationScope.cancelAnimation();
            o07Var.b = fCoerceToTarget;
        } else {
            animateDecay$consumeDelta(animationScope, scrollScope, nl3Var, ((Number) animationScope.getValue()).floatValue() - o07Var.b);
            o07Var.b = ((Number) animationScope.getValue()).floatValue();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    public static final Object animateWithTarget(final ScrollScope scrollScope, float f, final float f2, AnimationState<Float, AnimationVector1D> animationState, AnimationSpec<Float> animationSpec, final nl3<? super Float, j59> nl3Var, e02<? super AnimationResult<Float, AnimationVector1D>> e02Var) {
        C05161 c05161;
        o07 o07Var;
        float f3;
        AnimationState<Float, AnimationVector1D> animationState2;
        if (e02Var instanceof C05161) {
            c05161 = (C05161) e02Var;
            int i = c05161.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05161.label = i - Integer.MIN_VALUE;
            } else {
                c05161 = new C05161(e02Var);
            }
        } else {
            c05161 = new C05161(e02Var);
        }
        C05161 c05162 = c05161;
        Object obj = c05162.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c05162.label;
        if (i2 == 0) {
            r57.b(obj);
            final o07 o07Var2 = new o07();
            float fFloatValue = animationState.getVelocity().floatValue();
            Float f4 = new Float(f);
            boolean z = animationState.getVelocity().floatValue() == 0.0f;
            nl3 nl3Var2 = new nl3() { // from class: e48
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return SnapFlingBehaviorKt.animateWithTarget$lambda$0(f2, o07Var2, scrollScope, nl3Var, (AnimationScope) obj2);
                }
            };
            c05162.L$0 = animationState;
            c05162.L$1 = o07Var2;
            c05162.F$0 = f;
            c05162.F$1 = fFloatValue;
            c05162.label = 1;
            if (SuspendAnimationKt.animateTo(animationState, f4, animationSpec, !z, nl3Var2, c05162) == a32Var) {
                return a32Var;
            }
            o07Var = o07Var2;
            f3 = fFloatValue;
            animationState2 = animationState;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            f3 = c05162.F$1;
            f = c05162.F$0;
            o07Var = (o07) c05162.L$1;
            AnimationState<Float, AnimationVector1D> animationState3 = (AnimationState) c05162.L$0;
            r57.b(obj);
            animationState2 = animationState3;
        }
        return new AnimationResult(new Float(f - o07Var.b), AnimationStateKt.copy$default((AnimationState) animationState2, 0.0f, coerceToTarget(animationState2.getVelocity().floatValue(), f3), 0L, 0L, false, 29, (Object) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animateWithTarget$lambda$0(float f, o07 o07Var, ScrollScope scrollScope, nl3 nl3Var, AnimationScope animationScope) {
        float fScrollBy;
        float fCoerceToTarget = coerceToTarget(((Number) animationScope.getValue()).floatValue(), f);
        float f2 = fCoerceToTarget - o07Var.b;
        try {
            fScrollBy = scrollScope.scrollBy(f2);
        } catch (CancellationException unused) {
            animationScope.cancelAnimation();
            fScrollBy = 0.0f;
        }
        nl3Var.invoke(Float.valueOf(fScrollBy));
        if (Math.abs(f2 - fScrollBy) > 0.5f || fCoerceToTarget != ((Number) animationScope.getValue()).floatValue()) {
            animationScope.cancelAnimation();
        }
        o07Var.b += fScrollBy;
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object approach(ScrollScope scrollScope, float f, float f2, ApproachAnimation<Float, AnimationVector1D> approachAnimation, nl3<? super Float, j59> nl3Var, e02<? super AnimationResult<Float, AnimationVector1D>> e02Var) {
        return approachAnimation.approachAnimation(scrollScope, new Float(f), new Float(f2), nl3Var, e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0024  */
    /* JADX INFO: renamed from: calculateFinalOffset-Fhqu1e0, reason: not valid java name */
    public static final float m1680calculateFinalOffsetFhqu1e0(int i, float f, float f2) {
        FinalSnappingItem.Companion companion = FinalSnappingItem.Companion;
        if (FinalSnappingItem.m1673equalsimpl0(i, companion.m1677getClosestItembbeMdSM())) {
            if (Math.abs(f2) <= Math.abs(f)) {
                f = f2;
            }
        } else if (FinalSnappingItem.m1673equalsimpl0(i, companion.m1678getNextItembbeMdSM())) {
            f = f2;
        } else if (!FinalSnappingItem.m1673equalsimpl0(i, companion.m1679getPreviousItembbeMdSM())) {
            f = 0.0f;
        }
        if (calculateFinalOffset_Fhqu1e0$isValidDistance(f)) {
            return f;
        }
        return 0.0f;
    }

    private static final boolean calculateFinalOffset_Fhqu1e0$isValidDistance(float f) {
        return (f == Float.POSITIVE_INFINITY || f == Float.NEGATIVE_INFINITY) ? false : true;
    }

    private static final float coerceToTarget(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        return (f2 <= 0.0f ? f >= f2 : f <= f2) ? f : f2;
    }

    private static final <T extends Comparable<? super T>> T component1(nm1<T> nm1Var) {
        return nm1Var.getStart();
    }

    private static final <T extends Comparable<? super T>> T component2(nm1<T> nm1Var) {
        return nm1Var.getEndInclusive();
    }

    private static final void debugLog(ll3<String> ll3Var) {
    }

    public static final float getMinFlingVelocityDp() {
        return MinFlingVelocityDp;
    }

    public static final TargetedFlingBehavior rememberSnapFlingBehavior(SnapLayoutInfoProvider snapLayoutInfoProvider, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1921733134, i, -1, "androidx.compose.foundation.gestures.snapping.rememberSnapFlingBehavior (SnapFlingBehavior.kt:230)");
        }
        Object obj = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        DecayAnimationSpec decayAnimationSpecRememberSplineBasedDecay = SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay(composer, 0);
        boolean zChanged = composer.changed(decayAnimationSpecRememberSplineBasedDecay) | ((((i & 14) ^ 6) > 4 && composer.changed(snapLayoutInfoProvider)) || (i & 6) == 4) | composer.changed(obj);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = snapFlingBehavior(snapLayoutInfoProvider, decayAnimationSpecRememberSplineBasedDecay, AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null));
            composer.updateRememberedValue(objRememberedValue);
        }
        TargetedFlingBehavior targetedFlingBehavior = (TargetedFlingBehavior) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return targetedFlingBehavior;
    }

    public static final TargetedFlingBehavior snapFlingBehavior(SnapLayoutInfoProvider snapLayoutInfoProvider, DecayAnimationSpec<Float> decayAnimationSpec, AnimationSpec<Float> animationSpec) {
        return new SnapFlingBehavior(snapLayoutInfoProvider, decayAnimationSpec, animationSpec);
    }
}
