package androidx.compose.foundation.text.selection;

import android.view.textclassifier.TextClassification;
import androidx.compose.ui.text.TextRange;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
final class TextClassificationResult {
    private final long selection;
    private final CharSequence text;
    private final TextClassification textClassification;

    private TextClassificationResult(CharSequence charSequence, long j, TextClassification textClassification) {
        this.text = charSequence;
        this.selection = j;
        this.textClassification = textClassification;
    }

    /* JADX INFO: renamed from: copy-Sb-Bc2M$default, reason: not valid java name */
    public static /* synthetic */ TextClassificationResult m3024copySbBc2M$default(TextClassificationResult textClassificationResult, CharSequence charSequence, long j, TextClassification textClassification, int i, Object obj) {
        if ((i & 1) != 0) {
            charSequence = textClassificationResult.text;
        }
        if ((i & 2) != 0) {
            j = textClassificationResult.selection;
        }
        if ((i & 4) != 0) {
            textClassification = textClassificationResult.textClassification;
        }
        return textClassificationResult.m3026copySbBc2M(charSequence, j, textClassification);
    }

    public final CharSequence component1() {
        return this.text;
    }

    /* JADX INFO: renamed from: component2-d9O1mEE, reason: not valid java name */
    public final long m3025component2d9O1mEE() {
        return this.selection;
    }

    public final TextClassification component3() {
        return this.textClassification;
    }

    /* JADX INFO: renamed from: copy-Sb-Bc2M, reason: not valid java name */
    public final TextClassificationResult m3026copySbBc2M(CharSequence charSequence, long j, TextClassification textClassification) {
        return new TextClassificationResult(charSequence, j, textClassification, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextClassificationResult)) {
            return false;
        }
        TextClassificationResult textClassificationResult = (TextClassificationResult) obj;
        return aa4.e(this.text, textClassificationResult.text) && TextRange.m8484equalsimpl0(this.selection, textClassificationResult.selection) && aa4.e(this.textClassification, textClassificationResult.textClassification);
    }

    /* JADX INFO: renamed from: getSelection-d9O1mEE, reason: not valid java name */
    public final long m3027getSelectiond9O1mEE() {
        return this.selection;
    }

    public final CharSequence getText() {
        return this.text;
    }

    public final TextClassification getTextClassification() {
        return this.textClassification;
    }

    public int hashCode() {
        return this.textClassification.hashCode() + ((TextRange.m8492hashCodeimpl(this.selection) + (this.text.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "TextClassificationResult(text=" + ((Object) this.text) + ", selection=" + ((Object) TextRange.m8494toStringimpl(this.selection)) + ", textClassification=" + this.textClassification + ')';
    }

    public /* synthetic */ TextClassificationResult(CharSequence charSequence, long j, TextClassification textClassification, jh2 jh2Var) {
        this(charSequence, j, textClassification);
    }
}
