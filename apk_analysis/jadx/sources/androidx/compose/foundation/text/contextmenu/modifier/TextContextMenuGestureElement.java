package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
final class TextContextMenuGestureElement extends ModifierNodeElement<TextContextMenuGestureNode> {
    private final bm3<Offset, e02<? super j59>, Object> onPreShowContextMenu;

    /* JADX WARN: Multi-variable type inference failed */
    public TextContextMenuGestureElement(bm3<? super Offset, ? super e02<? super j59>, ? extends Object> bm3Var) {
        this.onPreShowContextMenu = bm3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public TextContextMenuGestureNode create() {
        return new TextContextMenuGestureNode(this.onPreShowContextMenu);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TextContextMenuGestureElement) && this.onPreShowContextMenu == ((TextContextMenuGestureElement) obj).onPreShowContextMenu;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        bm3<Offset, e02<? super j59>, Object> bm3Var = this.onPreShowContextMenu;
        if (bm3Var != null) {
            return bm3Var.hashCode();
        }
        return 0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("TextContextMenuGestures");
        inspectorInfo.getProperties().set("onPreShowContextMenu", this.onPreShowContextMenu);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(TextContextMenuGestureNode textContextMenuGestureNode) {
        textContextMenuGestureNode.update(this.onPreShowContextMenu);
    }
}
