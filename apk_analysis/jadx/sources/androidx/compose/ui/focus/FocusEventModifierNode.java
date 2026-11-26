package androidx.compose.ui.focus;

import androidx.compose.ui.node.DelegatableNode;

/* JADX INFO: loaded from: classes2.dex */
public interface FocusEventModifierNode extends DelegatableNode {
    void onFocusEvent(FocusState focusState);
}
