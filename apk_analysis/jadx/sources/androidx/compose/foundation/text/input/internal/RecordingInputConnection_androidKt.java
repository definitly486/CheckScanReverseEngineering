package androidx.compose.foundation.text.input.internal;

import android.view.inputmethod.ExtractedText;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.ta8;

/* JADX INFO: loaded from: classes2.dex */
public final class RecordingInputConnection_androidKt {
    public static final boolean DEBUG = false;
    private static final String DEBUG_CLASS = "RecordingInputConnection";
    public static final String TAG = "RecordingIC";

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExtractedText toExtractedText(TextFieldValue textFieldValue) {
        ExtractedText extractedText = new ExtractedText();
        extractedText.text = textFieldValue.getText();
        extractedText.startOffset = 0;
        extractedText.partialEndOffset = textFieldValue.getText().length();
        extractedText.partialStartOffset = -1;
        extractedText.selectionStart = TextRange.m8489getMinimpl(textFieldValue.m8741getSelectiond9O1mEE());
        extractedText.selectionEnd = TextRange.m8488getMaximpl(textFieldValue.m8741getSelectiond9O1mEE());
        extractedText.flags = !ta8.E(textFieldValue.getText(), '\n') ? 1 : 0;
        return extractedText;
    }
}
