package androidx.compose.foundation.text.input;

import androidx.compose.foundation.text.input.internal.ToCharArray_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.aa4;
import defpackage.b36;
import defpackage.jh2;
import defpackage.ra8;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldCharSequence implements CharSequence {
    public static final int $stable = 8;
    private final List<AnnotatedString.Range<AnnotatedString.Annotation>> composingAnnotations;
    private final TextRange composition;
    private final b36<TextHighlightType, TextRange> highlight;
    private final List<AnnotatedString.Range<AnnotatedString.Annotation>> outputAnnotations;
    private final long selection;
    private final CharSequence text;

    private TextFieldCharSequence(CharSequence charSequence, long j, TextRange textRange, b36<TextHighlightType, TextRange> b36Var, List<AnnotatedString.Range<AnnotatedString.Annotation>> list, List<AnnotatedString.Range<AnnotatedString.Annotation>> list2) {
        this.composingAnnotations = list;
        this.outputAnnotations = list2;
        this.text = charSequence instanceof TextFieldCharSequence ? ((TextFieldCharSequence) charSequence).text : charSequence;
        this.selection = TextRangeKt.m8497coerceIn8ffj60Q(j, 0, charSequence.length());
        this.composition = textRange != null ? TextRange.m8479boximpl(TextRangeKt.m8497coerceIn8ffj60Q(textRange.m8495unboximpl(), 0, charSequence.length())) : null;
        this.highlight = b36Var != null ? b36.a(b36Var, null, TextRange.m8479boximpl(TextRangeKt.m8497coerceIn8ffj60Q(b36Var.c.m8495unboximpl(), 0, charSequence.length())), 1) : null;
    }

    @Override // java.lang.CharSequence
    public final /* bridge */ char charAt(int i) {
        return get(i);
    }

    public final boolean contentEquals(CharSequence charSequence) {
        return ra8.s(this.text, charSequence);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TextFieldCharSequence.class != obj.getClass()) {
            return false;
        }
        TextFieldCharSequence textFieldCharSequence = (TextFieldCharSequence) obj;
        return TextRange.m8484equalsimpl0(this.selection, textFieldCharSequence.selection) && aa4.e(this.composition, textFieldCharSequence.composition) && aa4.e(this.highlight, textFieldCharSequence.highlight) && aa4.e(this.composingAnnotations, textFieldCharSequence.composingAnnotations) && contentEquals(textFieldCharSequence.text);
    }

    public char get(int i) {
        return this.text.charAt(i);
    }

    public final List<AnnotatedString.Range<AnnotatedString.Annotation>> getComposingAnnotations() {
        return this.composingAnnotations;
    }

    /* JADX INFO: renamed from: getComposition-MzsxiRA, reason: not valid java name */
    public final TextRange m2664getCompositionMzsxiRA() {
        return this.composition;
    }

    public final b36<TextHighlightType, TextRange> getHighlight() {
        return this.highlight;
    }

    public int getLength() {
        return this.text.length();
    }

    public final List<AnnotatedString.Range<AnnotatedString.Annotation>> getOutputAnnotations() {
        return this.outputAnnotations;
    }

    /* JADX INFO: renamed from: getSelection-d9O1mEE, reason: not valid java name */
    public final long m2665getSelectiond9O1mEE() {
        return this.selection;
    }

    public final CharSequence getText() {
        return this.text;
    }

    public int hashCode() {
        int iM8492hashCodeimpl = (TextRange.m8492hashCodeimpl(this.selection) + (this.text.hashCode() * 31)) * 31;
        TextRange textRange = this.composition;
        int iM8492hashCodeimpl2 = (iM8492hashCodeimpl + (textRange != null ? TextRange.m8492hashCodeimpl(textRange.m8495unboximpl()) : 0)) * 31;
        b36<TextHighlightType, TextRange> b36Var = this.highlight;
        int iHashCode = (iM8492hashCodeimpl2 + (b36Var != null ? b36Var.hashCode() : 0)) * 31;
        List<AnnotatedString.Range<AnnotatedString.Annotation>> list = this.composingAnnotations;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    @Override // java.lang.CharSequence
    public final /* bridge */ int length() {
        return getLength();
    }

    public final boolean shouldShowSelection() {
        return this.highlight == null;
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.text.subSequence(i, i2);
    }

    public final void toCharArray(char[] cArr, int i, int i2, int i3) {
        ToCharArray_androidKt.toCharArray(this.text, cArr, i, i2, i3);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.text.toString();
    }

    public /* synthetic */ TextFieldCharSequence(CharSequence charSequence, long j, TextRange textRange, b36 b36Var, List list, List list2, jh2 jh2Var) {
        this(charSequence, j, textRange, b36Var, list, list2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TextFieldCharSequence(CharSequence charSequence, long j, TextRange textRange, b36 b36Var, List list, List list2, int i, jh2 jh2Var) {
        CharSequence charSequence2 = (i & 1) != 0 ? "" : charSequence;
        long jM8496getZerod9O1mEE = (i & 2) != 0 ? TextRange.Companion.m8496getZerod9O1mEE() : j;
        TextRange textRange2 = (i & 4) != 0 ? null : textRange;
        b36 b36Var2 = (i & 8) != 0 ? null : b36Var;
        List list3 = (i & 16) != 0 ? null : list;
        this(charSequence2, jM8496getZerod9O1mEE, textRange2, b36Var2, list3, (i & 32) == 0 ? list2 : null, null);
    }
}
