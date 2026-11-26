package androidx.compose.ui.input.rotary;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class RotaryInputElement extends ModifierNodeElement<RotaryInputNode> {
    private final nl3<RotaryScrollEvent, Boolean> onPreRotaryScrollEvent;
    private final nl3<RotaryScrollEvent, Boolean> onRotaryScrollEvent;

    /* JADX WARN: Multi-variable type inference failed */
    public RotaryInputElement(nl3<? super RotaryScrollEvent, Boolean> nl3Var, nl3<? super RotaryScrollEvent, Boolean> nl3Var2) {
        this.onRotaryScrollEvent = nl3Var;
        this.onPreRotaryScrollEvent = nl3Var2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public RotaryInputNode create() {
        return new RotaryInputNode(this.onRotaryScrollEvent, this.onPreRotaryScrollEvent);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RotaryInputElement)) {
            return false;
        }
        RotaryInputElement rotaryInputElement = (RotaryInputElement) obj;
        return this.onRotaryScrollEvent == rotaryInputElement.onRotaryScrollEvent && this.onPreRotaryScrollEvent == rotaryInputElement.onPreRotaryScrollEvent;
    }

    public final nl3<RotaryScrollEvent, Boolean> getOnPreRotaryScrollEvent() {
        return this.onPreRotaryScrollEvent;
    }

    public final nl3<RotaryScrollEvent, Boolean> getOnRotaryScrollEvent() {
        return this.onRotaryScrollEvent;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        nl3<RotaryScrollEvent, Boolean> nl3Var = this.onRotaryScrollEvent;
        int iHashCode = (nl3Var != null ? nl3Var.hashCode() : 0) * 31;
        nl3<RotaryScrollEvent, Boolean> nl3Var2 = this.onPreRotaryScrollEvent;
        return iHashCode + (nl3Var2 != null ? nl3Var2.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        nl3<RotaryScrollEvent, Boolean> nl3Var = this.onRotaryScrollEvent;
        if (nl3Var != null) {
            inspectorInfo.setName("onRotaryScrollEvent");
            inspectorInfo.getProperties().set("onRotaryScrollEvent", nl3Var);
        }
        nl3<RotaryScrollEvent, Boolean> nl3Var2 = this.onPreRotaryScrollEvent;
        if (nl3Var2 != null) {
            inspectorInfo.setName("onPreRotaryScrollEvent");
            inspectorInfo.getProperties().set("onPreRotaryScrollEvent", nl3Var2);
        }
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(RotaryInputNode rotaryInputNode) {
        rotaryInputNode.setOnEvent(this.onRotaryScrollEvent);
        rotaryInputNode.setOnPreEvent(this.onPreRotaryScrollEvent);
    }
}
