package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.geometry.Offset;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.q07;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.TransformableStateKt$animatePanBy$3", f = "TransformableState.kt", l = {324}, m = "invokeSuspend", v = 1)
public final class TransformableStateKt$animatePanBy$3 extends pg8 implements bm3<TransformScope, e02<? super j59>, Object> {
    final /* synthetic */ AnimationSpec<Offset> $animationSpec;
    final /* synthetic */ long $centroid;
    final /* synthetic */ long $offset;
    final /* synthetic */ q07 $previous;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransformableStateKt$animatePanBy$3(q07 q07Var, long j, AnimationSpec<Offset> animationSpec, long j2, e02<? super TransformableStateKt$animatePanBy$3> e02Var) {
        super(2, e02Var);
        this.$previous = q07Var;
        this.$offset = j;
        this.$animationSpec = animationSpec;
        this.$centroid = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(q07 q07Var, TransformScope transformScope, long j, AnimationScope animationScope) {
        TransformScope.m1647transformByWithCentroidIEwrmTk$default(transformScope, j, 0.0f, Offset.m5991minusMKHz9U(((Offset) animationScope.getValue()).m5997unboximpl(), q07Var.b), 0.0f, 10, null);
        q07Var.b = ((Offset) animationScope.getValue()).m5997unboximpl();
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        TransformableStateKt$animatePanBy$3 transformableStateKt$animatePanBy$3 = new TransformableStateKt$animatePanBy$3(this.$previous, this.$offset, this.$animationSpec, this.$centroid, e02Var);
        transformableStateKt$animatePanBy$3.L$0 = obj;
        return transformableStateKt$animatePanBy$3;
    }

    @Override // defpackage.bm3
    public final Object invoke(TransformScope transformScope, e02<? super j59> e02Var) {
        return ((TransformableStateKt$animatePanBy$3) create(transformScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final TransformScope transformScope = (TransformScope) this.L$0;
            AnimationState animationState = new AnimationState(VectorConvertersKt.getVectorConverter(Offset.Companion), Offset.m5976boximpl(this.$previous.b), null, 0L, 0L, false, 60, null);
            Offset offsetM5976boximpl = Offset.m5976boximpl(this.$offset);
            AnimationSpec<Offset> animationSpec = this.$animationSpec;
            final q07 q07Var = this.$previous;
            final long j = this.$centroid;
            nl3 nl3Var = new nl3() { // from class: androidx.compose.foundation.gestures.f0
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return TransformableStateKt$animatePanBy$3.invokeSuspend$lambda$0(q07Var, transformScope, j, (AnimationScope) obj2);
                }
            };
            this.label = 1;
            if (SuspendAnimationKt.animateTo$default(animationState, offsetM5976boximpl, animationSpec, false, nl3Var, this, 4, null) == a32Var) {
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
