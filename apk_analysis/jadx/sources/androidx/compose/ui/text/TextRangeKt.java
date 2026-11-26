package androidx.compose.ui.text;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class TextRangeKt {
    public static final long TextRange(int i, int i2) {
        return TextRange.m8480constructorimpl(packWithCheck(i, i2));
    }

    /* JADX INFO: renamed from: coerceIn-8ffj60Q, reason: not valid java name */
    public static final long m8497coerceIn8ffj60Q(long j, int i, int i2) {
        int iM8491getStartimpl = TextRange.m8491getStartimpl(j);
        if (iM8491getStartimpl < i) {
            iM8491getStartimpl = i;
        }
        if (iM8491getStartimpl > i2) {
            iM8491getStartimpl = i2;
        }
        int iM8486getEndimpl = TextRange.m8486getEndimpl(j);
        if (iM8486getEndimpl >= i) {
            i = iM8486getEndimpl;
        }
        if (i <= i2) {
            i2 = i;
        }
        return (iM8491getStartimpl == TextRange.m8491getStartimpl(j) && i2 == TextRange.m8486getEndimpl(j)) ? j : TextRange(iM8491getStartimpl, i2);
    }

    private static final long packWithCheck(int i, int i2) {
        if (!(i >= 0 && i2 >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("start and end cannot be negative. [start: " + i + ", end: " + i2 + ']');
        }
        return (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32);
    }

    /* JADX INFO: renamed from: substring-FDrldGo, reason: not valid java name */
    public static final String m8498substringFDrldGo(CharSequence charSequence, long j) {
        return charSequence.subSequence(TextRange.m8489getMinimpl(j), TextRange.m8488getMaximpl(j)).toString();
    }

    public static final long TextRange(int i) {
        return TextRange(i, i);
    }
}
