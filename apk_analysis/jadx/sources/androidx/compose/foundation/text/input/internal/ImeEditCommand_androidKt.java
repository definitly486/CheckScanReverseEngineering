package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.input.TextFieldBuffer;
import androidx.compose.foundation.text.input.TextFieldBufferKt;
import androidx.compose.foundation.text.input.internal.ImeEditCommand_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.j59;
import defpackage.kx6;
import defpackage.nl3;
import defpackage.sy2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ImeEditCommand_androidKt {
    public static final void commitText(ImeEditCommandScope imeEditCommandScope, final String str, final int i) {
        imeEditCommandScope.edit(new nl3() { // from class: r24
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ImeEditCommand_androidKt.commitText$lambda$0(str, i, (TextFieldBuffer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 commitText$lambda$0(String str, int i, TextFieldBuffer textFieldBuffer) {
        TextRange textRangeM2655getCompositionMzsxiRA$foundation = textFieldBuffer.m2655getCompositionMzsxiRA$foundation();
        if (textRangeM2655getCompositionMzsxiRA$foundation != null) {
            imeReplace(textFieldBuffer, TextRange.m8491getStartimpl(textRangeM2655getCompositionMzsxiRA$foundation.m8495unboximpl()), TextRange.m8486getEndimpl(textRangeM2655getCompositionMzsxiRA$foundation.m8495unboximpl()), str);
        } else {
            imeReplace(textFieldBuffer, TextRange.m8489getMinimpl(textFieldBuffer.m2657getSelectiond9O1mEE()), TextRange.m8488getMaximpl(textFieldBuffer.m2657getSelectiond9O1mEE()), str);
        }
        int iM8489getMinimpl = TextRange.m8489getMinimpl(textFieldBuffer.m2657getSelectiond9O1mEE());
        textFieldBuffer.m2659setSelection5zctL8(TextRangeKt.TextRange(kx6.f(i > 0 ? (iM8489getMinimpl + i) - 1 : (iM8489getMinimpl + i) - str.length(), 0, textFieldBuffer.getLength())));
        return j59.a;
    }

    public static final void deleteSurroundingText(final ImeEditCommandScope imeEditCommandScope, final int i, final int i2) {
        imeEditCommandScope.edit(new nl3() { // from class: s24
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ImeEditCommand_androidKt.deleteSurroundingText$lambda$0(i, i2, imeEditCommandScope, (TextFieldBuffer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 deleteSurroundingText$lambda$0(int i, int i2, ImeEditCommandScope imeEditCommandScope, TextFieldBuffer textFieldBuffer) {
        if (!(i >= 0 && i2 >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i + " and " + i2 + " respectively.");
        }
        long jMo2693mapToTransformedGEjPoXI = imeEditCommandScope.mo2693mapToTransformedGEjPoXI(textFieldBuffer.m2657getSelectiond9O1mEE());
        int iM8488getMaximpl = TextRange.m8488getMaximpl(jMo2693mapToTransformedGEjPoXI);
        int transformedLength = iM8488getMaximpl + i2;
        if (((i2 ^ transformedLength) & (iM8488getMaximpl ^ transformedLength)) < 0) {
            transformedLength = imeEditCommandScope.getTransformedLength();
        }
        long jMo2692mapFromTransformedGEjPoXI = imeEditCommandScope.mo2692mapFromTransformedGEjPoXI(TextRangeKt.TextRange(TextRange.m8488getMaximpl(jMo2693mapToTransformedGEjPoXI), Math.min(transformedLength, imeEditCommandScope.getTransformedLength())));
        imeDelete(textFieldBuffer, TextRange.m8489getMinimpl(jMo2692mapFromTransformedGEjPoXI), TextRange.m8488getMaximpl(jMo2692mapFromTransformedGEjPoXI));
        int iM8489getMinimpl = TextRange.m8489getMinimpl(jMo2693mapToTransformedGEjPoXI);
        int i3 = iM8489getMinimpl - i;
        if (((i ^ iM8489getMinimpl) & (iM8489getMinimpl ^ i3)) < 0) {
            i3 = 0;
        }
        long jMo2692mapFromTransformedGEjPoXI2 = imeEditCommandScope.mo2692mapFromTransformedGEjPoXI(TextRangeKt.TextRange(Math.max(0, i3), TextRange.m8489getMinimpl(jMo2693mapToTransformedGEjPoXI)));
        imeDelete(textFieldBuffer, TextRange.m8489getMinimpl(jMo2692mapFromTransformedGEjPoXI2), TextRange.m8488getMaximpl(jMo2692mapFromTransformedGEjPoXI2));
        return j59.a;
    }

    public static final void deleteSurroundingTextInCodePoints(ImeEditCommandScope imeEditCommandScope, final int i, final int i2) {
        imeEditCommandScope.edit(new nl3() { // from class: o24
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ImeEditCommand_androidKt.deleteSurroundingTextInCodePoints$lambda$0(i, i2, (TextFieldBuffer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 deleteSurroundingTextInCodePoints$lambda$0(int i, int i2, TextFieldBuffer textFieldBuffer) {
        if (!(i >= 0 && i2 >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i + " and " + i2 + " respectively.");
        }
        int iM8489getMinimpl = 0;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iM8489getMinimpl + 1;
            if (TextRange.m8489getMinimpl(textFieldBuffer.m2657getSelectiond9O1mEE()) <= i4) {
                iM8489getMinimpl = TextRange.m8489getMinimpl(textFieldBuffer.m2657getSelectiond9O1mEE());
                break;
            }
            iM8489getMinimpl = isSurrogatePair(textFieldBuffer.asCharSequence().charAt((TextRange.m8489getMinimpl(textFieldBuffer.m2657getSelectiond9O1mEE()) - i4) - 1), textFieldBuffer.asCharSequence().charAt(TextRange.m8489getMinimpl(textFieldBuffer.m2657getSelectiond9O1mEE()) - i4)) ? iM8489getMinimpl + 2 : i4;
        }
        int length = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = length + 1;
            if (TextRange.m8488getMaximpl(textFieldBuffer.m2657getSelectiond9O1mEE()) + i6 >= textFieldBuffer.getLength()) {
                length = textFieldBuffer.getLength() - TextRange.m8488getMaximpl(textFieldBuffer.m2657getSelectiond9O1mEE());
                break;
            }
            length = isSurrogatePair(textFieldBuffer.asCharSequence().charAt((TextRange.m8488getMaximpl(textFieldBuffer.m2657getSelectiond9O1mEE()) + i6) - 1), textFieldBuffer.asCharSequence().charAt(TextRange.m8488getMaximpl(textFieldBuffer.m2657getSelectiond9O1mEE()) + i6)) ? length + 2 : i6;
        }
        imeDelete(textFieldBuffer, TextRange.m8488getMaximpl(textFieldBuffer.m2657getSelectiond9O1mEE()), TextRange.m8488getMaximpl(textFieldBuffer.m2657getSelectiond9O1mEE()) + length);
        imeDelete(textFieldBuffer, TextRange.m8489getMinimpl(textFieldBuffer.m2657getSelectiond9O1mEE()) - iM8489getMinimpl, TextRange.m8489getMinimpl(textFieldBuffer.m2657getSelectiond9O1mEE()));
        return j59.a;
    }

    public static final void finishComposingText(ImeEditCommandScope imeEditCommandScope) {
        imeEditCommandScope.edit(new sy2(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 finishComposingText$lambda$0(TextFieldBuffer textFieldBuffer) {
        textFieldBuffer.commitComposition$foundation();
        return j59.a;
    }

    public static final void imeDelete(TextFieldBuffer textFieldBuffer, int i, int i2) {
        TextRange textRangeM2655getCompositionMzsxiRA$foundation = textFieldBuffer.m2655getCompositionMzsxiRA$foundation();
        int iMin = Math.min(i, i2);
        int iMax = Math.max(i, i2);
        TextFieldBufferKt.delete(textFieldBuffer, iMin, iMax);
        if (textRangeM2655getCompositionMzsxiRA$foundation != null) {
            textRangeM2655getCompositionMzsxiRA$foundation.m8495unboximpl();
            long jM2663adjustTextRangevJH6DeI = TextFieldBufferKt.m2663adjustTextRangevJH6DeI(textRangeM2655getCompositionMzsxiRA$foundation.m8495unboximpl(), iMin, iMax, 0);
            if (TextRange.m8485getCollapsedimpl(jM2663adjustTextRangevJH6DeI)) {
                textFieldBuffer.commitComposition$foundation();
            } else {
                TextFieldBuffer.setComposition$foundation$default(textFieldBuffer, TextRange.m8489getMinimpl(jM2663adjustTextRangevJH6DeI), TextRange.m8488getMaximpl(jM2663adjustTextRangevJH6DeI), null, 4, null);
            }
        }
    }

    public static final void imeReplace(TextFieldBuffer textFieldBuffer, int i, int i2, CharSequence charSequence) {
        int iMin = Math.min(i, i2);
        int iMax = Math.max(i, i2);
        int i3 = 0;
        int i4 = iMin;
        while (i4 < iMax && i3 < charSequence.length() && charSequence.charAt(i3) == textFieldBuffer.asCharSequence().charAt(i4)) {
            i3++;
            i4++;
        }
        int length = charSequence.length();
        while (iMax > i4 && length > i3 && charSequence.charAt(length - 1) == textFieldBuffer.asCharSequence().charAt(iMax - 1)) {
            length--;
            iMax--;
        }
        if (i4 == iMax && i3 == length) {
            textFieldBuffer.commitComposition$foundation();
            textFieldBuffer.clearHighlight$foundation();
        } else {
            textFieldBuffer.replace(i4, iMax, charSequence.subSequence(i3, length));
        }
        textFieldBuffer.m2659setSelection5zctL8(TextRangeKt.TextRange(charSequence.length() + iMin));
    }

    private static final boolean isSurrogatePair(char c, char c2) {
        return Character.isHighSurrogate(c) && Character.isLowSurrogate(c2);
    }

    public static final void setComposingRegion(final ImeEditCommandScope imeEditCommandScope, final int i, final int i2) {
        imeEditCommandScope.edit(new nl3() { // from class: t24
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ImeEditCommand_androidKt.setComposingRegion$lambda$0(i, i2, imeEditCommandScope, (TextFieldBuffer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setComposingRegion$lambda$0(int i, int i2, ImeEditCommandScope imeEditCommandScope, TextFieldBuffer textFieldBuffer) {
        if (textFieldBuffer.hasComposition$foundation()) {
            textFieldBuffer.commitComposition$foundation();
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        long jMo2692mapFromTransformedGEjPoXI = imeEditCommandScope.mo2692mapFromTransformedGEjPoXI(TextRangeKt.TextRange(i, i2));
        int iF = kx6.f(TextRange.m8489getMinimpl(jMo2692mapFromTransformedGEjPoXI), 0, textFieldBuffer.getLength());
        int iF2 = kx6.f(TextRange.m8488getMaximpl(jMo2692mapFromTransformedGEjPoXI), 0, textFieldBuffer.getLength());
        if (iF != iF2) {
            if (iF < iF2) {
                TextFieldBuffer.setComposition$foundation$default(textFieldBuffer, iF, iF2, null, 4, null);
            } else {
                TextFieldBuffer.setComposition$foundation$default(textFieldBuffer, iF2, iF, null, 4, null);
            }
        }
        return j59.a;
    }

    public static final void setComposingText(ImeEditCommandScope imeEditCommandScope, final String str, final int i, final List<AnnotatedString.Range<AnnotatedString.Annotation>> list) {
        imeEditCommandScope.edit(new nl3() { // from class: q24
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ImeEditCommand_androidKt.setComposingText$lambda$0(str, list, i, (TextFieldBuffer) obj);
            }
        });
    }

    public static /* synthetic */ void setComposingText$default(ImeEditCommandScope imeEditCommandScope, String str, int i, List list, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            list = null;
        }
        setComposingText(imeEditCommandScope, str, i, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setComposingText$lambda$0(String str, List list, int i, TextFieldBuffer textFieldBuffer) {
        TextRange textRangeM2655getCompositionMzsxiRA$foundation = textFieldBuffer.m2655getCompositionMzsxiRA$foundation();
        if (textRangeM2655getCompositionMzsxiRA$foundation != null) {
            imeReplace(textFieldBuffer, TextRange.m8491getStartimpl(textRangeM2655getCompositionMzsxiRA$foundation.m8495unboximpl()), TextRange.m8486getEndimpl(textRangeM2655getCompositionMzsxiRA$foundation.m8495unboximpl()), str);
            if (str.length() > 0) {
                textFieldBuffer.setComposition$foundation(TextRange.m8491getStartimpl(textRangeM2655getCompositionMzsxiRA$foundation.m8495unboximpl()), str.length() + TextRange.m8491getStartimpl(textRangeM2655getCompositionMzsxiRA$foundation.m8495unboximpl()), list);
            }
        } else {
            int iM8489getMinimpl = TextRange.m8489getMinimpl(textFieldBuffer.m2657getSelectiond9O1mEE());
            imeReplace(textFieldBuffer, iM8489getMinimpl, TextRange.m8488getMaximpl(textFieldBuffer.m2657getSelectiond9O1mEE()), str);
            if (str.length() > 0) {
                textFieldBuffer.setComposition$foundation(iM8489getMinimpl, str.length() + iM8489getMinimpl, list);
            }
        }
        int iM8489getMinimpl2 = TextRange.m8489getMinimpl(textFieldBuffer.m2657getSelectiond9O1mEE());
        textFieldBuffer.m2659setSelection5zctL8(TextRangeKt.TextRange(kx6.f(i > 0 ? (iM8489getMinimpl2 + i) - 1 : (iM8489getMinimpl2 + i) - str.length(), 0, textFieldBuffer.getLength())));
        return j59.a;
    }

    public static final void setSelection(final ImeEditCommandScope imeEditCommandScope, final int i, final int i2) {
        imeEditCommandScope.edit(new nl3() { // from class: p24
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                int i3 = i;
                return ImeEditCommand_androidKt.setSelection$lambda$0(imeEditCommandScope, i3, i2, (TextFieldBuffer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setSelection$lambda$0(ImeEditCommandScope imeEditCommandScope, int i, int i2, TextFieldBuffer textFieldBuffer) {
        long jMo2693mapToTransformedGEjPoXI = imeEditCommandScope.mo2693mapToTransformedGEjPoXI(TextRangeKt.TextRange(0, textFieldBuffer.getLength()));
        int iM8489getMinimpl = TextRange.m8489getMinimpl(jMo2693mapToTransformedGEjPoXI);
        int iM8488getMaximpl = TextRange.m8488getMaximpl(jMo2693mapToTransformedGEjPoXI);
        if (i < iM8489getMinimpl) {
            i = iM8489getMinimpl;
        }
        if (i <= iM8488getMaximpl) {
            iM8488getMaximpl = i;
        }
        int iM8489getMinimpl2 = TextRange.m8489getMinimpl(jMo2693mapToTransformedGEjPoXI);
        int iM8488getMaximpl2 = TextRange.m8488getMaximpl(jMo2693mapToTransformedGEjPoXI);
        if (i2 < iM8489getMinimpl2) {
            i2 = iM8489getMinimpl2;
        }
        if (i2 <= iM8488getMaximpl2) {
            iM8488getMaximpl2 = i2;
        }
        textFieldBuffer.m2659setSelection5zctL8(imeEditCommandScope.mo2692mapFromTransformedGEjPoXI(TextRangeKt.TextRange(iM8488getMaximpl, iM8488getMaximpl2)));
        return j59.a;
    }
}
