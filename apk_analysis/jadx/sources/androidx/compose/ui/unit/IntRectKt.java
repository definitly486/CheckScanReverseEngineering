package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class IntRectKt {
    /* JADX INFO: renamed from: IntRect-E1MhUcY, reason: not valid java name */
    public static final IntRect m9202IntRectE1MhUcY(long j, long j2) {
        return new IntRect(IntOffset.m9170getXimpl(j), IntOffset.m9171getYimpl(j), IntOffset.m9170getXimpl(j2), IntOffset.m9171getYimpl(j2));
    }

    /* JADX INFO: renamed from: IntRect-VbeCjmY, reason: not valid java name */
    public static final IntRect m9203IntRectVbeCjmY(long j, long j2) {
        return new IntRect(IntOffset.m9170getXimpl(j), IntOffset.m9171getYimpl(j), IntOffset.m9170getXimpl(j) + ((int) (j2 >> 32)), IntOffset.m9171getYimpl(j) + ((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: renamed from: IntRect-ar5cAso, reason: not valid java name */
    public static final IntRect m9204IntRectar5cAso(long j, int i) {
        return new IntRect(IntOffset.m9170getXimpl(j) - i, IntOffset.m9171getYimpl(j) - i, IntOffset.m9170getXimpl(j) + i, IntOffset.m9171getYimpl(j) + i);
    }

    public static final IntRect lerp(IntRect intRect, IntRect intRect2, float f) {
        return new IntRect(MathHelpersKt.lerp(intRect.getLeft(), intRect2.getLeft(), f), MathHelpersKt.lerp(intRect.getTop(), intRect2.getTop(), f), MathHelpersKt.lerp(intRect.getRight(), intRect2.getRight(), f), MathHelpersKt.lerp(intRect.getBottom(), intRect2.getBottom(), f));
    }

    public static final IntRect roundToIntRect(Rect rect) {
        return new IntRect(Math.round(rect.getLeft()), Math.round(rect.getTop()), Math.round(rect.getRight()), Math.round(rect.getBottom()));
    }

    public static final Rect toRect(IntRect intRect) {
        return new Rect(intRect.getLeft(), intRect.getTop(), intRect.getRight(), intRect.getBottom());
    }
}
