package androidx.compose.foundation.text.input.internal;

import android.view.KeyEvent;
import androidx.compose.foundation.text.KeyCommand;
import androidx.compose.foundation.text.TextFieldKeyInput_androidKt;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidTextFieldKeyEventHandler extends TextFieldKeyEventHandler {
    public static final int $stable = 8;

    @Override // androidx.compose.foundation.text.input.internal.TextFieldKeyEventHandler
    /* JADX INFO: renamed from: onKeyEvent-8zsqlwg, reason: not valid java name */
    public boolean mo2691onKeyEvent8zsqlwg(KeyEvent keyEvent, TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, TextFieldSelectionState textFieldSelectionState, nl3<? super KeyCommand, ? extends j59> nl3Var, SoftwareKeyboardController softwareKeyboardController, boolean z, boolean z2, ll3<Boolean> ll3Var) {
        if (KeyEventType.m7394equalsimpl0(KeyEvent_androidKt.m7402getTypeZmokQxo(keyEvent), KeyEventType.Companion.m7398getKeyDownCS__XNY()) && keyEvent.isFromSource(257) && (!TextFieldKeyEventHandler_androidKt.m2809isFromSoftKeyboardZmokQxo(keyEvent) || !TextFieldKeyInput_androidKt.m2617isTypedEventZmokQxo(keyEvent))) {
            textFieldSelectionState.setInTouchMode(false);
        }
        return super.mo2691onKeyEvent8zsqlwg(keyEvent, transformedTextFieldState, textLayoutState, textFieldSelectionState, nl3Var, softwareKeyboardController, z, z2, ll3Var);
    }
}
