package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.aa4;
import defpackage.av0;
import defpackage.ll3;
import defpackage.n1;
import defpackage.qn1;
import defpackage.y22;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class StateLayer {
    private final boolean bounded;
    private Interaction currentInteraction;
    private final ll3<RippleAlpha> rippleAlpha;
    private final Animatable<Float, AnimationVector1D> animatedAlpha = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
    private final List<Interaction> interactions = new ArrayList();

    public StateLayer(boolean z, ll3<RippleAlpha> ll3Var) {
        this.bounded = z;
        this.rippleAlpha = ll3Var;
    }

    /* JADX INFO: renamed from: drawStateLayer-mxwnekA, reason: not valid java name */
    public final void m3067drawStateLayermxwnekA(DrawScope drawScope, float f, long j) {
        float fFloatValue = this.animatedAlpha.getValue().floatValue();
        if (fFloatValue > 0.0f) {
            long jM6231copywmQWz5c$default = Color.m6231copywmQWz5c$default(j, fFloatValue, 0.0f, 0.0f, 0.0f, 14, null);
            if (!this.bounded) {
                DrawScope.m6787drawCircleVaOC9Bg$default(drawScope, jM6231copywmQWz5c$default, f, 0L, 0.0f, null, null, 0, 124, null);
                return;
            }
            float fM6056getWidthimpl = Size.m6056getWidthimpl(drawScope.mo6806getSizeNHjbRc());
            float fM6053getHeightimpl = Size.m6053getHeightimpl(drawScope.mo6806getSizeNHjbRc());
            int iM6221getIntersectrtfAjoo = ClipOp.Companion.m6221getIntersectrtfAjoo();
            DrawContext drawContext = drawScope.getDrawContext();
            long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                drawContext.getTransform().mo6730clipRectN_I0leg(0.0f, 0.0f, fM6056getWidthimpl, fM6053getHeightimpl, iM6221getIntersectrtfAjoo);
                DrawScope.m6787drawCircleVaOC9Bg$default(drawScope, jM6231copywmQWz5c$default, f, 0L, 0.0f, null, null, 0, 124, null);
            } finally {
                n1.a(drawContext, jMo6727getSizeNHjbRc);
            }
        }
    }

    public final void handleInteraction$material_ripple(Interaction interaction, y22 y22Var) {
        float draggedAlpha;
        if (interaction instanceof HoverInteraction.Enter) {
            this.interactions.add(interaction);
        } else if (interaction instanceof HoverInteraction.Exit) {
            this.interactions.remove(((HoverInteraction.Exit) interaction).getEnter());
        } else if (interaction instanceof FocusInteraction.Focus) {
            this.interactions.add(interaction);
        } else if (interaction instanceof FocusInteraction.Unfocus) {
            this.interactions.remove(((FocusInteraction.Unfocus) interaction).getFocus());
        } else if (interaction instanceof DragInteraction.Start) {
            this.interactions.add(interaction);
        } else if (interaction instanceof DragInteraction.Stop) {
            this.interactions.remove(((DragInteraction.Stop) interaction).getStart());
        } else if (!(interaction instanceof DragInteraction.Cancel)) {
            return;
        } else {
            this.interactions.remove(((DragInteraction.Cancel) interaction).getStart());
        }
        Interaction interaction2 = (Interaction) qn1.c0(this.interactions);
        if (aa4.e(this.currentInteraction, interaction2)) {
            return;
        }
        if (interaction2 != null) {
            RippleAlpha rippleAlphaInvoke = this.rippleAlpha.invoke();
            if (interaction2 instanceof HoverInteraction.Enter) {
                draggedAlpha = rippleAlphaInvoke.getHoveredAlpha();
            } else if (interaction2 instanceof FocusInteraction.Focus) {
                draggedAlpha = rippleAlphaInvoke.getFocusedAlpha();
            } else {
                draggedAlpha = interaction2 instanceof DragInteraction.Start ? rippleAlphaInvoke.getDraggedAlpha() : 0.0f;
            }
            av0.c(y22Var, null, null, new StateLayer$handleInteraction$1(this, draggedAlpha, RippleKt.incomingStateLayerAnimationSpecFor(interaction2), null), 3);
        } else {
            av0.c(y22Var, null, null, new StateLayer$handleInteraction$2(this, RippleKt.outgoingStateLayerAnimationSpecFor(this.currentInteraction), null), 3);
        }
        this.currentInteraction = interaction2;
    }
}
