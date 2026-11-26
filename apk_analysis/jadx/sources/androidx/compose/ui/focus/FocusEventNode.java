package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class FocusEventNode extends Modifier.Node implements FocusEventModifierNode {
    private nl3<? super FocusState, j59> onFocusEvent;

    public FocusEventNode(nl3<? super FocusState, j59> nl3Var) {
        this.onFocusEvent = nl3Var;
    }

    public final nl3<FocusState, j59> getOnFocusEvent() {
        return this.onFocusEvent;
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public void onFocusEvent(FocusState focusState) {
        this.onFocusEvent.invoke(focusState);
    }

    public final void setOnFocusEvent(nl3<? super FocusState, j59> nl3Var) {
        this.onFocusEvent = nl3Var;
    }
}
