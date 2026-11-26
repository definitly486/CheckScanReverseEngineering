package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.ui.MotionDurationScale;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
public final class SnapFlingBehavior implements TargetedFlingBehavior {
    public static final int $stable = 0;
    private final DecayAnimationSpec<Float> decayAnimationSpec;
    private MotionDurationScale motionScaleDuration = ScrollableKt.getDefaultScrollMotionDurationScale();
    private final AnimationSpec<Float> snapAnimationSpec;
    private final SnapLayoutInfoProvider snapLayoutInfoProvider;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehavior", f = "SnapFlingBehavior.kt", l = {114}, m = "fling", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SnapFlingBehavior.this.fling(null, 0.0f, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$performFling$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehavior", f = "SnapFlingBehavior.kt", l = {100}, m = "performFling", v = 1)
    public static final class C05141 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C05141(e02<? super C05141> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SnapFlingBehavior.this.performFling(null, 0.0f, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$tryApproach$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehavior", f = "SnapFlingBehavior.kt", l = {WebmConstants.MkvEbmlElement.TRACK_ENTRY}, m = "tryApproach", v = 1)
    public static final class C05151 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C05151(e02<? super C05151> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SnapFlingBehavior.this.tryApproach(null, 0.0f, 0.0f, null, this);
        }
    }

    public SnapFlingBehavior(SnapLayoutInfoProvider snapLayoutInfoProvider, DecayAnimationSpec<Float> decayAnimationSpec, AnimationSpec<Float> animationSpec) {
        this.snapLayoutInfoProvider = snapLayoutInfoProvider;
        this.decayAnimationSpec = decayAnimationSpec;
        this.snapAnimationSpec = animationSpec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object fling(ScrollScope scrollScope, float f, nl3<? super Float, j59> nl3Var, e02<? super AnimationResult<Float, AnimationVector1D>> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        nl3<? super Float, j59> nl3Var2;
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
        Object objD = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objD);
            MotionDurationScale motionDurationScale = this.motionScaleDuration;
            SnapFlingBehavior$fling$result$1 snapFlingBehavior$fling$result$1 = new SnapFlingBehavior$fling$result$1(this, f, nl3Var, scrollScope, null);
            anonymousClass1.L$0 = nl3Var;
            anonymousClass1.label = 1;
            objD = av0.d(motionDurationScale, snapFlingBehavior$fling$result$1, anonymousClass1);
            if (objD == a32Var) {
                return a32Var;
            }
            nl3Var2 = nl3Var;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            nl3Var2 = (nl3) anonymousClass1.L$0;
            r57.b(objD);
        }
        AnimationResult animationResult = (AnimationResult) objD;
        nl3Var2.invoke(new Float(0.0f));
        return animationResult;
    }

    private final boolean isDecayApproachPossible(float f, float f2) {
        return Math.abs(DecayAnimationSpecKt.calculateTargetValue(this.decayAnimationSpec, 0.0f, f2)) >= Math.abs(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object runApproach(ScrollScope scrollScope, float f, float f2, nl3<? super Float, j59> nl3Var, e02<? super AnimationResult<Float, AnimationVector1D>> e02Var) {
        return SnapFlingBehaviorKt.approach(scrollScope, f, f2, isDecayApproachPossible(f, f2) ? new DecayApproachAnimation(this.decayAnimationSpec) : new TargetApproachAnimation(this.snapAnimationSpec), nl3Var, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    public final Object tryApproach(ScrollScope scrollScope, float f, float f2, nl3<? super Float, j59> nl3Var, e02<? super AnimationState<Float, AnimationVector1D>> e02Var) {
        C05151 c05151;
        SnapFlingBehavior snapFlingBehavior;
        if (e02Var instanceof C05151) {
            c05151 = (C05151) e02Var;
            int i = c05151.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05151.label = i - Integer.MIN_VALUE;
                snapFlingBehavior = this;
            } else {
                snapFlingBehavior = this;
                c05151 = snapFlingBehavior.new C05151(e02Var);
            }
        } else {
            snapFlingBehavior = this;
            c05151 = snapFlingBehavior.new C05151(e02Var);
        }
        C05151 c05152 = c05151;
        Object objRunApproach = c05152.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c05152.label;
        if (i2 == 0) {
            r57.b(objRunApproach);
            if (Math.abs(f) == 0.0f || Math.abs(f2) == 0.0f) {
                return AnimationStateKt.AnimationState$default(f, f2, 0L, 0L, false, 28, null);
            }
            c05152.label = 1;
            objRunApproach = snapFlingBehavior.runApproach(scrollScope, f, f2, nl3Var, c05152);
            if (objRunApproach == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objRunApproach);
        }
        return ((AnimationResult) objRunApproach).getCurrentAnimationState();
    }

    public boolean equals(Object obj) {
        if (obj instanceof SnapFlingBehavior) {
            SnapFlingBehavior snapFlingBehavior = (SnapFlingBehavior) obj;
            if (aa4.e(snapFlingBehavior.snapAnimationSpec, this.snapAnimationSpec) && aa4.e(snapFlingBehavior.decayAnimationSpec, this.decayAnimationSpec) && aa4.e(snapFlingBehavior.snapLayoutInfoProvider, this.snapLayoutInfoProvider)) {
                return true;
            }
        }
        return false;
    }

    public final MotionDurationScale getMotionScaleDuration$foundation() {
        return this.motionScaleDuration;
    }

    public int hashCode() {
        return this.snapLayoutInfoProvider.hashCode() + ((this.decayAnimationSpec.hashCode() + (this.snapAnimationSpec.hashCode() * 31)) * 31);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.TargetedFlingBehavior
    public Object performFling(ScrollScope scrollScope, float f, nl3<? super Float, j59> nl3Var, e02<? super Float> e02Var) throws Throwable {
        C05141 c05141;
        if (e02Var instanceof C05141) {
            c05141 = (C05141) e02Var;
            int i = c05141.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05141.label = i - Integer.MIN_VALUE;
            } else {
                c05141 = new C05141(e02Var);
            }
        } else {
            c05141 = new C05141(e02Var);
        }
        Object objFling = c05141.result;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i2 = c05141.label;
        if (i2 == 0) {
            r57.b(objFling);
            c05141.label = 1;
            objFling = fling(scrollScope, f, nl3Var, c05141);
            if (objFling == obj) {
                return obj;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objFling);
        }
        AnimationResult animationResult = (AnimationResult) objFling;
        return new Float(((Number) animationResult.component1()).floatValue() != 0.0f ? ((Number) animationResult.component2().getVelocity()).floatValue() : 0.0f);
    }

    public final void setMotionScaleDuration$foundation(MotionDurationScale motionDurationScale) {
        this.motionScaleDuration = motionDurationScale;
    }
}
