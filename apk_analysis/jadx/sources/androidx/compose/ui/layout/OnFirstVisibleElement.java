package androidx.compose.ui.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jn;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
final class OnFirstVisibleElement extends ModifierNodeElement<OnFirstVisibleNode> {
    private final ll3<j59> callback;
    private final long minDurationMs;
    private final float minFractionVisible;
    private final LayoutBoundsHolder viewportBounds;

    public OnFirstVisibleElement(long j, float f, LayoutBoundsHolder layoutBoundsHolder, ll3<j59> ll3Var) {
        this.minDurationMs = j;
        this.minFractionVisible = f;
        this.viewportBounds = layoutBoundsHolder;
        this.callback = ll3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public OnFirstVisibleNode create() {
        return new OnFirstVisibleNode(this.minDurationMs, this.minFractionVisible, this.viewportBounds, this.callback);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && OnFirstVisibleElement.class == obj.getClass()) {
            OnFirstVisibleElement onFirstVisibleElement = (OnFirstVisibleElement) obj;
            return this.minDurationMs == onFirstVisibleElement.minDurationMs && this.minFractionVisible == onFirstVisibleElement.minFractionVisible && aa4.e(this.viewportBounds, onFirstVisibleElement.viewportBounds) && this.callback == onFirstVisibleElement.callback;
        }
        return false;
    }

    public final ll3<j59> getCallback() {
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
        inspectorInfo.setName("onFirstVisible");
        inspectorInfo.getProperties().set("minDurationMs", Long.valueOf(this.minDurationMs));
        inspectorInfo.getProperties().set("minFractionVisible", Float.valueOf(this.minFractionVisible));
        inspectorInfo.getProperties().set("viewportBounds", this.viewportBounds);
        inspectorInfo.getProperties().set("callback", this.callback);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(OnFirstVisibleNode onFirstVisibleNode) {
        onFirstVisibleNode.setMinDurationMs(this.minDurationMs);
        onFirstVisibleNode.setMinFractionVisible(this.minFractionVisible);
        onFirstVisibleNode.setCallback(this.callback);
        onFirstVisibleNode.setViewportBounds(this.viewportBounds);
        onFirstVisibleNode.forceUpdate();
    }
}
