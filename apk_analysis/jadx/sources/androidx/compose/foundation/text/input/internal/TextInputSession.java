package androidx.compose.foundation.text.input.internal;

import android.os.CancellationSignal;
import android.view.KeyEvent;
import android.view.inputmethod.HandwritingGesture;
import android.view.inputmethod.PreviewableHandwritingGesture;
import androidx.compose.foundation.content.TransferableContent;
import androidx.compose.foundation.text.input.TextFieldCharSequence;

/* JADX INFO: loaded from: classes.dex */
public interface TextInputSession extends ImeEditCommandScope {
    TextFieldCharSequence getText();

    boolean onCommitContent(TransferableContent transferableContent);

    /* JADX INFO: renamed from: onImeAction-KlQnJC8 */
    void mo2694onImeActionKlQnJC8(int i);

    int performHandwritingGesture(HandwritingGesture handwritingGesture);

    boolean previewHandwritingGesture(PreviewableHandwritingGesture previewableHandwritingGesture, CancellationSignal cancellationSignal);

    void requestCursorUpdates(int i);

    void sendKeyEvent(KeyEvent keyEvent);

    void updateTouchMode(boolean z);
}
