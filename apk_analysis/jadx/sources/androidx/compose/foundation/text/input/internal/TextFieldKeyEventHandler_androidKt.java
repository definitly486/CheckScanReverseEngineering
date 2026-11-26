package androidx.compose.foundation.text.input.internal;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.Key_androidKt;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldKeyEventHandler_androidKt {
    public static final TextFieldKeyEventHandler createTextFieldKeyEventHandler() {
        return new AndroidTextFieldKeyEventHandler();
    }

    /* JADX INFO: renamed from: isFromSoftKeyboard-ZmokQxo, reason: not valid java name */
    public static final boolean m2809isFromSoftKeyboardZmokQxo(KeyEvent keyEvent) {
        return (keyEvent.getFlags() & 2) == 2;
    }

    /* JADX INFO: renamed from: isKeyCode-YhN2O0w, reason: not valid java name */
    private static final boolean m2810isKeyCodeYhN2O0w(KeyEvent keyEvent, int i) {
        return Key_androidKt.m7408getNativeKeyCodeYVgTNJs(KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent)) == i;
    }
}
