package androidx.compose.ui.text.input;

import android.view.inputmethod.ExtractedText;
import androidx.compose.ui.text.TextRange;
import defpackage.ta8;

/* JADX INFO: loaded from: classes2.dex */
public final class InputState_androidKt {
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
