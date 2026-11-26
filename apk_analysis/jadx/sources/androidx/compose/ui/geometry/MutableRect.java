package androidx.compose.ui.geometry;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class MutableRect {
    public static final int $stable = 8;
    private float bottom;
    private float left;
    private float right;
    private float top;

    public MutableRect(float f, float f2, float f3, float f4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
    }

    /* JADX INFO: renamed from: contains-k-4lQ0M, reason: not valid java name */
    public final boolean m5961containsk4lQ0M(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return (fIntBitsToFloat >= this.left) & (fIntBitsToFloat < this.right) & (fIntBitsToFloat2 >= this.top) & (fIntBitsToFloat2 < this.bottom);
    }

    public final void deflate(float f) {
        inflate(-f);
    }

    public final float getBottom() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: getBottomCenter-F1C5BW0, reason: not valid java name */
    public final long m5962getBottomCenterF1C5BW0() {
        float right = ((getRight() - getLeft()) / 2.0f) + this.left;
        float f = this.bottom;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(right)) << 32) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getBottomLeft-F1C5BW0, reason: not valid java name */
    public final long m5963getBottomLeftF1C5BW0() {
        float f = this.left;
        float f2 = this.bottom;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getBottomRight-F1C5BW0, reason: not valid java name */
    public final long m5964getBottomRightF1C5BW0() {
        float f = this.right;
        float f2 = this.bottom;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getCenter-F1C5BW0, reason: not valid java name */
    public final long m5965getCenterF1C5BW0() {
        float right = ((getRight() - getLeft()) / 2.0f) + this.left;
        float bottom = ((getBottom() - getTop()) / 2.0f) + this.top;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(right)) << 32) | (((long) Float.floatToRawIntBits(bottom)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getCenterLeft-F1C5BW0, reason: not valid java name */
    public final long m5966getCenterLeftF1C5BW0() {
        float f = this.left;
        float bottom = ((getBottom() - getTop()) / 2.0f) + this.top;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(bottom)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getCenterRight-F1C5BW0, reason: not valid java name */
    public final long m5967getCenterRightF1C5BW0() {
        float f = this.right;
        float bottom = ((getBottom() - getTop()) / 2.0f) + this.top;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(bottom)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public final float getHeight() {
        return getBottom() - getTop();
    }

    public final float getLeft() {
        return this.left;
    }

    public final float getMaxDimension() {
        return Math.max(Math.abs(getRight() - getLeft()), Math.abs(getBottom() - getTop()));
    }

    public final float getMinDimension() {
        return Math.min(Math.abs(getRight() - getLeft()), Math.abs(getBottom() - getTop()));
    }

    public final float getRight() {
        return this.right;
    }

    /* JADX INFO: renamed from: getSize-NH-jbRc, reason: not valid java name */
    public final long m5968getSizeNHjbRc() {
        float right = getRight() - getLeft();
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits(getBottom() - getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(right) << 32));
    }

    public final float getTop() {
        return this.top;
    }

    /* JADX INFO: renamed from: getTopCenter-F1C5BW0, reason: not valid java name */
    public final long m5969getTopCenterF1C5BW0() {
        float right = ((getRight() - getLeft()) / 2.0f) + this.left;
        float f = this.top;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(right)) << 32) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getTopLeft-F1C5BW0, reason: not valid java name */
    public final long m5970getTopLeftF1C5BW0() {
        float f = this.left;
        float f2 = this.top;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getTopRight-F1C5BW0, reason: not valid java name */
    public final long m5971getTopRightF1C5BW0() {
        float f = this.right;
        float f2 = this.top;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public final float getWidth() {
        return getRight() - getLeft();
    }

    public final void inflate(float f) {
        this.left -= f;
        this.top -= f;
        this.right += f;
        this.bottom += f;
    }

    public final void intersect(float f, float f2, float f3, float f4) {
        this.left = Math.max(f, this.left);
        this.top = Math.max(f2, this.top);
        this.right = Math.min(f3, this.right);
        this.bottom = Math.min(f4, this.bottom);
    }

    public final boolean isEmpty() {
        return (this.left >= this.right) | (this.top >= this.bottom);
    }

    public final boolean isFinite() {
        return ((Float.floatToRawIntBits(this.left) & Integer.MAX_VALUE) < 2139095040) & ((Float.floatToRawIntBits(this.top) & Integer.MAX_VALUE) < 2139095040) & ((Float.floatToRawIntBits(this.right) & Integer.MAX_VALUE) < 2139095040) & ((Float.floatToRawIntBits(this.bottom) & Integer.MAX_VALUE) < 2139095040);
    }

    public final boolean isInfinite() {
        return (this.left == Float.POSITIVE_INFINITY) | (this.top == Float.POSITIVE_INFINITY) | (this.right == Float.POSITIVE_INFINITY) | (this.bottom == Float.POSITIVE_INFINITY);
    }

    public final boolean overlaps(Rect rect) {
        return (this.left < rect.getRight()) & (rect.getLeft() < this.right) & (this.top < rect.getBottom()) & (rect.getTop() < this.bottom);
    }

    public final void set(float f, float f2, float f3, float f4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
    }

    public final void setBottom(float f) {
        this.bottom = f;
    }

    public final void setLeft(float f) {
        this.left = f;
    }

    public final void setRight(float f) {
        this.right = f;
    }

    public final void setTop(float f) {
        this.top = f;
    }

    public String toString() {
        return "MutableRect(" + GeometryUtilsKt.toStringAsFixed(this.left, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.top, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.right, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.bottom, 1) + ')';
    }

    public final void translate(float f, float f2) {
        this.left += f;
        this.top += f2;
        this.right += f;
        this.bottom += f2;
    }

    /* JADX INFO: renamed from: translate-k-4lQ0M, reason: not valid java name */
    public final void m5972translatek4lQ0M(long j) {
        translate(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    public final boolean overlaps(MutableRect mutableRect) {
        return this.right > mutableRect.left && mutableRect.right > this.left && this.bottom > mutableRect.top && mutableRect.bottom > this.top;
    }
}
