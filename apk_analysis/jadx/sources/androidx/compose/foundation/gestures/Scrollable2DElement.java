package androidx.compose.foundation.gestures;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.il1;
import defpackage.tg;

/* JADX INFO: loaded from: classes.dex */
final class Scrollable2DElement extends ModifierNodeElement<Scrollable2DNode> {
    private final boolean enabled;
    private final FlingBehavior flingBehavior;
    private final MutableInteractionSource interactionSource;
    private final OverscrollEffect overscrollEffect;
    private final Scrollable2DState state;

    public Scrollable2DElement(Scrollable2DState scrollable2DState, OverscrollEffect overscrollEffect, boolean z, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource) {
        this.state = scrollable2DState;
        this.overscrollEffect = overscrollEffect;
        this.enabled = z;
        this.flingBehavior = flingBehavior;
        this.interactionSource = mutableInteractionSource;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public Scrollable2DNode create() {
        return new Scrollable2DNode(this.state, this.overscrollEffect, this.flingBehavior, this.enabled, this.interactionSource);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scrollable2DElement)) {
            return false;
        }
        Scrollable2DElement scrollable2DElement = (Scrollable2DElement) obj;
        return aa4.e(this.state, scrollable2DElement.state) && aa4.e(this.overscrollEffect, scrollable2DElement.overscrollEffect) && this.enabled == scrollable2DElement.enabled && aa4.e(this.flingBehavior, scrollable2DElement.flingBehavior) && aa4.e(this.interactionSource, scrollable2DElement.interactionSource);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final FlingBehavior getFlingBehavior() {
        return this.flingBehavior;
    }

    public final MutableInteractionSource getInteractionSource() {
        return this.interactionSource;
    }

    public final OverscrollEffect getOverscrollEffect() {
        return this.overscrollEffect;
    }

    public final Scrollable2DState getState() {
        return this.state;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int iHashCode = this.state.hashCode() * 31;
        OverscrollEffect overscrollEffect = this.overscrollEffect;
        int iC = tg.c((iHashCode + (overscrollEffect != null ? overscrollEffect.hashCode() : 0)) * 31, 31, this.enabled);
        FlingBehavior flingBehavior = this.flingBehavior;
        int iHashCode2 = (iC + (flingBehavior != null ? flingBehavior.hashCode() : 0)) * 31;
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        return iHashCode2 + (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("scrollable2D");
        inspectorInfo.getProperties().set(RemoteConfigConstants.ResponseFieldKey.STATE, this.state);
        inspectorInfo.getProperties().set("overscrollEffect", this.overscrollEffect);
        il1.c(this.enabled, inspectorInfo.getProperties(), TJAdUnitConstants.String.ENABLED, inspectorInfo).set("flingBehavior", this.flingBehavior);
        inspectorInfo.getProperties().set("interactionSource", this.interactionSource);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(Scrollable2DNode scrollable2DNode) {
        scrollable2DNode.update(this.state, this.overscrollEffect, this.enabled, this.flingBehavior, this.interactionSource);
    }
}
