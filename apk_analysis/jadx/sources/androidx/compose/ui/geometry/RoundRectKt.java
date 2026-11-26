package androidx.compose.ui.geometry;

import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class RoundRectKt {
    public static final RoundRect RoundRect(float f, float f2, float f3, float f4, float f5, float f6) {
        long jM5941constructorimpl = CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(f5)) << 32) | (((long) Float.floatToRawIntBits(f6)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return new RoundRect(f, f2, f3, f4, jM5941constructorimpl, jM5941constructorimpl, jM5941constructorimpl, jM5941constructorimpl, null);
    }

    /* JADX INFO: renamed from: RoundRect-ZAM2FJo, reason: not valid java name */
    public static final RoundRect m6039RoundRectZAM2FJo(Rect rect, long j, long j2, long j3, long j4) {
        return new RoundRect(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), j, j2, j3, j4, null);
    }

    /* JADX INFO: renamed from: RoundRect-gG7oq9Y, reason: not valid java name */
    public static final RoundRect m6041RoundRectgG7oq9Y(float f, float f2, float f3, float f4, long j) {
        return RoundRect(f, f2, f3, f4, Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: renamed from: RoundRect-sniSvfs, reason: not valid java name */
    public static final RoundRect m6042RoundRectsniSvfs(Rect rect, long j) {
        return RoundRect(rect, Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    public static final Rect getBoundingRect(RoundRect roundRect) {
        return new Rect(roundRect.getLeft(), roundRect.getTop(), roundRect.getRight(), roundRect.getBottom());
    }

    public static final long getCenter(RoundRect roundRect) {
        float width = (roundRect.getWidth() / 2.0f) + roundRect.getLeft();
        float height = (roundRect.getHeight() / 2.0f) + roundRect.getTop();
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(width)) << 32) | (((long) Float.floatToRawIntBits(height)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static final float getMaxDimension(RoundRect roundRect) {
        return Math.max(Math.abs(roundRect.getWidth()), Math.abs(roundRect.getHeight()));
    }

    public static final float getMinDimension(RoundRect roundRect) {
        return Math.min(Math.abs(roundRect.getWidth()), Math.abs(roundRect.getHeight()));
    }

    public static final Rect getSafeInnerRect(RoundRect roundRect) {
        float fMax = Math.max(Float.intBitsToFloat((int) (roundRect.m6035getBottomLeftCornerRadiuskKHJgLs() >> 32)), Float.intBitsToFloat((int) (roundRect.m6037getTopLeftCornerRadiuskKHJgLs() >> 32)));
        float fMax2 = Math.max(Float.intBitsToFloat((int) (roundRect.m6037getTopLeftCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (roundRect.m6038getTopRightCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        return new Rect((fMax * 0.29289323f) + roundRect.getLeft(), (fMax2 * 0.29289323f) + roundRect.getTop(), roundRect.getRight() - (Math.max(Float.intBitsToFloat((int) (roundRect.m6038getTopRightCornerRadiuskKHJgLs() >> 32)), Float.intBitsToFloat((int) (roundRect.m6036getBottomRightCornerRadiuskKHJgLs() >> 32))) * 0.29289323f), roundRect.getBottom() - (Math.max(Float.intBitsToFloat((int) (roundRect.m6036getBottomRightCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (roundRect.m6035getBottomLeftCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) * 0.29289323f));
    }

    public static final boolean isCircle(RoundRect roundRect) {
        return roundRect.getWidth() == roundRect.getHeight() && isEllipse(roundRect);
    }

    public static final boolean isEllipse(RoundRect roundRect) {
        return roundRect.m6037getTopLeftCornerRadiuskKHJgLs() == roundRect.m6038getTopRightCornerRadiuskKHJgLs() && roundRect.m6038getTopRightCornerRadiuskKHJgLs() == roundRect.m6036getBottomRightCornerRadiuskKHJgLs() && roundRect.m6036getBottomRightCornerRadiuskKHJgLs() == roundRect.m6035getBottomLeftCornerRadiuskKHJgLs() && ((double) roundRect.getWidth()) <= ((double) Float.intBitsToFloat((int) (roundRect.m6037getTopLeftCornerRadiuskKHJgLs() >> 32))) * 2.0d && ((double) roundRect.getHeight()) <= ((double) Float.intBitsToFloat((int) (roundRect.m6037getTopLeftCornerRadiuskKHJgLs() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) * 2.0d;
    }

    public static final boolean isEmpty(RoundRect roundRect) {
        return roundRect.getLeft() >= roundRect.getRight() || roundRect.getTop() >= roundRect.getBottom();
    }

    public static final boolean isFinite(RoundRect roundRect) {
        return (Float.floatToRawIntBits(roundRect.getLeft()) & Integer.MAX_VALUE) < 2139095040 && (Float.floatToRawIntBits(roundRect.getTop()) & Integer.MAX_VALUE) < 2139095040 && (Float.floatToRawIntBits(roundRect.getRight()) & Integer.MAX_VALUE) < 2139095040 && (Float.floatToRawIntBits(roundRect.getBottom()) & Integer.MAX_VALUE) < 2139095040;
    }

    public static final boolean isRect(RoundRect roundRect) {
        long jM6037getTopLeftCornerRadiuskKHJgLs = roundRect.m6037getTopLeftCornerRadiuskKHJgLs() & 9223372034707292159L;
        if (((~jM6037getTopLeftCornerRadiuskKHJgLs) & (jM6037getTopLeftCornerRadiuskKHJgLs - InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) == 0) {
            return false;
        }
        long jM6038getTopRightCornerRadiuskKHJgLs = roundRect.m6038getTopRightCornerRadiuskKHJgLs() & 9223372034707292159L;
        if (((~jM6038getTopRightCornerRadiuskKHJgLs) & (jM6038getTopRightCornerRadiuskKHJgLs - InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) == 0) {
            return false;
        }
        long jM6035getBottomLeftCornerRadiuskKHJgLs = roundRect.m6035getBottomLeftCornerRadiuskKHJgLs() & 9223372034707292159L;
        if (((~jM6035getBottomLeftCornerRadiuskKHJgLs) & (jM6035getBottomLeftCornerRadiuskKHJgLs - InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) == 0) {
            return false;
        }
        long jM6036getBottomRightCornerRadiuskKHJgLs = roundRect.m6036getBottomRightCornerRadiuskKHJgLs() & 9223372034707292159L;
        return (((~jM6036getBottomRightCornerRadiuskKHJgLs) & (jM6036getBottomRightCornerRadiuskKHJgLs - InlineClassHelperKt.Uint64Low32)) & (-9223372034707292160L)) != 0;
    }

    public static final boolean isSimple(RoundRect roundRect) {
        long jM6037getTopLeftCornerRadiuskKHJgLs = roundRect.m6037getTopLeftCornerRadiuskKHJgLs();
        return (jM6037getTopLeftCornerRadiuskKHJgLs >>> 32) == (jM6037getTopLeftCornerRadiuskKHJgLs & MuxerUtil.UNSIGNED_INT_MAX_VALUE) && roundRect.m6037getTopLeftCornerRadiuskKHJgLs() == roundRect.m6038getTopRightCornerRadiuskKHJgLs() && roundRect.m6037getTopLeftCornerRadiuskKHJgLs() == roundRect.m6036getBottomRightCornerRadiuskKHJgLs() && roundRect.m6037getTopLeftCornerRadiuskKHJgLs() == roundRect.m6035getBottomLeftCornerRadiuskKHJgLs();
    }

    public static final RoundRect lerp(RoundRect roundRect, RoundRect roundRect2, float f) {
        return new RoundRect(MathHelpersKt.lerp(roundRect.getLeft(), roundRect2.getLeft(), f), MathHelpersKt.lerp(roundRect.getTop(), roundRect2.getTop(), f), MathHelpersKt.lerp(roundRect.getRight(), roundRect2.getRight(), f), MathHelpersKt.lerp(roundRect.getBottom(), roundRect2.getBottom(), f), CornerRadiusKt.m5960lerp3Ry4LBc(roundRect.m6037getTopLeftCornerRadiuskKHJgLs(), roundRect2.m6037getTopLeftCornerRadiuskKHJgLs(), f), CornerRadiusKt.m5960lerp3Ry4LBc(roundRect.m6038getTopRightCornerRadiuskKHJgLs(), roundRect2.m6038getTopRightCornerRadiuskKHJgLs(), f), CornerRadiusKt.m5960lerp3Ry4LBc(roundRect.m6036getBottomRightCornerRadiuskKHJgLs(), roundRect2.m6036getBottomRightCornerRadiuskKHJgLs(), f), CornerRadiusKt.m5960lerp3Ry4LBc(roundRect.m6035getBottomLeftCornerRadiuskKHJgLs(), roundRect2.m6035getBottomLeftCornerRadiuskKHJgLs(), f), null);
    }

    /* JADX INFO: renamed from: translate-Uv8p0NA, reason: not valid java name */
    public static final RoundRect m6043translateUv8p0NA(RoundRect roundRect, long j) {
        int i = (int) (j >> 32);
        float left = roundRect.getLeft() + Float.intBitsToFloat(i);
        float top = roundRect.getTop();
        int i2 = (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j);
        return new RoundRect(left, Float.intBitsToFloat(i2) + top, roundRect.getRight() + Float.intBitsToFloat(i), Float.intBitsToFloat(i2) + roundRect.getBottom(), roundRect.m6037getTopLeftCornerRadiuskKHJgLs(), roundRect.m6038getTopRightCornerRadiuskKHJgLs(), roundRect.m6036getBottomRightCornerRadiuskKHJgLs(), roundRect.m6035getBottomLeftCornerRadiuskKHJgLs(), null);
    }

    public static final RoundRect RoundRect(Rect rect, float f, float f2) {
        return RoundRect(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), f, f2);
    }
}
