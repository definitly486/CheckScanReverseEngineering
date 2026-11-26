package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.ui.unit.Dp;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.CardElevation$animateElevation$2$1", f = "Card.kt", l = {727, 737}, m = "invokeSuspend")
public final class CardElevation$animateElevation$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ Animatable<Dp, AnimationVector1D> $animatable;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ Interaction $interaction;
    final /* synthetic */ float $target;
    int label;
    final /* synthetic */ CardElevation this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardElevation$animateElevation$2$1(Animatable<Dp, AnimationVector1D> animatable, float f, boolean z, CardElevation cardElevation, Interaction interaction, e02<? super CardElevation$animateElevation$2$1> e02Var) {
        super(2, e02Var);
        this.$animatable = animatable;
        this.$target = f;
        this.$enabled = z;
        this.this$0 = cardElevation;
        this.$interaction = interaction;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CardElevation$animateElevation$2$1(this.$animatable, this.$target, this.$enabled, this.this$0, this.$interaction, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CardElevation$animateElevation$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
    
        if (r1.snapTo(r7, r6) == r0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00aa, code lost:
    
        if (androidx.compose.material3.internal.ElevationKt.m4376animateElevationrAjV9yQ(r7, r1, r3, r4, r6) == r0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ac, code lost:
    
        return r0;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r6.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L19
            if (r1 == r3) goto L14
            if (r1 != r2) goto Ld
            goto L14
        Ld:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            r6 = 0
            return r6
        L14:
            defpackage.r57.b(r7)
            goto Lad
        L19:
            defpackage.r57.b(r7)
            androidx.compose.animation.core.Animatable<androidx.compose.ui.unit.Dp, androidx.compose.animation.core.AnimationVector1D> r7 = r6.$animatable
            java.lang.Object r7 = r7.getTargetValue()
            androidx.compose.ui.unit.Dp r7 = (androidx.compose.ui.unit.Dp) r7
            float r7 = r7.m9056unboximpl()
            float r1 = r6.$target
            boolean r7 = androidx.compose.ui.unit.Dp.m9047equalsimpl0(r7, r1)
            if (r7 != 0) goto Lad
            boolean r7 = r6.$enabled
            androidx.compose.animation.core.Animatable<androidx.compose.ui.unit.Dp, androidx.compose.animation.core.AnimationVector1D> r1 = r6.$animatable
            if (r7 != 0) goto L45
            float r7 = r6.$target
            androidx.compose.ui.unit.Dp r7 = androidx.compose.ui.unit.Dp.m9040boximpl(r7)
            r6.label = r3
            java.lang.Object r6 = r1.snapTo(r7, r6)
            if (r6 != r0) goto Lad
            goto Lac
        L45:
            java.lang.Object r7 = r1.getTargetValue()
            androidx.compose.ui.unit.Dp r7 = (androidx.compose.ui.unit.Dp) r7
            float r7 = r7.m9056unboximpl()
            androidx.compose.material3.CardElevation r1 = r6.this$0
            float r1 = androidx.compose.material3.CardElevation.access$getPressedElevation$p(r1)
            boolean r1 = androidx.compose.ui.unit.Dp.m9047equalsimpl0(r7, r1)
            r3 = 0
            if (r1 == 0) goto L69
            androidx.compose.foundation.interaction.PressInteraction$Press r7 = new androidx.compose.foundation.interaction.PressInteraction$Press
            androidx.compose.ui.geometry.Offset$Companion r1 = androidx.compose.ui.geometry.Offset.Companion
            long r4 = r1.m6003getZeroF1C5BW0()
            r7.<init>(r4, r3)
            r3 = r7
            goto L9e
        L69:
            androidx.compose.material3.CardElevation r1 = r6.this$0
            float r1 = androidx.compose.material3.CardElevation.access$getHoveredElevation$p(r1)
            boolean r1 = androidx.compose.ui.unit.Dp.m9047equalsimpl0(r7, r1)
            if (r1 == 0) goto L7b
            androidx.compose.foundation.interaction.HoverInteraction$Enter r3 = new androidx.compose.foundation.interaction.HoverInteraction$Enter
            r3.<init>()
            goto L9e
        L7b:
            androidx.compose.material3.CardElevation r1 = r6.this$0
            float r1 = androidx.compose.material3.CardElevation.access$getFocusedElevation$p(r1)
            boolean r1 = androidx.compose.ui.unit.Dp.m9047equalsimpl0(r7, r1)
            if (r1 == 0) goto L8d
            androidx.compose.foundation.interaction.FocusInteraction$Focus r3 = new androidx.compose.foundation.interaction.FocusInteraction$Focus
            r3.<init>()
            goto L9e
        L8d:
            androidx.compose.material3.CardElevation r1 = r6.this$0
            float r1 = androidx.compose.material3.CardElevation.access$getDraggedElevation$p(r1)
            boolean r7 = androidx.compose.ui.unit.Dp.m9047equalsimpl0(r7, r1)
            if (r7 == 0) goto L9e
            androidx.compose.foundation.interaction.DragInteraction$Start r3 = new androidx.compose.foundation.interaction.DragInteraction$Start
            r3.<init>()
        L9e:
            androidx.compose.animation.core.Animatable<androidx.compose.ui.unit.Dp, androidx.compose.animation.core.AnimationVector1D> r7 = r6.$animatable
            float r1 = r6.$target
            androidx.compose.foundation.interaction.Interaction r4 = r6.$interaction
            r6.label = r2
            java.lang.Object r6 = androidx.compose.material3.internal.ElevationKt.m4376animateElevationrAjV9yQ(r7, r1, r3, r4, r6)
            if (r6 != r0) goto Lad
        Lac:
            return r0
        Lad:
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardElevation$animateElevation$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
