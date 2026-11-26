package androidx.compose.foundation.text.input;

import androidx.compose.ui.text.TextRange;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldCharSequenceKt {
    public static final CharSequence getSelectedText(TextFieldCharSequence textFieldCharSequence) {
        return textFieldCharSequence.subSequence(TextRange.m8489getMinimpl(textFieldCharSequence.m2665getSelectiond9O1mEE()), TextRange.m8488getMaximpl(textFieldCharSequence.m2665getSelectiond9O1mEE()));
    }

    public static final CharSequence getTextAfterSelection(TextFieldCharSequence textFieldCharSequence, int i) {
        int iM8488getMaximpl = TextRange.m8488getMaximpl(textFieldCharSequence.m2665getSelectiond9O1mEE());
        int iM8488getMaximpl2 = TextRange.m8488getMaximpl(textFieldCharSequence.m2665getSelectiond9O1mEE());
        int length = iM8488getMaximpl2 + i;
        if (((i ^ length) & (iM8488getMaximpl2 ^ length)) < 0) {
            length = textFieldCharSequence.length();
        }
        return textFieldCharSequence.subSequence(iM8488getMaximpl, Math.min(length, textFieldCharSequence.length()));
    }

    public static final CharSequence getTextBeforeSelection(TextFieldCharSequence textFieldCharSequence, int i) {
        int iM8489getMinimpl = TextRange.m8489getMinimpl(textFieldCharSequence.m2665getSelectiond9O1mEE());
        int i2 = iM8489getMinimpl - i;
        if (((i ^ iM8489getMinimpl) & (iM8489getMinimpl ^ i2)) < 0) {
            i2 = 0;
        }
        return textFieldCharSequence.subSequence(Math.max(0, i2), TextRange.m8489getMinimpl(textFieldCharSequence.m2665getSelectiond9O1mEE()));
    }
}
