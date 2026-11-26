package androidx.compose.ui.geometry;

import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import defpackage.jn;

/* JADX INFO: loaded from: classes2.dex */
public final class Rect {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final Rect Zero = new Rect(0.0f, 0.0f, 0.0f, 0.0f);
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;

    public Rect(float f, float f2, float f3, float f4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
    }

    public static /* synthetic */ Rect copy$default(Rect rect, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = rect.left;
        }
        if ((i & 2) != 0) {
            f2 = rect.top;
        }
        if ((i & 4) != 0) {
            f3 = rect.right;
        }
        if ((i & 8) != 0) {
            f4 = rect.bottom;
        }
        return rect.copy(f, f2, f3, f4);
    }

    public static /* synthetic */ void getBottom$annotations() {
    }

    public static /* synthetic */ void getHeight$annotations() {
    }

    public static /* synthetic */ void getLeft$annotations() {
    }

    public static /* synthetic */ void getRight$annotations() {
    }

    /* JADX INFO: renamed from: getSize-NH-jbRc$annotations, reason: not valid java name */
    public static /* synthetic */ void m6012getSizeNHjbRc$annotations() {
    }

    public static /* synthetic */ void getTop$annotations() {
    }

    public static /* synthetic */ void getWidth$annotations() {
    }

    public static /* synthetic */ void isEmpty$annotations() {
    }

    public static /* synthetic */ void isFinite$annotations() {
    }

    public static /* synthetic */ void isInfinite$annotations() {
    }

    public final float component1() {
        return this.left;
    }

    public final float component2() {
        return this.top;
    }

    public final float component3() {
        return this.right;
    }

    public final float component4() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: contains-k-4lQ0M, reason: not valid java name */
    public final boolean m6013containsk4lQ0M(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return (fIntBitsToFloat >= this.left) & (fIntBitsToFloat < this.right) & (fIntBitsToFloat2 >= this.top) & (fIntBitsToFloat2 < this.bottom);
    }

    public final Rect copy(float f, float f2, float f3, float f4) {
        return new Rect(f, f2, f3, f4);
    }

    public final Rect deflate(float f) {
        return inflate(-f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Rect)) {
            return false;
        }
        Rect rect = (Rect) obj;
        return Float.compare(this.left, rect.left) == 0 && Float.compare(this.top, rect.top) == 0 && Float.compare(this.right, rect.right) == 0 && Float.compare(this.bottom, rect.bottom) == 0;
    }

    public final float getBottom() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: getBottomCenter-F1C5BW0, reason: not valid java name */
    public final long m6014getBottomCenterF1C5BW0() {
        float right = ((getRight() - getLeft()) / 2.0f) + this.left;
        float f = this.bottom;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(right)) << 32) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getBottomLeft-F1C5BW0, reason: not valid java name */
    public final long m6015getBottomLeftF1C5BW0() {
        float f = this.left;
        float f2 = this.bottom;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getBottomRight-F1C5BW0, reason: not valid java name */
    public final long m6016getBottomRightF1C5BW0() {
        float f = this.right;
        float f2 = this.bottom;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getCenter-F1C5BW0, reason: not valid java name */
    public final long m6017getCenterF1C5BW0() {
        float right = ((getRight() - getLeft()) / 2.0f) + this.left;
        float bottom = ((getBottom() - getTop()) / 2.0f) + this.top;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(right)) << 32) | (((long) Float.floatToRawIntBits(bottom)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getCenterLeft-F1C5BW0, reason: not valid java name */
    public final long m6018getCenterLeftF1C5BW0() {
        float f = this.left;
        float bottom = ((getBottom() - getTop()) / 2.0f) + this.top;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(bottom)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getCenterRight-F1C5BW0, reason: not valid java name */
    public final long m6019getCenterRightF1C5BW0() {
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
    public final long m6020getSizeNHjbRc() {
        float right = getRight() - getLeft();
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits(getBottom() - getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(right) << 32));
    }

    public final float getTop() {
        return this.top;
    }

    /* JADX INFO: renamed from: getTopCenter-F1C5BW0, reason: not valid java name */
    public final long m6021getTopCenterF1C5BW0() {
        float right = ((getRight() - getLeft()) / 2.0f) + this.left;
        float f = this.top;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(right)) << 32) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getTopLeft-F1C5BW0, reason: not valid java name */
    public final long m6022getTopLeftF1C5BW0() {
        float f = this.left;
        float f2 = this.top;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getTopRight-F1C5BW0, reason: not valid java name */
    public final long m6023getTopRightF1C5BW0() {
        float f = this.right;
        float f2 = this.top;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public final float getWidth() {
        return getRight() - getLeft();
    }

    public int hashCode() {
        return Float.hashCode(this.bottom) + jn.b(this.right, jn.b(this.top, Float.hashCode(this.left) * 31, 31), 31);
    }

    public final Rect inflate(float f) {
        return new Rect(this.left - f, this.top - f, this.right + f, this.bottom + f);
    }

    public final Rect intersect(Rect rect) {
        return new Rect(Math.max(this.left, rect.left), Math.max(this.top, rect.top), Math.min(this.right, rect.right), Math.min(this.bottom, rect.bottom));
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
        return (this.left < rect.right) & (rect.left < this.right) & (this.top < rect.bottom) & (rect.top < this.bottom);
    }

    public String toString() {
        return "Rect.fromLTRB(" + GeometryUtilsKt.toStringAsFixed(this.left, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.top, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.right, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.bottom, 1) + ')';
    }

    public final Rect translate(float f, float f2) {
        return new Rect(this.left + f, this.top + f2, this.right + f, this.bottom + f2);
    }

    /* JADX INFO: renamed from: translate-k-4lQ0M, reason: not valid java name */
    public final Rect m6024translatek4lQ0M(long j) {
        int i = (int) (j >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i) + this.left;
        float f = this.top;
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        return new Rect(fIntBitsToFloat, Float.intBitsToFloat(i2) + f, Float.intBitsToFloat(i) + this.right, Float.intBitsToFloat(i2) + this.bottom);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ void getZero$annotations() {
        }

        public final Rect getZero() {
            return Rect.Zero;
        }

        private Companion() {
        }
    }

    public final Rect intersect(float f, float f2, float f3, float f4) {
        return new Rect(Math.max(this.left, f), Math.max(this.top, f2), Math.min(this.right, f3), Math.min(this.bottom, f4));
    }
}
