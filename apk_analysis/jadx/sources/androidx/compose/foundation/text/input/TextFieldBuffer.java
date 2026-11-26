package androidx.compose.foundation.text.input;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.input.internal.ChangeTracker;
import androidx.compose.foundation.text.input.internal.OffsetMappingCalculator;
import androidx.compose.foundation.text.input.internal.PartialGapBuffer;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.b36;
import defpackage.bg;
import defpackage.bj;
import defpackage.fg;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.n7;
import defpackage.rz0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldBuffer implements Appendable {
    public static final int $stable = 8;
    private ChangeTracker backingChangeTracker;
    private final PartialGapBuffer buffer;
    private boolean canCallAddStyle;
    private MutableVector<AnnotatedString.Range<AnnotatedString.Annotation>> composingAnnotations;
    private TextRange composition;
    private b36<TextHighlightType, TextRange> highlight;
    private final OffsetMappingCalculator offsetMappingCalculator;
    private final TextFieldCharSequence originalValue;
    private List<AnnotatedString.Range<AnnotatedString.Annotation>> outputTransformationAnnotations;
    private long selectionInChars;

    public interface ChangeList {
        int getChangeCount();

        /* JADX INFO: renamed from: getOriginalRange--jx7JFs, reason: not valid java name */
        long mo2661getOriginalRangejx7JFs(int i);

        /* JADX INFO: renamed from: getRange--jx7JFs, reason: not valid java name */
        long mo2662getRangejx7JFs(int i);
    }

    public TextFieldBuffer(TextFieldCharSequence textFieldCharSequence, ChangeTracker changeTracker, TextFieldCharSequence textFieldCharSequence2, OffsetMappingCalculator offsetMappingCalculator) {
        this.originalValue = textFieldCharSequence2;
        this.offsetMappingCalculator = offsetMappingCalculator;
        this.buffer = new PartialGapBuffer(textFieldCharSequence);
        MutableVector<AnnotatedString.Range<AnnotatedString.Annotation>> mutableVector = null;
        this.backingChangeTracker = changeTracker != null ? new ChangeTracker(changeTracker) : null;
        this.selectionInChars = textFieldCharSequence.m2665getSelectiond9O1mEE();
        this.composition = textFieldCharSequence.m2664getCompositionMzsxiRA();
        List<AnnotatedString.Range<AnnotatedString.Annotation>> composingAnnotations = textFieldCharSequence.getComposingAnnotations();
        if (composingAnnotations != null && !composingAnnotations.isEmpty()) {
            int size = textFieldCharSequence.getComposingAnnotations().size();
            AnnotatedString.Range[] rangeArr = new AnnotatedString.Range[size];
            for (int i = 0; i < size; i++) {
                rangeArr[i] = composingAnnotations$lambda$0(textFieldCharSequence, i);
            }
            mutableVector = new MutableVector<>(rangeArr, size);
        }
        this.composingAnnotations = mutableVector;
        this.canCallAddStyle = this.offsetMappingCalculator != null;
    }

    private final void clearChangeList() {
        getChangeTracker$foundation().clearChanges();
    }

    private static final AnnotatedString.Range composingAnnotations$lambda$0(TextFieldCharSequence textFieldCharSequence, int i) {
        return textFieldCharSequence.getComposingAnnotations().get(i);
    }

    public static /* synthetic */ void getChanges$annotations() {
    }

    private final void onTextWillChange(int i, int i2, int i3) {
        getChangeTracker$foundation().trackChange(i, i2, i3);
        OffsetMappingCalculator offsetMappingCalculator = this.offsetMappingCalculator;
        if (offsetMappingCalculator != null) {
            offsetMappingCalculator.recordEditOperation(i, i2, i3);
        }
        this.selectionInChars = TextFieldBufferKt.m2663adjustTextRangevJH6DeI(m2657getSelectiond9O1mEE(), i, i2, i3);
    }

    public static /* synthetic */ void replace$foundation$default(TextFieldBuffer textFieldBuffer, int i, int i2, CharSequence charSequence, int i3, int i4, int i5, Object obj) {
        if ((i5 & 8) != 0) {
            i3 = 0;
        }
        int i6 = i3;
        if ((i5 & 16) != 0) {
            i4 = charSequence.length();
        }
        textFieldBuffer.replace$foundation(i, i2, charSequence, i6, i4);
    }

    private final void requireValidIndex(int i, boolean z, boolean z2) {
        boolean z3 = false;
        int i2 = z ? 0 : -1;
        int length = getLength();
        if (!z2) {
            length++;
        }
        if (i2 <= i && i < length) {
            z3 = true;
        }
        if (z3) {
            return;
        }
        StringBuilder sbF = bg.f(i, i2, "Expected ", " to be in [", ", ");
        sbF.append(length);
        sbF.append(')');
        InlineClassHelperKt.throwIllegalArgumentException(sbF.toString());
    }

    /* JADX INFO: renamed from: requireValidRange-5zc-tL8, reason: not valid java name */
    private final void m2652requireValidRange5zctL8(long j) {
        long jTextRange = TextRangeKt.TextRange(0, getLength());
        if (TextRange.m8481contains5zctL8(jTextRange, j)) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("Expected " + ((Object) TextRange.m8494toStringimpl(j)) + " to be in " + ((Object) TextRange.m8494toStringimpl(jTextRange)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setComposition$foundation$default(TextFieldBuffer textFieldBuffer, int i, int i2, List list, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            list = null;
        }
        textFieldBuffer.setComposition$foundation(i, i2, list);
    }

    /* JADX INFO: renamed from: setComposition-OEnZFl4, reason: not valid java name */
    private final void m2653setCompositionOEnZFl4(TextRange textRange) {
        if (textRange != null && !TextRange.m8485getCollapsedimpl(textRange.m8495unboximpl())) {
            this.composition = textRange;
            return;
        }
        this.composition = null;
        MutableVector<AnnotatedString.Range<AnnotatedString.Annotation>> mutableVector = this.composingAnnotations;
        if (mutableVector != null) {
            mutableVector.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: toTextFieldCharSequence-wFTz33Y$foundation$default, reason: not valid java name */
    public static /* synthetic */ TextFieldCharSequence m2654toTextFieldCharSequencewFTz33Y$foundation$default(TextFieldBuffer textFieldBuffer, long j, TextRange textRange, List list, List list2, int i, Object obj) {
        List<AnnotatedString.Range<AnnotatedString.Annotation>> listAsMutableList;
        if ((i & 1) != 0) {
            j = textFieldBuffer.m2657getSelectiond9O1mEE();
        }
        long j2 = j;
        if ((i & 2) != 0) {
            textRange = textFieldBuffer.composition;
        }
        TextRange textRange2 = textRange;
        if ((i & 4) != 0) {
            MutableVector<AnnotatedString.Range<AnnotatedString.Annotation>> mutableVector = textFieldBuffer.composingAnnotations;
            list = (mutableVector == null || (listAsMutableList = mutableVector.asMutableList()) == null || listAsMutableList.isEmpty()) ? null : listAsMutableList;
        }
        return textFieldBuffer.m2660toTextFieldCharSequencewFTz33Y$foundation(j2, textRange2, list, (i & 8) != 0 ? null : list2);
    }

    public final void addAnnotation$foundation(AnnotatedString.Annotation annotation, int i, int i2) {
        if (!this.canCallAddStyle) {
            InlineClassHelperKt.throwIllegalStateException("You can add styling to a [TextFieldBuffer] only from an [OutputTransformation].");
        }
        List arrayList = this.outputTransformationAnnotations;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.outputTransformationAnnotations = arrayList;
        }
        if (arrayList != null) {
            arrayList.add(new AnnotatedString.Range(annotation, i, i2));
        }
    }

    public final void addStyle(SpanStyle spanStyle, int i, int i2) {
        addAnnotation$foundation(spanStyle, i, i2);
    }

    @Override // java.lang.Appendable
    public Appendable append(CharSequence charSequence, int i, int i2) {
        if (charSequence != null) {
            onTextWillChange(getLength(), getLength(), i2 - i);
            PartialGapBuffer partialGapBuffer = this.buffer;
            PartialGapBuffer.replace$default(partialGapBuffer, partialGapBuffer.length(), this.buffer.length(), charSequence.subSequence(i, i2), 0, 0, 24, null);
        }
        return this;
    }

    public final CharSequence asCharSequence() {
        return this.buffer;
    }

    public final char charAt(int i) {
        return this.buffer.charAt(i);
    }

    public final void clearHighlight$foundation() {
        this.highlight = null;
    }

    public final void commitComposition$foundation() {
        m2653setCompositionOEnZFl4(null);
    }

    public final boolean getCanCallAddStyle$foundation() {
        return this.canCallAddStyle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ChangeTracker getChangeTracker$foundation() {
        ChangeTracker changeTracker = this.backingChangeTracker;
        if (changeTracker != null) {
            return changeTracker;
        }
        ChangeTracker changeTracker2 = new ChangeTracker(null, 1, 0 == true ? 1 : 0);
        this.backingChangeTracker = changeTracker2;
        return changeTracker2;
    }

    public final ChangeList getChanges() {
        return getChangeTracker$foundation();
    }

    public final MutableVector<AnnotatedString.Range<AnnotatedString.Annotation>> getComposingAnnotations$foundation() {
        return this.composingAnnotations;
    }

    /* JADX INFO: renamed from: getComposition-MzsxiRA$foundation, reason: not valid java name */
    public final TextRange m2655getCompositionMzsxiRA$foundation() {
        return this.composition;
    }

    public final b36<TextHighlightType, TextRange> getHighlight$foundation() {
        return this.highlight;
    }

    public final int getLength() {
        return this.buffer.length();
    }

    /* JADX INFO: renamed from: getOriginalSelection-d9O1mEE, reason: not valid java name */
    public final long m2656getOriginalSelectiond9O1mEE() {
        return this.originalValue.m2665getSelectiond9O1mEE();
    }

    public final CharSequence getOriginalText() {
        return this.originalValue.getText();
    }

    public final TextFieldCharSequence getOriginalValue$foundation() {
        return this.originalValue;
    }

    public final List<AnnotatedString.Range<AnnotatedString.Annotation>> getOutputTransformationAnnotations$foundation() {
        return this.outputTransformationAnnotations;
    }

    /* JADX INFO: renamed from: getSelection-d9O1mEE, reason: not valid java name */
    public final long m2657getSelectiond9O1mEE() {
        return this.selectionInChars;
    }

    public final boolean hasComposition$foundation() {
        return this.composition != null;
    }

    public final boolean hasSelection() {
        return !TextRange.m8485getCollapsedimpl(m2657getSelectiond9O1mEE());
    }

    public final void placeCursorAfterCharAt(int i) {
        requireValidIndex(i, false, true);
        int i2 = i + 1;
        int length = getLength();
        if (i2 > length) {
            i2 = length;
        }
        this.selectionInChars = TextRangeKt.TextRange(i2);
    }

    public final void placeCursorBeforeCharAt(int i) {
        requireValidIndex(i, true, false);
        this.selectionInChars = TextRangeKt.TextRange(i);
    }

    public final void replace(int i, int i2, CharSequence charSequence) {
        replace$foundation(i, i2, charSequence, 0, charSequence.length());
    }

    public final void replace$foundation(int i, int i2, CharSequence charSequence, int i3, int i4) {
        if (!(i <= i2)) {
            InlineClassHelperKt.throwIllegalArgumentException("Expected start=" + i + " <= end=" + i2);
        }
        if (!(i3 <= i4)) {
            InlineClassHelperKt.throwIllegalArgumentException("Expected textStart=" + i3 + " <= textEnd=" + i4);
        }
        int iF = kx6.f(i, 0, getLength());
        int iF2 = kx6.f(i2, 0, getLength());
        int iF3 = kx6.f(i3, 0, charSequence.length());
        int iF4 = kx6.f(i4, 0, charSequence.length());
        onTextWillChange(iF, iF2, iF4 - iF3);
        this.buffer.replace(iF, iF2, charSequence, iF3, iF4);
        commitComposition$foundation();
        clearHighlight$foundation();
    }

    public final void revertAllChanges() {
        replace(0, getLength(), this.originalValue.toString());
        m2659setSelection5zctL8(this.originalValue.m2665getSelectiond9O1mEE());
        clearChangeList();
    }

    public final void setCanCallAddStyle$foundation(boolean z) {
        this.canCallAddStyle = z;
    }

    public final void setComposition$foundation(int i, int i2, List<AnnotatedString.Range<AnnotatedString.Annotation>> list) {
        if (i < 0 || i > this.buffer.length()) {
            bj.d(this.buffer.length(), n7.c(i, "start (", ") offset is outside of text region "));
            return;
        }
        if (i2 < 0 || i2 > this.buffer.length()) {
            bj.d(this.buffer.length(), n7.c(i2, "end (", ") offset is outside of text region "));
            return;
        }
        if (i >= i2) {
            fg.c(rz0.c(i, i2, "Do not set reversed or empty range: ", " > "));
            return;
        }
        m2653setCompositionOEnZFl4(TextRange.m8479boximpl(TextRangeKt.TextRange(i, i2)));
        MutableVector<AnnotatedString.Range<AnnotatedString.Annotation>> mutableVector = this.composingAnnotations;
        if (mutableVector != null) {
            mutableVector.clear();
        }
        List<AnnotatedString.Range<AnnotatedString.Annotation>> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        if (this.composingAnnotations == null) {
            this.composingAnnotations = new MutableVector<>(new AnnotatedString.Range[16], 0);
        }
        int size = list2.size();
        for (int i3 = 0; i3 < size; i3++) {
            AnnotatedString.Range<AnnotatedString.Annotation> range = list.get(i3);
            MutableVector<AnnotatedString.Range<AnnotatedString.Annotation>> mutableVector2 = this.composingAnnotations;
            if (mutableVector2 != null) {
                mutableVector2.add(AnnotatedString.Range.copy$default(range, null, range.getStart() + i, range.getEnd() + i, null, 9, null));
            }
        }
    }

    /* JADX INFO: renamed from: setHighlight-K7f2yys$foundation, reason: not valid java name */
    public final void m2658setHighlightK7f2yys$foundation(int i, int i2, int i3) {
        if (i2 >= i3) {
            fg.c(rz0.c(i2, i3, "Do not set reversed or empty range: ", " > "));
            return;
        }
        this.highlight = new b36<>(TextHighlightType.m2671boximpl(i), TextRange.m8479boximpl(TextRangeKt.TextRange(kx6.f(i2, 0, getLength()), kx6.f(i3, 0, getLength()))));
    }

    public final void setOutputTransformationAnnotations$foundation(List<AnnotatedString.Range<AnnotatedString.Annotation>> list) {
        this.outputTransformationAnnotations = list;
    }

    /* JADX INFO: renamed from: setSelection-5zc-tL8, reason: not valid java name */
    public final void m2659setSelection5zctL8(long j) {
        m2652requireValidRange5zctL8(j);
        this.selectionInChars = j;
        this.highlight = null;
    }

    public final void setTextIfChanged$foundation(CharSequence charSequence) {
        int i;
        int i2;
        PartialGapBuffer partialGapBuffer = this.buffer;
        int length = partialGapBuffer.length();
        int length2 = charSequence.length();
        boolean z = false;
        if (partialGapBuffer.length() <= 0 || charSequence.length() <= 0) {
            i = 0;
            i2 = 0;
        } else {
            int i3 = 0;
            int i4 = 0;
            boolean z2 = false;
            while (true) {
                if (!z) {
                    if (partialGapBuffer.charAt(i3) == charSequence.charAt(i4)) {
                        i3++;
                        i4++;
                    } else {
                        z = true;
                    }
                }
                if (!z2) {
                    if (partialGapBuffer.charAt(length - 1) == charSequence.charAt(length2 - 1)) {
                        length--;
                        length2--;
                    } else {
                        z2 = true;
                    }
                }
                if (i3 >= length || i4 >= length2 || (z && z2)) {
                    break;
                }
            }
            i = i3;
            i2 = i4;
        }
        int i5 = length;
        int i6 = length2;
        if (i < i5 || i2 < i6) {
            replace$foundation(i, i5, charSequence, i2, i6);
        }
    }

    public String toString() {
        return this.buffer.toString();
    }

    /* JADX INFO: renamed from: toTextFieldCharSequence-wFTz33Y$foundation, reason: not valid java name */
    public final TextFieldCharSequence m2660toTextFieldCharSequencewFTz33Y$foundation(long j, TextRange textRange, List<AnnotatedString.Range<AnnotatedString.Annotation>> list, List<AnnotatedString.Range<AnnotatedString.Annotation>> list2) {
        return new TextFieldCharSequence(this.buffer.toString(), j, textRange, null, list, list2, 8, null);
    }

    public final void addStyle(ParagraphStyle paragraphStyle, int i, int i2) {
        addAnnotation$foundation(paragraphStyle, i, i2);
    }

    @Override // java.lang.Appendable
    public Appendable append(CharSequence charSequence) {
        if (charSequence != null) {
            onTextWillChange(getLength(), getLength(), charSequence.length());
            PartialGapBuffer partialGapBuffer = this.buffer;
            PartialGapBuffer.replace$default(partialGapBuffer, partialGapBuffer.length(), this.buffer.length(), charSequence, 0, 0, 24, null);
        }
        return this;
    }

    @Override // java.lang.Appendable
    public Appendable append(char c) {
        onTextWillChange(getLength(), getLength(), 1);
        PartialGapBuffer partialGapBuffer = this.buffer;
        PartialGapBuffer.replace$default(partialGapBuffer, partialGapBuffer.length(), this.buffer.length(), String.valueOf(c), 0, 0, 24, null);
        return this;
    }

    public /* synthetic */ TextFieldBuffer(TextFieldCharSequence textFieldCharSequence, ChangeTracker changeTracker, TextFieldCharSequence textFieldCharSequence2, OffsetMappingCalculator offsetMappingCalculator, int i, jh2 jh2Var) {
        this(textFieldCharSequence, (i & 2) != 0 ? null : changeTracker, (i & 4) != 0 ? textFieldCharSequence : textFieldCharSequence2, (i & 8) != 0 ? null : offsetMappingCalculator);
    }
}
