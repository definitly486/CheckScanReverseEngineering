package androidx.compose.foundation.text.input.internal;

import android.view.KeyEvent;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.ExtractedText;

/* JADX INFO: loaded from: classes.dex */
public interface ComposeInputMethodManager {
    void acceptStylusHandwritingDelegation();

    void hideSoftInput();

    void prepareStylusHandwritingDelegation();

    void restartInput();

    void sendKeyEvent(KeyEvent keyEvent);

    void showSoftInput();

    void startStylusHandwriting();

    void updateCursorAnchorInfo(CursorAnchorInfo cursorAnchorInfo);

    void updateExtractedText(int i, ExtractedText extractedText);

    void updateSelection(int i, int i2, int i3, int i4);
}
