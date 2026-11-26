package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Size;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class IntSizeKt {
    public static final long IntSize(int i, int i2) {
        return IntSize.m9208constructorimpl((((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32));
    }

    /* JADX INFO: renamed from: getCenter-ozmzZPI, reason: not valid java name */
    public static final long m9219getCenterozmzZPI(long j) {
        return IntOffset.m9164constructorimpl((((j << 32) >> 33) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | ((j >> 33) << 32));
    }

    /* JADX INFO: renamed from: getCenter-ozmzZPI$annotations, reason: not valid java name */
    public static /* synthetic */ void m9220getCenterozmzZPI$annotations(long j) {
    }

    /* JADX INFO: renamed from: roundToIntSize-uvyYCjk, reason: not valid java name */
    public static final long m9221roundToIntSizeuvyYCjk(long j) {
        int iRound = Math.round(Float.intBitsToFloat((int) (j >> 32)));
        return IntSize.m9208constructorimpl((((long) Math.round(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iRound) << 32));
    }

    /* JADX INFO: renamed from: times-O0kMr_c, reason: not valid java name */
    public static final long m9222timesO0kMr_c(int i, long j) {
        return IntSize.m9215timesYEO4UFw(j, i);
    }

    /* JADX INFO: renamed from: toIntRect-ozmzZPI, reason: not valid java name */
    public static final IntRect m9223toIntRectozmzZPI(long j) {
        return IntRectKt.m9203IntRectVbeCjmY(IntOffset.Companion.m9181getZeronOccac(), j);
    }

    /* JADX INFO: renamed from: toIntSize-uvyYCjk, reason: not valid java name */
    public static final long m9224toIntSizeuvyYCjk(long j) {
        int iIntBitsToFloat = (int) Float.intBitsToFloat((int) (j >> 32));
        return IntSize.m9208constructorimpl((((long) ((int) Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iIntBitsToFloat) << 32));
    }

    /* JADX INFO: renamed from: toSize-ozmzZPI, reason: not valid java name */
    public static final long m9225toSizeozmzZPI(long j) {
        float f = (int) (j >> 32);
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32));
    }
}
