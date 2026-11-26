package androidx.compose.foundation.style;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class StyleElement extends ModifierNodeElement<StyleOuterNode> {
    public static final int $stable = 0;
    private final Style style;
    private final StyleState styleState;

    public StyleElement(StyleState styleState, Style style) {
        this.styleState = styleState;
        this.style = style;
    }

    public static /* synthetic */ StyleElement copy$default(StyleElement styleElement, StyleState styleState, Style style, int i, Object obj) {
        if ((i & 1) != 0) {
            styleState = styleElement.styleState;
        }
        if ((i & 2) != 0) {
            style = styleElement.style;
        }
        return styleElement.copy(styleState, style);
    }

    public final StyleState component1() {
        return this.styleState;
    }

    public final Style component2() {
        return this.style;
    }

    public final StyleElement copy(StyleState styleState, Style style) {
        return new StyleElement(styleState, style);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public StyleOuterNode create() {
        return new StyleOuterNode(this.styleState, this.style);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StyleElement)) {
            return false;
        }
        StyleElement styleElement = (StyleElement) obj;
        return aa4.e(styleElement.style, this.style) && aa4.e(styleElement.styleState, this.styleState);
    }

    public final Style getStyle() {
        return this.style;
    }

    public final StyleState getStyleState() {
        return this.styleState;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.style.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("style");
        inspectorInfo.getProperties().set("style", this.style);
        inspectorInfo.getProperties().set("styleState", this.styleState);
    }

    public String toString() {
        return "StyleElement(styleState=" + this.styleState + ", style=" + this.style + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(StyleOuterNode styleOuterNode) {
        styleOuterNode.setStyle$foundation(this.style);
        StyleState mutableStyleState = this.styleState;
        if (mutableStyleState == null) {
            mutableStyleState = new MutableStyleState(null);
        }
        styleOuterNode.setState$foundation(mutableStyleState);
    }
}
