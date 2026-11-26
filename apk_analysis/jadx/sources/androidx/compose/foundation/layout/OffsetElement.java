package androidx.compose.foundation.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import defpackage.ch;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.rg;
import defpackage.sg;

/* JADX INFO: loaded from: classes.dex */
final class OffsetElement extends ModifierNodeElement<OffsetNode> {
    private final nl3<InspectorInfo, j59> inspectorInfo;
    private final boolean rtlAware;
    private final float x;
    private final float y;

    /* JADX WARN: Multi-variable type inference failed */
    private OffsetElement(float f, float f2, boolean z, nl3<? super InspectorInfo, j59> nl3Var) {
        this.x = f;
        this.y = f2;
        this.rtlAware = z;
        this.inspectorInfo = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public OffsetNode create() {
        return new OffsetNode(this.x, this.y, this.rtlAware, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        OffsetElement offsetElement = obj instanceof OffsetElement ? (OffsetElement) obj : null;
        return offsetElement != null && Dp.m9047equalsimpl0(this.x, offsetElement.x) && Dp.m9047equalsimpl0(this.y, offsetElement.y) && this.rtlAware == offsetElement.rtlAware;
    }

    public final nl3<InspectorInfo, j59> getInspectorInfo() {
        return this.inspectorInfo;
    }

    public final boolean getRtlAware() {
        return this.rtlAware;
    }

    /* JADX INFO: renamed from: getX-D9Ej5fM, reason: not valid java name */
    public final float m1988getXD9Ej5fM() {
        return this.x;
    }

    /* JADX INFO: renamed from: getY-D9Ej5fM, reason: not valid java name */
    public final float m1989getYD9Ej5fM() {
        return this.y;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return Boolean.hashCode(this.rtlAware) + rg.c(this.y, Dp.m9048hashCodeimpl(this.x) * 31, 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        this.inspectorInfo.invoke(inspectorInfo);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("OffsetModifierElement(x=");
        ch.d(sb, ", y=", this.x);
        ch.d(sb, ", rtlAware=", this.y);
        return sg.d(sb, this.rtlAware, ')');
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(OffsetNode offsetNode) {
        offsetNode.m1998updateMdfbLM(this.x, this.y, this.rtlAware);
    }

    public /* synthetic */ OffsetElement(float f, float f2, boolean z, nl3 nl3Var, jh2 jh2Var) {
        this(f, f2, z, nl3Var);
    }
}
