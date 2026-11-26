package androidx.compose.material.ripple;

import androidx.compose.foundation.IndicationInstance;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.ez0;
import defpackage.ul2;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@ul2
public abstract class RippleIndicationInstance implements IndicationInstance {
    public static final int $stable = 8;
    private final boolean bounded;
    private final StateLayer stateLayer;

    public RippleIndicationInstance(boolean z, State<RippleAlpha> state) {
        this.bounded = z;
        this.stateLayer = new StateLayer(z, new ez0(state, 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RippleAlpha stateLayer$lambda$0(State state) {
        return (RippleAlpha) state.getValue();
    }

    public abstract void addRipple(PressInteraction.Press press, y22 y22Var);

    /* JADX INFO: renamed from: drawStateLayer-H2RKhps, reason: not valid java name */
    public final void m3059drawStateLayerH2RKhps(DrawScope drawScope, float f, long j) {
        this.stateLayer.m3067drawStateLayermxwnekA(drawScope, Float.isNaN(f) ? RippleAnimationKt.m3055getRippleEndRadiuscSwnlzA(drawScope, this.bounded, drawScope.mo6806getSizeNHjbRc()) : drawScope.mo1434toPx0680j_4(f), j);
    }

    public abstract void removeRipple(PressInteraction.Press press);

    public final void updateStateLayer$material_ripple(Interaction interaction, y22 y22Var) {
        this.stateLayer.handleInteraction$material_ripple(interaction, y22Var);
    }
}
