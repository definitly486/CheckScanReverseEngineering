package androidx.compose.ui.text.input;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;

/* JADX INFO: loaded from: classes2.dex */
public final class EditingBufferKt {
    /* JADX INFO: renamed from: updateRangeAfterDelete-pWDy79M, reason: not valid java name */
    public static final long m8655updateRangeAfterDeletepWDy79M(long j, long j2) {
        int iM8487getLengthimpl;
        int iM8489getMinimpl = TextRange.m8489getMinimpl(j);
        int iM8488getMaximpl = TextRange.m8488getMaximpl(j);
        if (TextRange.m8493intersects5zctL8(j2, j)) {
            if (TextRange.m8481contains5zctL8(j2, j)) {
                iM8489getMinimpl = TextRange.m8489getMinimpl(j2);
                iM8488getMaximpl = iM8489getMinimpl;
            } else {
                if (TextRange.m8481contains5zctL8(j, j2)) {
                    iM8487getLengthimpl = TextRange.m8487getLengthimpl(j2);
                } else if (TextRange.m8482containsimpl(j2, iM8489getMinimpl)) {
                    iM8489getMinimpl = TextRange.m8489getMinimpl(j2);
                    iM8487getLengthimpl = TextRange.m8487getLengthimpl(j2);
                } else {
                    iM8488getMaximpl = TextRange.m8489getMinimpl(j2);
                }
                iM8488getMaximpl -= iM8487getLengthimpl;
            }
        } else if (iM8488getMaximpl > TextRange.m8489getMinimpl(j2)) {
            iM8489getMinimpl -= TextRange.m8487getLengthimpl(j2);
            iM8487getLengthimpl = TextRange.m8487getLengthimpl(j2);
            iM8488getMaximpl -= iM8487getLengthimpl;
        }
        return TextRangeKt.TextRange(iM8489getMinimpl, iM8488getMaximpl);
    }
}
