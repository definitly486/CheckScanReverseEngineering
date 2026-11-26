package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class FocusChangedNode extends Modifier.Node implements FocusEventModifierNode {
    private FocusState focusState;
    private nl3<? super FocusState, j59> onFocusChanged;

    public FocusChangedNode(nl3<? super FocusState, j59> nl3Var) {
        this.onFocusChanged = nl3Var;
    }

    public final nl3<FocusState, j59> getOnFocusChanged() {
        return this.onFocusChanged;
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public void onFocusEvent(FocusState focusState) {
        if (aa4.e(this.focusState, focusState)) {
            return;
        }
        this.focusState = focusState;
        this.onFocusChanged.invoke(focusState);
    }

    public final void setOnFocusChanged(nl3<? super FocusState, j59> nl3Var) {
        this.onFocusChanged = nl3Var;
    }
}
