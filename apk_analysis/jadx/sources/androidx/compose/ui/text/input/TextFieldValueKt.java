package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;

/* JADX INFO: loaded from: classes2.dex */
public final class TextFieldValueKt {
    public static final AnnotatedString getSelectedText(TextFieldValue textFieldValue) {
        return textFieldValue.getAnnotatedString().m8326subSequence5zctL8(textFieldValue.m8741getSelectiond9O1mEE());
    }

    public static final AnnotatedString getTextAfterSelection(TextFieldValue textFieldValue, int i) {
        AnnotatedString annotatedString = textFieldValue.getAnnotatedString();
        int iM8488getMaximpl = TextRange.m8488getMaximpl(textFieldValue.m8741getSelectiond9O1mEE());
        int iM8488getMaximpl2 = TextRange.m8488getMaximpl(textFieldValue.m8741getSelectiond9O1mEE());
        int length = iM8488getMaximpl2 + i;
        if (((i ^ length) & (iM8488getMaximpl2 ^ length)) < 0) {
            length = textFieldValue.getText().length();
        }
        return annotatedString.subSequence(iM8488getMaximpl, Math.min(length, textFieldValue.getText().length()));
    }

    public static final AnnotatedString getTextBeforeSelection(TextFieldValue textFieldValue, int i) {
        AnnotatedString annotatedString = textFieldValue.getAnnotatedString();
        int iM8489getMinimpl = TextRange.m8489getMinimpl(textFieldValue.m8741getSelectiond9O1mEE());
        int i2 = iM8489getMinimpl - i;
        if (((i ^ iM8489getMinimpl) & (iM8489getMinimpl ^ i2)) < 0) {
            i2 = 0;
        }
        return annotatedString.subSequence(Math.max(0, i2), TextRange.m8489getMinimpl(textFieldValue.m8741getSelectiond9O1mEE()));
    }
}
