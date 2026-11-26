package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.o07;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$result$1", f = "SnapFlingBehavior.kt", l = {134, 150}, m = "invokeSuspend", v = 1)
public final class SnapFlingBehavior$fling$result$1 extends pg8 implements bm3<y22, e02<? super AnimationResult<Float, AnimationVector1D>>, Object> {
    final /* synthetic */ float $initialVelocity;
    final /* synthetic */ nl3<Float, j59> $onRemainingScrollOffsetUpdate;
    final /* synthetic */ ScrollScope $this_fling;
    Object L$0;
    int label;
    final /* synthetic */ SnapFlingBehavior this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SnapFlingBehavior$fling$result$1(SnapFlingBehavior snapFlingBehavior, float f, nl3<? super Float, j59> nl3Var, ScrollScope scrollScope, e02<? super SnapFlingBehavior$fling$result$1> e02Var) {
        super(2, e02Var);
        this.this$0 = snapFlingBehavior;
        this.$initialVelocity = f;
        this.$onRemainingScrollOffsetUpdate = nl3Var;
        this.$this_fling = scrollScope;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$1(o07 o07Var, nl3 nl3Var, float f) {
        float f2 = o07Var.b - f;
        o07Var.b = f2;
        nl3Var.invoke(Float.valueOf(f2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$4(o07 o07Var, nl3 nl3Var, float f) {
        float f2 = o07Var.b - f;
        o07Var.b = f2;
        nl3Var.invoke(Float.valueOf(f2));
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SnapFlingBehavior$fling$result$1(this.this$0, this.$initialVelocity, this.$onRemainingScrollOffsetUpdate, this.$this_fling, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super AnimationResult<Float, AnimationVector1D>> e02Var) {
        return ((SnapFlingBehavior$fling$result$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        final o07 o07Var;
        Object objTryApproach;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            float fCalculateApproachOffset = this.this$0.snapLayoutInfoProvider.calculateApproachOffset(this.$initialVelocity, DecayAnimationSpecKt.calculateTargetValue(this.this$0.decayAnimationSpec, 0.0f, this.$initialVelocity));
            if (Float.isNaN(fCalculateApproachOffset)) {
                InlineClassHelperKt.throwIllegalStateException("calculateApproachOffset returned NaN. Please use a valid value.");
            }
            o07Var = new o07();
            float fSignum = Math.signum(this.$initialVelocity) * Math.abs(fCalculateApproachOffset);
            o07Var.b = fSignum;
            this.$onRemainingScrollOffsetUpdate.invoke(new Float(fSignum));
            SnapFlingBehavior snapFlingBehavior = this.this$0;
            ScrollScope scrollScope = this.$this_fling;
            float f = o07Var.b;
            float f2 = this.$initialVelocity;
            final nl3<Float, j59> nl3Var = this.$onRemainingScrollOffsetUpdate;
            nl3 nl3Var2 = new nl3() { // from class: androidx.compose.foundation.gestures.snapping.a
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return SnapFlingBehavior$fling$result$1.invokeSuspend$lambda$1(o07Var, nl3Var, ((Float) obj2).floatValue());
                }
            };
            this.L$0 = o07Var;
            this.label = 1;
            objTryApproach = snapFlingBehavior.tryApproach(scrollScope, f, f2, nl3Var2, this);
            if (objTryApproach != a32Var) {
            }
        }
        if (i != 1) {
            if (i == 2) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        o07 o07Var2 = (o07) this.L$0;
        r57.b(obj);
        o07Var = o07Var2;
        objTryApproach = obj;
        AnimationState animationState = (AnimationState) objTryApproach;
        float fCalculateSnapOffset = this.this$0.snapLayoutInfoProvider.calculateSnapOffset(((Number) animationState.getVelocity()).floatValue());
        if (Float.isNaN(fCalculateSnapOffset)) {
            InlineClassHelperKt.throwIllegalStateException("calculateSnapOffset returned NaN. Please use a valid value.");
        }
        o07Var.b = fCalculateSnapOffset;
        ScrollScope scrollScope2 = this.$this_fling;
        AnimationState animationStateCopy$default = AnimationStateKt.copy$default(animationState, 0.0f, 0.0f, 0L, 0L, false, 30, (Object) null);
        AnimationSpec animationSpec = this.this$0.snapAnimationSpec;
        final nl3<Float, j59> nl3Var3 = this.$onRemainingScrollOffsetUpdate;
        nl3 nl3Var4 = new nl3() { // from class: androidx.compose.foundation.gestures.snapping.b
            @Override // defpackage.nl3
            public final Object invoke(Object obj2) {
                return SnapFlingBehavior$fling$result$1.invokeSuspend$lambda$4(o07Var, nl3Var3, ((Float) obj2).floatValue());
            }
        };
        this.L$0 = null;
        this.label = 2;
        Object objAnimateWithTarget = SnapFlingBehaviorKt.animateWithTarget(scrollScope2, fCalculateSnapOffset, fCalculateSnapOffset, animationStateCopy$default, animationSpec, nl3Var4, this);
        return objAnimateWithTarget == a32Var ? a32Var : objAnimateWithTarget;
    }
}
