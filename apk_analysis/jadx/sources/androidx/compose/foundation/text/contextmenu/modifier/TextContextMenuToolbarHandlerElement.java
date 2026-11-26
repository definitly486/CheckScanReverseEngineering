package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class TextContextMenuToolbarHandlerElement extends ModifierNodeElement<TextContextMenuToolbarHandlerNode> {
    private final nl3<LayoutCoordinates, Rect> computeContentBounds;
    private final nl3<e02<? super j59>, Object> onHide;
    private final nl3<e02<? super j59>, Object> onShow;
    private final ToolbarRequester requester;

    /* JADX WARN: Multi-variable type inference failed */
    public TextContextMenuToolbarHandlerElement(ToolbarRequester toolbarRequester, nl3<? super e02<? super j59>, ? extends Object> nl3Var, nl3<? super e02<? super j59>, ? extends Object> nl3Var2, nl3<? super LayoutCoordinates, Rect> nl3Var3) {
        this.requester = toolbarRequester;
        this.onShow = nl3Var;
        this.onHide = nl3Var2;
        this.computeContentBounds = nl3Var3;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public TextContextMenuToolbarHandlerNode create() {
        return new TextContextMenuToolbarHandlerNode(this.requester, this.onShow, this.onHide, this.computeContentBounds);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextContextMenuToolbarHandlerElement)) {
            return false;
        }
        TextContextMenuToolbarHandlerElement textContextMenuToolbarHandlerElement = (TextContextMenuToolbarHandlerElement) obj;
        return this.requester == textContextMenuToolbarHandlerElement.requester && this.onShow == textContextMenuToolbarHandlerElement.onShow && this.onHide == textContextMenuToolbarHandlerElement.onHide && this.computeContentBounds == textContextMenuToolbarHandlerElement.computeContentBounds;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int iHashCode = this.requester.hashCode() * 31;
        nl3<e02<? super j59>, Object> nl3Var = this.onShow;
        int iHashCode2 = (iHashCode + (nl3Var != null ? nl3Var.hashCode() : 0)) * 31;
        nl3<e02<? super j59>, Object> nl3Var2 = this.onHide;
        return this.computeContentBounds.hashCode() + ((iHashCode2 + (nl3Var2 != null ? nl3Var2.hashCode() : 0)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode) {
        textContextMenuToolbarHandlerNode.update(this.requester);
        textContextMenuToolbarHandlerNode.setOnShow(this.onShow);
        textContextMenuToolbarHandlerNode.setOnHide(this.onHide);
        textContextMenuToolbarHandlerNode.setComputeContentBounds(this.computeContentBounds);
    }
}
