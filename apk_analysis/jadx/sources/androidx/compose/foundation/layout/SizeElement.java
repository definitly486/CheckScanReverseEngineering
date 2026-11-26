package androidx.compose.foundation.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
final class SizeElement extends ModifierNodeElement<SizeNode> {
    private final boolean enforceIncoming;
    private final nl3<InspectorInfo, j59> inspectorInfo;
    private final float maxHeight;
    private final float maxWidth;
    private final float minHeight;
    private final float minWidth;

    public /* synthetic */ SizeElement(float f, float f2, float f3, float f4, boolean z, nl3 nl3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f, (i & 2) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f2, (i & 4) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f3, (i & 8) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f4, z, nl3Var, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public SizeNode create() {
        return new SizeNode(this.minWidth, this.minHeight, this.maxWidth, this.maxHeight, this.enforceIncoming, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeElement)) {
            return false;
        }
        SizeElement sizeElement = (SizeElement) obj;
        return Dp.m9047equalsimpl0(this.minWidth, sizeElement.minWidth) && Dp.m9047equalsimpl0(this.minHeight, sizeElement.minHeight) && Dp.m9047equalsimpl0(this.maxWidth, sizeElement.maxWidth) && Dp.m9047equalsimpl0(this.maxHeight, sizeElement.maxHeight) && this.enforceIncoming == sizeElement.enforceIncoming;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return Boolean.hashCode(this.enforceIncoming) + rg.c(this.maxHeight, rg.c(this.maxWidth, rg.c(this.minHeight, Dp.m9048hashCodeimpl(this.minWidth) * 31, 31), 31), 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        this.inspectorInfo.invoke(inspectorInfo);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(SizeNode sizeNode) {
        sizeNode.m2115setMinWidth0680j_4(this.minWidth);
        sizeNode.m2114setMinHeight0680j_4(this.minHeight);
        sizeNode.m2113setMaxWidth0680j_4(this.maxWidth);
        sizeNode.m2112setMaxHeight0680j_4(this.maxHeight);
        sizeNode.setEnforceIncoming(this.enforceIncoming);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SizeElement(float f, float f2, float f3, float f4, boolean z, nl3<? super InspectorInfo, j59> nl3Var) {
        this.minWidth = f;
        this.minHeight = f2;
        this.maxWidth = f3;
        this.maxHeight = f4;
        this.enforceIncoming = z;
        this.inspectorInfo = nl3Var;
    }

    public /* synthetic */ SizeElement(float f, float f2, float f3, float f4, boolean z, nl3 nl3Var, jh2 jh2Var) {
        this(f, f2, f3, f4, z, nl3Var);
    }
}
