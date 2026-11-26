package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.KeyEvent_androidKt;

/* JADX INFO: loaded from: classes.dex */
public final class KeyModifiersKt {
    /* JADX INFO: renamed from: getModifiers-ZmokQxo, reason: not valid java name */
    public static final int m2541getModifiersZmokQxo(KeyEvent keyEvent) {
        return KeyModifiers.m2500constructorimpl(KeyEvent_androidKt.m7404isAltPressedZmokQxo(keyEvent), KeyEvent_androidKt.m7405isCtrlPressedZmokQxo(keyEvent), KeyEvent_androidKt.m7406isMetaPressedZmokQxo(keyEvent), KeyEvent_androidKt.m7407isShiftPressedZmokQxo(keyEvent));
    }
}
