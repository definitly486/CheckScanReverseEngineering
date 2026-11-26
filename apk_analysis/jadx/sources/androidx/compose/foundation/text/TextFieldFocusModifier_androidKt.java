package androidx.compose.foundation.text;

import android.view.InputDevice;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.core.view.InputDeviceCompat;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class TextFieldFocusModifier_androidKt {
    public static final Modifier interceptDPadAndMoveFocus(Modifier modifier, final LegacyTextFieldState legacyTextFieldState, final FocusManager focusManager) {
        return KeyInputModifierKt.onPreviewKeyEvent(modifier, new nl3<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus.1
            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                return m2611invokeZmokQxo(keyEvent.m7390unboximpl());
            }

            /* JADX INFO: renamed from: invoke-ZmokQxo, reason: not valid java name */
            public final Boolean m2611invokeZmokQxo(android.view.KeyEvent keyEvent) {
                InputDevice device = keyEvent.getDevice();
                boolean zMo5876moveFocus3ESFkO8 = false;
                if (device != null && device.supportsSource(InputDeviceCompat.SOURCE_DPAD) && ((!device.isVirtual() || keyEvent.getSource() == 33554433) && KeyEventType.m7394equalsimpl0(KeyEvent_androidKt.m7402getTypeZmokQxo(keyEvent), KeyEventType.Companion.m7398getKeyDownCS__XNY()) && keyEvent.getSource() != 257)) {
                    if (TextFieldFocusModifier_androidKt.m2610isKeyCodeYhN2O0w(keyEvent, 19)) {
                        zMo5876moveFocus3ESFkO8 = focusManager.mo5876moveFocus3ESFkO8(FocusDirection.Companion.m5873getUpdhqQ8s());
                    } else if (TextFieldFocusModifier_androidKt.m2610isKeyCodeYhN2O0w(keyEvent, 20)) {
                        zMo5876moveFocus3ESFkO8 = focusManager.mo5876moveFocus3ESFkO8(FocusDirection.Companion.m5866getDowndhqQ8s());
                    } else if (TextFieldFocusModifier_androidKt.m2610isKeyCodeYhN2O0w(keyEvent, 21)) {
                        zMo5876moveFocus3ESFkO8 = focusManager.mo5876moveFocus3ESFkO8(FocusDirection.Companion.m5869getLeftdhqQ8s());
                    } else if (TextFieldFocusModifier_androidKt.m2610isKeyCodeYhN2O0w(keyEvent, 22)) {
                        zMo5876moveFocus3ESFkO8 = focusManager.mo5876moveFocus3ESFkO8(FocusDirection.Companion.m5872getRightdhqQ8s());
                    } else if (TextFieldFocusModifier_androidKt.m2610isKeyCodeYhN2O0w(keyEvent, 23)) {
                        SoftwareKeyboardController keyboardController = legacyTextFieldState.getKeyboardController();
                        if (keyboardController != null) {
                            keyboardController.show();
                        }
                        zMo5876moveFocus3ESFkO8 = true;
                    }
                }
                return Boolean.valueOf(zMo5876moveFocus3ESFkO8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: isKeyCode-YhN2O0w, reason: not valid java name */
    public static final boolean m2610isKeyCodeYhN2O0w(android.view.KeyEvent keyEvent, int i) {
        return Key_androidKt.m7408getNativeKeyCodeYVgTNJs(KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent)) == i;
    }
}
