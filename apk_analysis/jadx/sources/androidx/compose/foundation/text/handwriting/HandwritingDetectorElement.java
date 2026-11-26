package androidx.compose.foundation.text.handwriting;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
final class HandwritingDetectorElement extends ModifierNodeElement<HandwritingDetectorNode> {
    private final ll3<j59> callback;

    public HandwritingDetectorElement(ll3<j59> ll3Var) {
        this.callback = ll3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public HandwritingDetectorNode create() {
        return new HandwritingDetectorNode(this.callback);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        boolean z = false;
        boolean z2 = this == obj;
        if ((obj instanceof HandwritingDetectorElement) && this.callback == ((HandwritingDetectorElement) obj).callback) {
            z = true;
        }
        return z2 | z;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.callback.hashCode() * 31;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("handwritingDetector");
        inspectorInfo.getProperties().set("callback", this.callback);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(HandwritingDetectorNode handwritingDetectorNode) {
        handwritingDetectorNode.setCallback(this.callback);
    }
}
