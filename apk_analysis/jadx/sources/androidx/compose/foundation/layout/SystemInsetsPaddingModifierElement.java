package androidx.compose.foundation.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class SystemInsetsPaddingModifierElement extends ModifierNodeElement<SystemInsetsPaddingModifierNode> {
    private final nl3<WindowInsetsHolder, WindowInsets> insetsGetter;
    private final nl3<InspectorInfo, j59> inspectorInfo;

    /* JADX WARN: Multi-variable type inference failed */
    public SystemInsetsPaddingModifierElement(nl3<? super InspectorInfo, j59> nl3Var, nl3<? super WindowInsetsHolder, ? extends WindowInsets> nl3Var2) {
        this.inspectorInfo = nl3Var;
        this.insetsGetter = nl3Var2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public SystemInsetsPaddingModifierNode create() {
        return new SystemInsetsPaddingModifierNode(this.insetsGetter);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SystemInsetsPaddingModifierElement) && this.insetsGetter == ((SystemInsetsPaddingModifierElement) obj).insetsGetter;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.insetsGetter.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        this.inspectorInfo.invoke(inspectorInfo);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(SystemInsetsPaddingModifierNode systemInsetsPaddingModifierNode) {
        systemInsetsPaddingModifierNode.update(this.insetsGetter);
    }
}
