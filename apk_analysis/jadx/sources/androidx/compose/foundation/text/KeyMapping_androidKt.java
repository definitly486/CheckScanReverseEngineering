package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent_androidKt;

/* JADX INFO: loaded from: classes.dex */
public final class KeyMapping_androidKt {
    private static final KeyMapping platformDefaultKeyMapping = new KeyMapping() { // from class: androidx.compose.foundation.text.KeyMapping_androidKt$platformDefaultKeyMapping$1
        @Override // androidx.compose.foundation.text.KeyMapping
        /* JADX INFO: renamed from: map-ZmokQxo */
        public KeyCommand mo2496mapZmokQxo(KeyEvent keyEvent) {
            int iM2541getModifiersZmokQxo = KeyModifiersKt.m2541getModifiersZmokQxo(keyEvent);
            KeyModifiers.Companion companion = KeyModifiers.Companion;
            KeyCommand keyCommand = null;
            if (KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion.m2532getAltShiftAuQ4EfA())) {
                long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
                Key.Companion companion2 = Key.Companion;
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion2.m7158getDirectionLeftEK5gGoQ())) {
                    keyCommand = KeyCommand.SELECT_LINE_LEFT;
                } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion2.m7159getDirectionRightEK5gGoQ())) {
                    keyCommand = KeyCommand.SELECT_LINE_RIGHT;
                } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion2.m7160getDirectionUpEK5gGoQ())) {
                    keyCommand = KeyCommand.SELECT_HOME;
                } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo, companion2.m7155getDirectionDownEK5gGoQ())) {
                    keyCommand = KeyCommand.SELECT_END;
                }
            } else if (KeyModifiers.m2503equalsimpl0(iM2541getModifiersZmokQxo, companion.m2530getAltAuQ4EfA())) {
                long jM7401getKeyZmokQxo2 = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
                Key.Companion companion3 = Key.Companion;
                if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7158getDirectionLeftEK5gGoQ())) {
                    keyCommand = KeyCommand.LINE_LEFT;
                } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7159getDirectionRightEK5gGoQ())) {
                    keyCommand = KeyCommand.LINE_RIGHT;
                } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7160getDirectionUpEK5gGoQ())) {
                    keyCommand = KeyCommand.HOME;
                } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7155getDirectionDownEK5gGoQ())) {
                    keyCommand = KeyCommand.END;
                } else if (Key.m7081equalsimpl0(jM7401getKeyZmokQxo2, companion3.m7099getBackspaceEK5gGoQ())) {
                    keyCommand = KeyCommand.DELETE_FROM_LINE_START;
                }
            }
            return keyCommand == null ? KeyMappingKt.getDefaultKeyMapping().mo2496mapZmokQxo(keyEvent) : keyCommand;
        }
    };

    public static final KeyMapping getPlatformDefaultKeyMapping() {
        return platformDefaultKeyMapping;
    }
}
