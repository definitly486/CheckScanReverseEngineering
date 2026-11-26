package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes.dex */
final class VeilModifierNode extends Modifier.Node implements DrawModifierNode {
    private EnterTransition enter;
    private ExitTransition exit;
    private Transition<EnterExitState> transition;
    private Transition<EnterExitState>.DeferredAnimation<Color, AnimationVector4D> veilAnimation;

    public VeilModifierNode(Transition<EnterExitState> transition, Transition<EnterExitState>.DeferredAnimation<Color, AnimationVector4D> deferredAnimation, EnterTransition enterTransition, ExitTransition exitTransition) {
        this.transition = transition;
        this.veilAnimation = deferredAnimation;
        this.enter = enterTransition;
        this.exit = exitTransition;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        long jM6065getZeroNHjbRc;
        contentDrawScope.drawContent();
        State<Color> stateAnimate = this.veilAnimation.animate(new VeilModifierNode$draw$veilColor$1(this), new VeilModifierNode$draw$veilColor$2(this));
        if (Color.m6234getAlphaimpl(stateAnimate.getValue().m6242unboximpl()) == 0.0f) {
            return;
        }
        Veil veil = this.enter.getData$animation().getVeil();
        if (veil == null) {
            veil = this.exit.getData$animation().getVeil();
        }
        if (veil == null || !veil.getMatchParentSize()) {
            DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, stateAnimate.getValue().m6242unboximpl(), 0L, 0L, 0.0f, null, null, 0, 126, null);
            return;
        }
        LayoutCoordinates layoutCoordinatesRequireLayoutCoordinates = DelegatableNodeKt.requireLayoutCoordinates(this);
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinatesRequireLayoutCoordinates.getParentLayoutCoordinates();
        if (parentLayoutCoordinates != null) {
            long jMo7710getSizeYbymL2g = parentLayoutCoordinates.mo7710getSizeYbymL2g();
            float f = (int) (jMo7710getSizeYbymL2g >> 32);
            jM6065getZeroNHjbRc = Size.m6047constructorimpl((((long) Float.floatToRawIntBits((int) (jMo7710getSizeYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32));
        } else {
            jM6065getZeroNHjbRc = Size.Companion.m6065getZeroNHjbRc();
        }
        DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, stateAnimate.getValue().m6242unboximpl(), Offset.m5979constructorimpl((-9223372034707292160L) ^ LayoutCoordinatesKt.positionInParent(layoutCoordinatesRequireLayoutCoordinates)), jM6065getZeroNHjbRc, 0.0f, null, null, 0, 120, null);
    }

    public final EnterTransition getEnter() {
        return this.enter;
    }

    public final ExitTransition getExit() {
        return this.exit;
    }

    public final Transition<EnterExitState> getTransition() {
        return this.transition;
    }

    public final Transition<EnterExitState>.DeferredAnimation<Color, AnimationVector4D> getVeilAnimation() {
        return this.veilAnimation;
    }

    public final void setEnter(EnterTransition enterTransition) {
        this.enter = enterTransition;
    }

    public final void setExit(ExitTransition exitTransition) {
        this.exit = exitTransition;
    }

    public final void setTransition(Transition<EnterExitState> transition) {
        this.transition = transition;
    }

    public final void setVeilAnimation(Transition<EnterExitState>.DeferredAnimation<Color, AnimationVector4D> deferredAnimation) {
        this.veilAnimation = deferredAnimation;
    }
}
