package yads;

import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class an1 extends InputConnectionWrapper {
    public final /* synthetic */ bn1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public an1(InputConnection inputConnection, bn1 bn1Var) {
        super(inputConnection, true);
        this.a = bn1Var;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitText(CharSequence charSequence, int i) {
        if (defpackage.aa4.e(charSequence, "\n")) {
            int imeOptions = this.a.getImeOptions() & 255;
            bn1 bn1Var = this.a;
            TextView.OnEditorActionListener onEditorActionListener = bn1Var.l;
            if (onEditorActionListener != null) {
                return onEditorActionListener.onEditorAction(bn1Var, imeOptions, null);
            }
        }
        return super.commitText(charSequence, i);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean sendKeyEvent(KeyEvent keyEvent) {
        if ((keyEvent.getKeyCode() == 66 || keyEvent.getKeyCode() == 160) && keyEvent.getAction() == 0) {
            int imeOptions = this.a.getImeOptions() & 255;
            bn1 bn1Var = this.a;
            TextView.OnEditorActionListener onEditorActionListener = bn1Var.l;
            if (onEditorActionListener != null) {
                return onEditorActionListener.onEditorAction(bn1Var, imeOptions, keyEvent);
            }
        }
        return super.sendKeyEvent(keyEvent);
    }
}
