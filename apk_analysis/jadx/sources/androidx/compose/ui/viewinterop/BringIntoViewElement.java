package androidx.compose.ui.viewinterop;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class BringIntoViewElement extends ModifierNodeElement<BringIntoViewNode> {
    private final nl3<nl3<? super Rect, j59>, j59> onRequesterReady;

    /* JADX WARN: Multi-variable type inference failed */
    public BringIntoViewElement(nl3<? super nl3<? super Rect, j59>, j59> nl3Var) {
        this.onRequesterReady = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public BringIntoViewNode create() {
        return new BringIntoViewNode(this.onRequesterReady);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof BringIntoViewElement) && this.onRequesterReady == ((BringIntoViewElement) obj).onRequesterReady;
        }
        return true;
    }

    public final nl3<nl3<? super Rect, j59>, j59> getOnRequesterReady() {
        return this.onRequesterReady;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.onRequesterReady.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("requestRectangleBringIntoViewBridge");
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(BringIntoViewNode bringIntoViewNode) {
        bringIntoViewNode.update(this.onRequesterReady);
    }
}
