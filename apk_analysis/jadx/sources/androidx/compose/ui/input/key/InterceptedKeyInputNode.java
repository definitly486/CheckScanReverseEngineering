package androidx.compose.ui.input.key;

import androidx.compose.ui.Modifier;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class InterceptedKeyInputNode extends Modifier.Node implements SoftKeyboardInterceptionModifierNode {
    private nl3<? super KeyEvent, Boolean> onEvent;
    private nl3<? super KeyEvent, Boolean> onPreEvent;

    public InterceptedKeyInputNode(nl3<? super KeyEvent, Boolean> nl3Var, nl3<? super KeyEvent, Boolean> nl3Var2) {
        this.onEvent = nl3Var;
        this.onPreEvent = nl3Var2;
    }

    public final nl3<KeyEvent, Boolean> getOnEvent() {
        return this.onEvent;
    }

    public final nl3<KeyEvent, Boolean> getOnPreEvent() {
        return this.onPreEvent;
    }

    @Override // androidx.compose.ui.input.key.SoftKeyboardInterceptionModifierNode
    /* JADX INFO: renamed from: onInterceptKeyBeforeSoftKeyboard-ZmokQxo, reason: not valid java name */
    public boolean mo7076onInterceptKeyBeforeSoftKeyboardZmokQxo(android.view.KeyEvent keyEvent) {
        nl3<? super KeyEvent, Boolean> nl3Var = this.onEvent;
        if (nl3Var != null) {
            return nl3Var.invoke(KeyEvent.m7384boximpl(keyEvent)).booleanValue();
        }
        return false;
    }

    @Override // androidx.compose.ui.input.key.SoftKeyboardInterceptionModifierNode
    /* JADX INFO: renamed from: onPreInterceptKeyBeforeSoftKeyboard-ZmokQxo, reason: not valid java name */
    public boolean mo7077onPreInterceptKeyBeforeSoftKeyboardZmokQxo(android.view.KeyEvent keyEvent) {
        nl3<? super KeyEvent, Boolean> nl3Var = this.onPreEvent;
        if (nl3Var != null) {
            return nl3Var.invoke(KeyEvent.m7384boximpl(keyEvent)).booleanValue();
        }
        return false;
    }

    public final void setOnEvent(nl3<? super KeyEvent, Boolean> nl3Var) {
        this.onEvent = nl3Var;
    }

    public final void setOnPreEvent(nl3<? super KeyEvent, Boolean> nl3Var) {
        this.onPreEvent = nl3Var;
    }
}
