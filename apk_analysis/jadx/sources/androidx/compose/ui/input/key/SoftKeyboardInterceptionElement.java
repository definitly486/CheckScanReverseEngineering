package androidx.compose.ui.input.key;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class SoftKeyboardInterceptionElement extends ModifierNodeElement<InterceptedKeyInputNode> {
    private final nl3<KeyEvent, Boolean> onKeyEvent;
    private final nl3<KeyEvent, Boolean> onPreKeyEvent;

    /* JADX WARN: Multi-variable type inference failed */
    public SoftKeyboardInterceptionElement(nl3<? super KeyEvent, Boolean> nl3Var, nl3<? super KeyEvent, Boolean> nl3Var2) {
        this.onKeyEvent = nl3Var;
        this.onPreKeyEvent = nl3Var2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public InterceptedKeyInputNode create() {
        return new InterceptedKeyInputNode(this.onKeyEvent, this.onPreKeyEvent);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SoftKeyboardInterceptionElement)) {
            return false;
        }
        SoftKeyboardInterceptionElement softKeyboardInterceptionElement = (SoftKeyboardInterceptionElement) obj;
        return this.onKeyEvent == softKeyboardInterceptionElement.onKeyEvent && this.onPreKeyEvent == softKeyboardInterceptionElement.onPreKeyEvent;
    }

    public final nl3<KeyEvent, Boolean> getOnKeyEvent() {
        return this.onKeyEvent;
    }

    public final nl3<KeyEvent, Boolean> getOnPreKeyEvent() {
        return this.onPreKeyEvent;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        nl3<KeyEvent, Boolean> nl3Var = this.onKeyEvent;
        int iHashCode = (nl3Var != null ? nl3Var.hashCode() : 0) * 31;
        nl3<KeyEvent, Boolean> nl3Var2 = this.onPreKeyEvent;
        return iHashCode + (nl3Var2 != null ? nl3Var2.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        nl3<KeyEvent, Boolean> nl3Var = this.onKeyEvent;
        if (nl3Var != null) {
            inspectorInfo.setName("onKeyToSoftKeyboardInterceptedEvent");
            inspectorInfo.getProperties().set("onKeyToSoftKeyboardInterceptedEvent", nl3Var);
        }
        nl3<KeyEvent, Boolean> nl3Var2 = this.onPreKeyEvent;
        if (nl3Var2 != null) {
            inspectorInfo.setName("onPreKeyToSoftKeyboardInterceptedEvent");
            inspectorInfo.getProperties().set("onPreKeyToSoftKeyboardInterceptedEvent", nl3Var2);
        }
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(InterceptedKeyInputNode interceptedKeyInputNode) {
        interceptedKeyInputNode.setOnEvent(this.onKeyEvent);
        interceptedKeyInputNode.setOnPreEvent(this.onPreKeyEvent);
    }
}
