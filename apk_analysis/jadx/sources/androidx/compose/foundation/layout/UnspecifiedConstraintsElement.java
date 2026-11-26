package androidx.compose.foundation.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import defpackage.jh2;
import defpackage.qg;

/* JADX INFO: loaded from: classes.dex */
final class UnspecifiedConstraintsElement extends ModifierNodeElement<UnspecifiedConstraintsNode> {
    private final float minHeight;
    private final float minWidth;

    public /* synthetic */ UnspecifiedConstraintsElement(float f, float f2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f, (i & 2) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f2, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public UnspecifiedConstraintsNode create() {
        return new UnspecifiedConstraintsNode(this.minWidth, this.minHeight, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (!(obj instanceof UnspecifiedConstraintsElement)) {
            return false;
        }
        UnspecifiedConstraintsElement unspecifiedConstraintsElement = (UnspecifiedConstraintsElement) obj;
        return Dp.m9047equalsimpl0(this.minWidth, unspecifiedConstraintsElement.minWidth) && Dp.m9047equalsimpl0(this.minHeight, unspecifiedConstraintsElement.minHeight);
    }

    /* JADX INFO: renamed from: getMinHeight-D9Ej5fM, reason: not valid java name */
    public final float m2116getMinHeightD9Ej5fM() {
        return this.minHeight;
    }

    /* JADX INFO: renamed from: getMinWidth-D9Ej5fM, reason: not valid java name */
    public final float m2117getMinWidthD9Ej5fM() {
        return this.minWidth;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return Dp.m9048hashCodeimpl(this.minHeight) + (Dp.m9048hashCodeimpl(this.minWidth) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("defaultMinSize");
        qg.e(this.minWidth, inspectorInfo.getProperties(), "minWidth", inspectorInfo).set("minHeight", Dp.m9040boximpl(this.minHeight));
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(UnspecifiedConstraintsNode unspecifiedConstraintsNode) {
        unspecifiedConstraintsNode.m2121setMinWidth0680j_4(this.minWidth);
        unspecifiedConstraintsNode.m2120setMinHeight0680j_4(this.minHeight);
    }

    private UnspecifiedConstraintsElement(float f, float f2) {
        this.minWidth = f;
        this.minHeight = f2;
    }

    public /* synthetic */ UnspecifiedConstraintsElement(float f, float f2, jh2 jh2Var) {
        this(f, f2);
    }
}
