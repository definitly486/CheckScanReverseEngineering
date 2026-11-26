package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.media3.muxer.MuxerUtil;
import defpackage.kx6;

/* JADX INFO: loaded from: classes.dex */
public final class TextSelectionDelegateKt {
    public static final float getHorizontalPosition(TextLayoutResult textLayoutResult, int i, boolean z, boolean z2) {
        return textLayoutResult.getHorizontalPosition(i, textLayoutResult.getBidiRunDirection(((!z || z2) && (z || !z2)) ? Math.max(i + (-1), 0) : i) == textLayoutResult.getParagraphDirection(i));
    }

    public static final long getSelectionHandleCoordinates(TextLayoutResult textLayoutResult, int i, boolean z, boolean z2) {
        int lineForOffset = textLayoutResult.getLineForOffset(i);
        if (lineForOffset >= textLayoutResult.getLineCount()) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(kx6.d(getHorizontalPosition(textLayoutResult, i, z, z2), 0.0f, (int) (textLayoutResult.m8462getSizeYbymL2g() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(kx6.d(textLayoutResult.getLineBottom(lineForOffset), 0.0f, (int) (textLayoutResult.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }
}
