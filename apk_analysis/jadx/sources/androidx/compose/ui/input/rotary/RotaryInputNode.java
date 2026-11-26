package androidx.compose.ui.input.rotary;

import androidx.compose.ui.Modifier;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class RotaryInputNode extends Modifier.Node implements RotaryInputModifierNode {
    private nl3<? super RotaryScrollEvent, Boolean> onEvent;
    private nl3<? super RotaryScrollEvent, Boolean> onPreEvent;

    public RotaryInputNode(nl3<? super RotaryScrollEvent, Boolean> nl3Var, nl3<? super RotaryScrollEvent, Boolean> nl3Var2) {
        this.onEvent = nl3Var;
        this.onPreEvent = nl3Var2;
    }

    public final nl3<RotaryScrollEvent, Boolean> getOnEvent() {
        return this.onEvent;
    }

    public final nl3<RotaryScrollEvent, Boolean> getOnPreEvent() {
        return this.onPreEvent;
    }

    @Override // androidx.compose.ui.input.rotary.RotaryInputModifierNode
    public boolean onPreRotaryScrollEvent(RotaryScrollEvent rotaryScrollEvent) {
        nl3<? super RotaryScrollEvent, Boolean> nl3Var = this.onPreEvent;
        if (nl3Var != null) {
            return nl3Var.invoke(rotaryScrollEvent).booleanValue();
        }
        return false;
    }

    @Override // androidx.compose.ui.input.rotary.RotaryInputModifierNode
    public boolean onRotaryScrollEvent(RotaryScrollEvent rotaryScrollEvent) {
        nl3<? super RotaryScrollEvent, Boolean> nl3Var = this.onEvent;
        if (nl3Var != null) {
            return nl3Var.invoke(rotaryScrollEvent).booleanValue();
        }
        return false;
    }

    public final void setOnEvent(nl3<? super RotaryScrollEvent, Boolean> nl3Var) {
        this.onEvent = nl3Var;
    }

    public final void setOnPreEvent(nl3<? super RotaryScrollEvent, Boolean> nl3Var) {
        this.onPreEvent = nl3Var;
    }
}
