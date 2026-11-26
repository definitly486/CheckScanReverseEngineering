package androidx.compose.ui.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jn;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class OnVisibilityChangedElement extends ModifierNodeElement<OnVisibilityChangedNode> {
    private final nl3<Boolean, j59> callback;
    private final long minDurationMs;
    private final float minFractionVisible;
    private final LayoutBoundsHolder viewportBounds;

    /* JADX WARN: Multi-variable type inference failed */
    public OnVisibilityChangedElement(long j, float f, LayoutBoundsHolder layoutBoundsHolder, nl3<? super Boolean, j59> nl3Var) {
        this.minDurationMs = j;
        this.minFractionVisible = f;
        this.viewportBounds = layoutBoundsHolder;
        this.callback = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public OnVisibilityChangedNode create() {
        return new OnVisibilityChangedNode(this.minDurationMs, this.minFractionVisible, this.viewportBounds, this.callback);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && OnVisibilityChangedElement.class == obj.getClass()) {
            OnVisibilityChangedElement onVisibilityChangedElement = (OnVisibilityChangedElement) obj;
            return this.minDurationMs == onVisibilityChangedElement.minDurationMs && this.minFractionVisible == onVisibilityChangedElement.minFractionVisible && aa4.e(this.viewportBounds, onVisibilityChangedElement.viewportBounds) && this.callback == onVisibilityChangedElement.callback;
        }
        return false;
    }

    public final nl3<Boolean, j59> getCallback() {
        return this.callback;
    }

    public final long getMinDurationMs() {
        return this.minDurationMs;
    }

    public final float getMinFractionVisible() {
        return this.minFractionVisible;
    }

    public final LayoutBoundsHolder getViewportBounds() {
        return this.viewportBounds;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int iB = jn.b(this.minFractionVisible, Long.hashCode(this.minDurationMs) * 31, 31);
        LayoutBoundsHolder layoutBoundsHolder = this.viewportBounds;
        return this.callback.hashCode() + ((iB + (layoutBoundsHolder != null ? layoutBoundsHolder.hashCode() : 0)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("onViewportVisibilityChanged");
        inspectorInfo.getProperties().set("minDurationMs", Long.valueOf(this.minDurationMs));
        inspectorInfo.getProperties().set("minFractionVisible", Float.valueOf(this.minFractionVisible));
        inspectorInfo.getProperties().set("viewportRef", this.viewportBounds);
        inspectorInfo.getProperties().set("callback", this.callback);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(OnVisibilityChangedNode onVisibilityChangedNode) {
        onVisibilityChangedNode.setMinDurationMs(this.minDurationMs);
        onVisibilityChangedNode.setMinFractionVisible(this.minFractionVisible);
        onVisibilityChangedNode.setCallback(this.callback);
        onVisibilityChangedNode.setViewportBounds(this.viewportBounds);
        onVisibilityChangedNode.forceUpdate();
    }
}
