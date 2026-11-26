package androidx.compose.foundation.text.input;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.bm3;
import defpackage.fm3;
import defpackage.j59;
import defpackage.kx6;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldBufferKt {
    /* JADX INFO: renamed from: adjustTextRange-vJH6DeI, reason: not valid java name */
    public static final long m2663adjustTextRangevJH6DeI(long j, int i, int i2, int i3) {
        int i4;
        int iM8489getMinimpl = TextRange.m8489getMinimpl(j);
        int iM8488getMaximpl = TextRange.m8488getMaximpl(j);
        if (iM8488getMaximpl < i) {
            return j;
        }
        if (iM8489getMinimpl <= i && i2 <= iM8488getMaximpl) {
            i4 = i3 - (i2 - i);
            if (iM8489getMinimpl == iM8488getMaximpl) {
            }
            i = iM8488getMaximpl + i4;
            return TextRangeKt.TextRange(iM8489getMinimpl, i);
        }
        if (iM8489getMinimpl > i && iM8488getMaximpl < i2) {
            i += i3;
            iM8489getMinimpl = i;
        } else if (iM8489getMinimpl >= i2) {
            i4 = i3 - (i2 - i);
        } else if (i < iM8489getMinimpl) {
            iM8489getMinimpl = i + i3;
            i = (i3 - (i2 - i)) + iM8488getMaximpl;
        }
        return TextRangeKt.TextRange(iM8489getMinimpl, i);
        iM8489getMinimpl += i4;
        i = iM8488getMaximpl + i4;
        return TextRangeKt.TextRange(iM8489getMinimpl, i);
    }

    public static final void delete(TextFieldBuffer textFieldBuffer, int i, int i2) {
        textFieldBuffer.replace(i, i2, "");
    }

    public static final void findCommonPrefixAndSuffix(CharSequence charSequence, CharSequence charSequence2, fm3<? super Integer, ? super Integer, ? super Integer, ? super Integer, j59> fm3Var) {
        int i;
        int length = charSequence.length();
        int length2 = charSequence2.length();
        int i2 = 0;
        if (charSequence.length() <= 0 || charSequence2.length() <= 0) {
            i = 0;
        } else {
            int i3 = 0;
            i = 0;
            boolean z = false;
            while (true) {
                if (i2 == 0) {
                    if (charSequence.charAt(i3) == charSequence2.charAt(i)) {
                        i3++;
                        i++;
                    } else {
                        i2 = 1;
                    }
                }
                if (!z) {
                    if (charSequence.charAt(length - 1) == charSequence2.charAt(length2 - 1)) {
                        length--;
                        length2--;
                    } else {
                        z = true;
                    }
                }
                if (i3 >= length || i >= length2 || (i2 != 0 && z)) {
                    break;
                }
            }
            i2 = i3;
        }
        if (i2 < length || i < length2) {
            fm3Var.invoke(Integer.valueOf(i2), Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(length2));
        }
    }

    public static final void forEachChange(TextFieldBuffer.ChangeList changeList, bm3<? super TextRange, ? super TextRange, j59> bm3Var) {
        for (int i = 0; i < changeList.getChangeCount(); i++) {
            bm3Var.invoke(TextRange.m8479boximpl(changeList.mo2662getRangejx7JFs(i)), TextRange.m8479boximpl(changeList.mo2661getOriginalRangejx7JFs(i)));
        }
    }

    public static final void forEachChangeReversed(TextFieldBuffer.ChangeList changeList, bm3<? super TextRange, ? super TextRange, j59> bm3Var) {
        for (int changeCount = changeList.getChangeCount() - 1; changeCount >= 0; changeCount--) {
            bm3Var.invoke(TextRange.m8479boximpl(changeList.mo2662getRangejx7JFs(changeCount)), TextRange.m8479boximpl(changeList.mo2661getOriginalRangejx7JFs(changeCount)));
        }
    }

    public static final void insert(TextFieldBuffer textFieldBuffer, int i, String str) {
        textFieldBuffer.replace(i, i, str);
    }

    public static final void placeCursorAtEnd(TextFieldBuffer textFieldBuffer) {
        textFieldBuffer.placeCursorBeforeCharAt(textFieldBuffer.getLength());
    }

    public static final void selectAll(TextFieldBuffer textFieldBuffer) {
        textFieldBuffer.m2659setSelection5zctL8(TextRangeKt.TextRange(0, textFieldBuffer.getLength()));
    }

    public static final void setSelectionCoerced(TextFieldBuffer textFieldBuffer, int i, int i2) {
        textFieldBuffer.m2659setSelection5zctL8(TextRangeKt.TextRange(kx6.f(i, 0, textFieldBuffer.getLength()), kx6.f(i2, 0, textFieldBuffer.getLength())));
    }

    public static /* synthetic */ void setSelectionCoerced$default(TextFieldBuffer textFieldBuffer, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = i;
        }
        setSelectionCoerced(textFieldBuffer, i, i2);
    }
}
