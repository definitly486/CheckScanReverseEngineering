package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.ui.geometry.Offset;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.TransformableStateKt$animateBy$4", f = "TransformableState.kt", l = {413}, m = "invokeSuspend", v = 1)
public final class TransformableStateKt$animateBy$4 extends pg8 implements bm3<TransformScope, e02<? super j59>, Object> {
    final /* synthetic */ DelegatingAnimationSpec $animationSpec;
    final /* synthetic */ long $centroid;
    final /* synthetic */ r07<AnimationData> $previousState;
    final /* synthetic */ AnimationData $targetState;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransformableStateKt$animateBy$4(r07<AnimationData> r07Var, AnimationData animationData, DelegatingAnimationSpec delegatingAnimationSpec, long j, e02<? super TransformableStateKt$animateBy$4> e02Var) {
        super(2, e02Var);
        this.$previousState = r07Var;
        this.$targetState = animationData;
        this.$animationSpec = delegatingAnimationSpec;
        this.$centroid = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1, types: [T, java.lang.Object] */
    public static final j59 invokeSuspend$lambda$0(r07 r07Var, TransformScope transformScope, long j, AnimationScope animationScope) {
        transformScope.mo1477transformByWithCentroidIEwrmTk(j, ((AnimationData) r07Var.b).getZoom() == 0.0f ? 1.0f : ((AnimationData) animationScope.getValue()).getZoom() / ((AnimationData) r07Var.b).getZoom(), Offset.m5991minusMKHz9U(((AnimationData) animationScope.getValue()).m1458getOffsetF1C5BW0(), ((AnimationData) r07Var.b).m1458getOffsetF1C5BW0()), ((AnimationData) animationScope.getValue()).getDegrees() - ((AnimationData) r07Var.b).getDegrees());
        r07Var.b = animationScope.getValue();
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        TransformableStateKt$animateBy$4 transformableStateKt$animateBy$4 = new TransformableStateKt$animateBy$4(this.$previousState, this.$targetState, this.$animationSpec, this.$centroid, e02Var);
        transformableStateKt$animateBy$4.L$0 = obj;
        return transformableStateKt$animateBy$4;
    }

    @Override // defpackage.bm3
    public final Object invoke(TransformScope transformScope, e02<? super j59> e02Var) {
        return ((TransformableStateKt$animateBy$4) create(transformScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final TransformScope transformScope = (TransformScope) this.L$0;
            AnimationState animationStateAnimationState$default = AnimationStateKt.AnimationState$default(AnimationDataConverter.INSTANCE, this.$previousState.b, TransformableStateKt.ZeroAnimationVelocity, 0L, 0L, false, 56, null);
            AnimationData animationData = this.$targetState;
            DelegatingAnimationSpec delegatingAnimationSpec = this.$animationSpec;
            final r07<AnimationData> r07Var = this.$previousState;
            final long j = this.$centroid;
            nl3 nl3Var = new nl3() { // from class: androidx.compose.foundation.gestures.e0
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return TransformableStateKt$animateBy$4.invokeSuspend$lambda$0(r07Var, transformScope, j, (AnimationScope) obj2);
                }
            };
            this.label = 1;
            if (SuspendAnimationKt.animateTo$default(animationStateAnimationState$default, animationData, delegatingAnimationSpec, false, nl3Var, this, 4, null) == a32Var) {
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
