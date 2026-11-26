package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.material3.tokens.SwitchTokens;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.p07;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
final class ThumbNode extends Modifier.Node implements LayoutModifierNode {
    private FiniteAnimationSpec<Float> animationSpec;
    private boolean checked;
    private float initialOffset = Float.NaN;
    private float initialSize = Float.NaN;
    private InteractionSource interactionSource;
    private boolean isPressed;
    private Animatable<Float, AnimationVector1D> offsetAnim;
    private Animatable<Float, AnimationVector1D> sizeAnim;

    /* JADX INFO: renamed from: androidx.compose.material3.ThumbNode$onAttach$1, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.ThumbNode$onAttach$1", f = "Switch.kt", l = {227}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return ThumbNode.this.new AnonymousClass1(e02Var);
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
                final p07 p07Var = new p07();
                hd3<Interaction> interactions = ThumbNode.this.getInteractionSource().getInteractions();
                final ThumbNode thumbNode = ThumbNode.this;
                id3<? super Interaction> id3Var = new id3() { // from class: androidx.compose.material3.ThumbNode.onAttach.1.1
                    public final Object emit(Interaction interaction, e02<? super j59> e02Var) {
                        if (interaction instanceof PressInteraction.Press) {
                            p07Var.b++;
                        } else if (interaction instanceof PressInteraction.Release) {
                            p07Var.b--;
                        } else if (interaction instanceof PressInteraction.Cancel) {
                            p07Var.b--;
                        }
                        boolean z = p07Var.b > 0;
                        if (thumbNode.isPressed != z) {
                            thumbNode.isPressed = z;
                            LayoutModifierNodeKt.invalidateMeasurement(thumbNode);
                        }
                        return j59.a;
                    }

                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return emit((Interaction) obj2, (e02<? super j59>) e02Var);
                    }
                };
                this.label = 1;
                if (interactions.collect(id3Var, this) == a32Var) {
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

    public ThumbNode(InteractionSource interactionSource, boolean z, FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.interactionSource = interactionSource;
        this.checked = z;
        this.animationSpec = finiteAnimationSpec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, ThumbNode thumbNode, float f, Placeable.PlacementScope placementScope) {
        Animatable<Float, AnimationVector1D> animatable = thumbNode.offsetAnim;
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, animatable != null ? (int) animatable.getValue().floatValue() : (int) f, 0, 0.0f, 4, null);
        return j59.a;
    }

    public final FiniteAnimationSpec<Float> getAnimationSpec() {
        return this.animationSpec;
    }

    public final boolean getChecked() {
        return this.checked;
    }

    public final InteractionSource getInteractionSource() {
        return this.interactionSource;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        float thumbDiameter;
        boolean z = (measurable.maxIntrinsicHeight(Constraints.m8995getMaxWidthimpl(j)) == 0 || measurable.maxIntrinsicWidth(Constraints.m8994getMaxHeightimpl(j)) == 0) ? false : true;
        if (this.isPressed) {
            thumbDiameter = SwitchTokens.INSTANCE.m5167getPressedHandleWidthD9Ej5fM();
        } else {
            thumbDiameter = (z || this.checked) ? SwitchKt.getThumbDiameter() : SwitchKt.getUncheckedThumbDiameter();
        }
        float fMo1434toPx0680j_4 = measureScope.mo1434toPx0680j_4(thumbDiameter);
        Animatable<Float, AnimationVector1D> animatable = this.sizeAnim;
        int iFloatValue = (int) (animatable != null ? animatable.getValue().floatValue() : fMo1434toPx0680j_4);
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(iFloatValue, iFloatValue));
        final float fMo1434toPx0680j_5 = measureScope.mo1434toPx0680j_4(Dp.m9042constructorimpl(Dp.m9042constructorimpl(SwitchKt.SwitchHeight - measureScope.mo1430toDpu2uoSUM(fMo1434toPx0680j_4)) / 2.0f));
        float fMo1434toPx0680j_6 = measureScope.mo1434toPx0680j_4(Dp.m9042constructorimpl(Dp.m9042constructorimpl(SwitchKt.SwitchWidth - SwitchKt.getThumbDiameter()) - SwitchKt.ThumbPadding));
        boolean z2 = this.isPressed;
        if (z2 && this.checked) {
            fMo1434toPx0680j_5 = fMo1434toPx0680j_6 - measureScope.mo1434toPx0680j_4(SwitchTokens.INSTANCE.m5173getTrackOutlineWidthD9Ej5fM());
        } else if (z2 && !this.checked) {
            fMo1434toPx0680j_5 = measureScope.mo1434toPx0680j_4(SwitchTokens.INSTANCE.m5173getTrackOutlineWidthD9Ej5fM());
        } else if (this.checked) {
            fMo1434toPx0680j_5 = fMo1434toPx0680j_6;
        }
        Animatable<Float, AnimationVector1D> animatable2 = this.sizeAnim;
        if (!aa4.c(animatable2 != null ? animatable2.getTargetValue() : null, fMo1434toPx0680j_4)) {
            av0.c(getCoroutineScope(), null, null, new ThumbNode$measure$1(this, fMo1434toPx0680j_4, null), 3);
        }
        Animatable<Float, AnimationVector1D> animatable3 = this.offsetAnim;
        if (!aa4.c(animatable3 != null ? animatable3.getTargetValue() : null, fMo1434toPx0680j_5)) {
            av0.c(getCoroutineScope(), null, null, new ThumbNode$measure$2(this, fMo1434toPx0680j_5, null), 3);
        }
        if (Float.isNaN(this.initialSize) && Float.isNaN(this.initialOffset)) {
            this.initialSize = fMo1434toPx0680j_4;
            this.initialOffset = fMo1434toPx0680j_5;
        }
        return MeasureScope.layout$default(measureScope, iFloatValue, iFloatValue, null, new nl3() { // from class: androidx.compose.material3.u4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ThumbNode.measure_3p2s80s$lambda$0(placeableMo7702measureBRTryo0, this, fMo1434toPx0680j_5, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        av0.c(getCoroutineScope(), null, null, new AnonymousClass1(null), 3);
    }

    public final void setAnimationSpec(FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.animationSpec = finiteAnimationSpec;
    }

    public final void setChecked(boolean z) {
        this.checked = z;
    }

    public final void setInteractionSource(InteractionSource interactionSource) {
        this.interactionSource = interactionSource;
    }

    public final void update() {
        if (this.sizeAnim == null && !Float.isNaN(this.initialSize)) {
            this.sizeAnim = AnimatableKt.Animatable$default(this.initialSize, 0.0f, 2, null);
        }
        if (this.offsetAnim != null || Float.isNaN(this.initialOffset)) {
            return;
        }
        this.offsetAnim = AnimatableKt.Animatable$default(this.initialOffset, 0.0f, 2, null);
    }
}
