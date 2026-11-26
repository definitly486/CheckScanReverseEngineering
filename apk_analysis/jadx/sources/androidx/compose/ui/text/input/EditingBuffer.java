package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.bj;
import defpackage.fg;
import defpackage.jh2;
import defpackage.n7;
import defpackage.rz0;

/* JADX INFO: loaded from: classes2.dex */
public final class EditingBuffer {
    public static final int NOWHERE = -1;
    private int compositionEnd;
    private int compositionStart;
    private final PartialGapBuffer gapBuffer;
    private int selectionEnd;
    private int selectionStart;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    private EditingBuffer(AnnotatedString annotatedString, long j) {
        this.gapBuffer = new PartialGapBuffer(annotatedString.getText());
        this.selectionStart = TextRange.m8489getMinimpl(j);
        this.selectionEnd = TextRange.m8488getMaximpl(j);
        this.compositionStart = -1;
        this.compositionEnd = -1;
        int iM8489getMinimpl = TextRange.m8489getMinimpl(j);
        int iM8488getMaximpl = TextRange.m8488getMaximpl(j);
        if (iM8489getMinimpl < 0 || iM8489getMinimpl > annotatedString.length()) {
            bj.d(annotatedString.length(), n7.c(iM8489getMinimpl, "start (", ") offset is outside of text region "));
            throw null;
        }
        if (iM8488getMaximpl < 0 || iM8488getMaximpl > annotatedString.length()) {
            bj.d(annotatedString.length(), n7.c(iM8488getMaximpl, "end (", ") offset is outside of text region "));
            throw null;
        }
        if (iM8489getMinimpl <= iM8488getMaximpl) {
            return;
        }
        fg.c(rz0.c(iM8489getMinimpl, iM8488getMaximpl, "Do not set reversed range: ", " > "));
        throw null;
    }

    private final void setSelectionEnd(int i) {
        if (!(i >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot set selectionEnd to a negative value: " + i);
        }
        this.selectionEnd = i;
    }

    private final void setSelectionStart(int i) {
        if (!(i >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot set selectionStart to a negative value: " + i);
        }
        this.selectionStart = i;
    }

    public final void cancelComposition$ui_text() {
        replace$ui_text(this.compositionStart, this.compositionEnd, "");
        this.compositionStart = -1;
        this.compositionEnd = -1;
    }

    public final void commitComposition$ui_text() {
        this.compositionStart = -1;
        this.compositionEnd = -1;
    }

    public final void delete$ui_text(int i, int i2) {
        long jTextRange = TextRangeKt.TextRange(i, i2);
        this.gapBuffer.replace(i, i2, "");
        long jM8655updateRangeAfterDeletepWDy79M = EditingBufferKt.m8655updateRangeAfterDeletepWDy79M(TextRangeKt.TextRange(this.selectionStart, this.selectionEnd), jTextRange);
        setSelectionStart(TextRange.m8489getMinimpl(jM8655updateRangeAfterDeletepWDy79M));
        setSelectionEnd(TextRange.m8488getMaximpl(jM8655updateRangeAfterDeletepWDy79M));
        if (hasComposition$ui_text()) {
            long jM8655updateRangeAfterDeletepWDy79M2 = EditingBufferKt.m8655updateRangeAfterDeletepWDy79M(TextRangeKt.TextRange(this.compositionStart, this.compositionEnd), jTextRange);
            if (TextRange.m8485getCollapsedimpl(jM8655updateRangeAfterDeletepWDy79M2)) {
                commitComposition$ui_text();
            } else {
                this.compositionStart = TextRange.m8489getMinimpl(jM8655updateRangeAfterDeletepWDy79M2);
                this.compositionEnd = TextRange.m8488getMaximpl(jM8655updateRangeAfterDeletepWDy79M2);
            }
        }
    }

    public final char get$ui_text(int i) {
        return this.gapBuffer.get(i);
    }

    /* JADX INFO: renamed from: getComposition-MzsxiRA$ui_text, reason: not valid java name */
    public final TextRange m8653getCompositionMzsxiRA$ui_text() {
        if (hasComposition$ui_text()) {
            return TextRange.m8479boximpl(TextRangeKt.TextRange(this.compositionStart, this.compositionEnd));
        }
        return null;
    }

    public final int getCompositionEnd$ui_text() {
        return this.compositionEnd;
    }

    public final int getCompositionStart$ui_text() {
        return this.compositionStart;
    }

    public final int getCursor$ui_text() {
        int i = this.selectionStart;
        int i2 = this.selectionEnd;
        if (i == i2) {
            return i2;
        }
        return -1;
    }

    public final int getLength$ui_text() {
        return this.gapBuffer.getLength();
    }

    /* JADX INFO: renamed from: getSelection-d9O1mEE$ui_text, reason: not valid java name */
    public final long m8654getSelectiond9O1mEE$ui_text() {
        return TextRangeKt.TextRange(this.selectionStart, this.selectionEnd);
    }

    public final int getSelectionEnd$ui_text() {
        return this.selectionEnd;
    }

    public final int getSelectionStart$ui_text() {
        return this.selectionStart;
    }

    public final boolean hasComposition$ui_text() {
        return this.compositionStart != -1;
    }

    public final void replace$ui_text(int i, int i2, String str) {
        if (i < 0 || i > this.gapBuffer.getLength()) {
            bj.d(this.gapBuffer.getLength(), n7.c(i, "start (", ") offset is outside of text region "));
            return;
        }
        if (i2 < 0 || i2 > this.gapBuffer.getLength()) {
            bj.d(this.gapBuffer.getLength(), n7.c(i2, "end (", ") offset is outside of text region "));
        } else {
            if (i > i2) {
                fg.c(rz0.c(i, i2, "Do not set reversed range: ", " > "));
                return;
            }
            this.gapBuffer.replace(i, i2, str);
            setSelectionStart(str.length() + i);
            setSelectionEnd(str.length() + i);
            this.compositionStart = -1;
            this.compositionEnd = -1;
        }
    }

    public final void setComposition$ui_text(int i, int i2) {
        if (i < 0 || i > this.gapBuffer.getLength()) {
            bj.d(this.gapBuffer.getLength(), n7.c(i, "start (", ") offset is outside of text region "));
        } else if (i2 < 0 || i2 > this.gapBuffer.getLength()) {
            bj.d(this.gapBuffer.getLength(), n7.c(i2, "end (", ") offset is outside of text region "));
        } else if (i >= i2) {
            fg.c(rz0.c(i, i2, "Do not set reversed or empty range: ", " > "));
        } else {
            this.compositionStart = i;
            this.compositionEnd = i2;
        }
    }

    public final void setCursor$ui_text(int i) {
        setSelection$ui_text(i, i);
    }

    public final void setSelection$ui_text(int i, int i2) {
        if (i < 0 || i > this.gapBuffer.getLength()) {
            bj.d(this.gapBuffer.getLength(), n7.c(i, "start (", ") offset is outside of text region "));
        } else if (i2 < 0 || i2 > this.gapBuffer.getLength()) {
            bj.d(this.gapBuffer.getLength(), n7.c(i2, "end (", ") offset is outside of text region "));
        } else if (i > i2) {
            fg.c(rz0.c(i, i2, "Do not set reversed range: ", " > "));
        } else {
            setSelectionStart(i);
            setSelectionEnd(i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AnnotatedString toAnnotatedString$ui_text() {
        return new AnnotatedString(toString(), null, 2, 0 == true ? 1 : 0);
    }

    public String toString() {
        return this.gapBuffer.toString();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public final void replace$ui_text(int i, int i2, AnnotatedString annotatedString) {
        replace$ui_text(i, i2, annotatedString.getText());
    }

    public /* synthetic */ EditingBuffer(String str, long j, jh2 jh2Var) {
        this(str, j);
    }

    public /* synthetic */ EditingBuffer(AnnotatedString annotatedString, long j, jh2 jh2Var) {
        this(annotatedString, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private EditingBuffer(String str, long j) {
        this(new AnnotatedString(str, null, 2, 0 == true ? 1 : 0), j, (jh2) (0 == true ? 1 : 0));
    }
}
