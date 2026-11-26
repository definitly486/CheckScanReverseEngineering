package androidx.compose.ui.layout;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class ContentScaleKt {
    /* JADX INFO: renamed from: computeFillHeight-iLBOSCw, reason: not valid java name */
    private static final float m7698computeFillHeightiLBOSCw(long j, long j2) {
        return Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) / Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: computeFillMaxDimension-iLBOSCw, reason: not valid java name */
    public static final float m7699computeFillMaxDimensioniLBOSCw(long j, long j2) {
        return Math.max(Float.intBitsToFloat((int) (j2 >> 32)) / Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) / Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: computeFillMinDimension-iLBOSCw, reason: not valid java name */
    public static final float m7700computeFillMinDimensioniLBOSCw(long j, long j2) {
        return Math.min(Float.intBitsToFloat((int) (j2 >> 32)) / Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) / Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: renamed from: computeFillWidth-iLBOSCw, reason: not valid java name */
    private static final float m7701computeFillWidthiLBOSCw(long j, long j2) {
        return Float.intBitsToFloat((int) (j2 >> 32)) / Float.intBitsToFloat((int) (j >> 32));
    }
}
