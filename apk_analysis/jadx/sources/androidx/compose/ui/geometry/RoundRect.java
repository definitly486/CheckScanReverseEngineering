package androidx.compose.ui.geometry;

import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import defpackage.jn;
import defpackage.n7;

/* JADX INFO: loaded from: classes2.dex */
public final class RoundRect {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final RoundRect Zero = RoundRectKt.m6041RoundRectgG7oq9Y(0.0f, 0.0f, 0.0f, 0.0f, CornerRadius.Companion.m5959getZerokKHJgLs());
    private RoundRect _scaledRadiiRect;
    private final float bottom;
    private final long bottomLeftCornerRadius;
    private final long bottomRightCornerRadius;
    private final float left;
    private final float right;
    private final float top;
    private final long topLeftCornerRadius;
    private final long topRightCornerRadius;

    public /* synthetic */ RoundRect(float f, float f2, float f3, float f4, long j, long j2, long j3, long j4, int i, jh2 jh2Var) {
        this(f, f2, f3, f4, (i & 16) != 0 ? CornerRadius.Companion.m5959getZerokKHJgLs() : j, (i & 32) != 0 ? CornerRadius.Companion.m5959getZerokKHJgLs() : j2, (i & 64) != 0 ? CornerRadius.Companion.m5959getZerokKHJgLs() : j3, (i & 128) != 0 ? CornerRadius.Companion.m5959getZerokKHJgLs() : j4, null);
    }

    /* JADX INFO: renamed from: copy-MDFrsts$default, reason: not valid java name */
    public static /* synthetic */ RoundRect m6028copyMDFrsts$default(RoundRect roundRect, float f, float f2, float f3, float f4, long j, long j2, long j3, long j4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = roundRect.left;
        }
        if ((i & 2) != 0) {
            f2 = roundRect.top;
        }
        if ((i & 4) != 0) {
            f3 = roundRect.right;
        }
        if ((i & 8) != 0) {
            f4 = roundRect.bottom;
        }
        if ((i & 16) != 0) {
            j = roundRect.topLeftCornerRadius;
        }
        if ((i & 32) != 0) {
            j2 = roundRect.topRightCornerRadius;
        }
        if ((i & 64) != 0) {
            j3 = roundRect.bottomRightCornerRadius;
        }
        if ((i & 128) != 0) {
            j4 = roundRect.bottomLeftCornerRadius;
        }
        long j5 = j4;
        long j6 = j3;
        long j7 = j2;
        long j8 = j;
        return roundRect.m6034copyMDFrsts(f, f2, f3, f4, j8, j7, j6, j5);
    }

    public static final RoundRect getZero() {
        return Companion.getZero();
    }

    private final float minRadius(float f, float f2, float f3, float f4) {
        float f5 = f2 + f3;
        return (f5 <= f4 || f5 == 0.0f) ? f : Math.min(f, f4 / f5);
    }

    private final RoundRect scaledRadiiRect() {
        RoundRect roundRect = this._scaledRadiiRect;
        if (roundRect != null) {
            return roundRect;
        }
        float fMinRadius = minRadius(minRadius(minRadius(minRadius(1.0f, Float.intBitsToFloat((int) (this.bottomLeftCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (this.topLeftCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), getHeight()), Float.intBitsToFloat((int) (this.topLeftCornerRadius >> 32)), Float.intBitsToFloat((int) (this.topRightCornerRadius >> 32)), getWidth()), Float.intBitsToFloat((int) (this.topRightCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (this.bottomRightCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), getHeight()), Float.intBitsToFloat((int) (this.bottomRightCornerRadius >> 32)), Float.intBitsToFloat((int) (this.bottomLeftCornerRadius >> 32)), getWidth());
        float f = this.left * fMinRadius;
        float f2 = this.top * fMinRadius;
        float f3 = this.right * fMinRadius;
        float f4 = this.bottom * fMinRadius;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (this.topLeftCornerRadius >> 32)) * fMinRadius;
        long jM5941constructorimpl = CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (this.topLeftCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * fMinRadius)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (this.topRightCornerRadius >> 32)) * fMinRadius;
        long jM5941constructorimpl2 = CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (this.topRightCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * fMinRadius)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fIntBitsToFloat2) << 32));
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (this.bottomRightCornerRadius >> 32)) * fMinRadius;
        RoundRect roundRect2 = new RoundRect(f, f2, f3, f4, jM5941constructorimpl, jM5941constructorimpl2, CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (this.bottomRightCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * fMinRadius)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fIntBitsToFloat3) << 32)), CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (this.bottomLeftCornerRadius >> 32)) * fMinRadius)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (this.bottomLeftCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * fMinRadius)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), null);
        this._scaledRadiiRect = roundRect2;
        return roundRect2;
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

    /* JADX INFO: renamed from: component5-kKHJgLs, reason: not valid java name */
    public final long m6029component5kKHJgLs() {
        return this.topLeftCornerRadius;
    }

    /* JADX INFO: renamed from: component6-kKHJgLs, reason: not valid java name */
    public final long m6030component6kKHJgLs() {
        return this.topRightCornerRadius;
    }

    /* JADX INFO: renamed from: component7-kKHJgLs, reason: not valid java name */
    public final long m6031component7kKHJgLs() {
        return this.bottomRightCornerRadius;
    }

    /* JADX INFO: renamed from: component8-kKHJgLs, reason: not valid java name */
    public final long m6032component8kKHJgLs() {
        return this.bottomLeftCornerRadius;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0094  */
    /* JADX WARN: Code duplicated, block: B:18:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:20:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:21:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:23:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:26:0x0143  */
    /* JADX WARN: Code duplicated, block: B:28:0x0156  */
    /* JADX INFO: renamed from: contains-k-4lQ0M, reason: not valid java name */
    public final boolean m6033containsk4lQ0M(long j) {
        float fIntBitsToFloat;
        float fIntBitsToFloat2;
        float fIntBitsToFloat3;
        float fIntBitsToFloat4;
        int i = (int) (j >> 32);
        if (Float.intBitsToFloat(i) >= this.left && Float.intBitsToFloat(i) < this.right) {
            int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            if (Float.intBitsToFloat(i2) >= this.top && Float.intBitsToFloat(i2) < this.bottom) {
                RoundRect roundRectScaledRadiiRect = scaledRadiiRect();
                if (Float.intBitsToFloat(i) < Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topLeftCornerRadius >> 32)) + this.left) {
                    if (Float.intBitsToFloat(i2) < Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topLeftCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + this.top) {
                        fIntBitsToFloat = (Float.intBitsToFloat(i) - this.left) - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topLeftCornerRadius >> 32));
                        fIntBitsToFloat2 = (Float.intBitsToFloat(i2) - this.top) - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topLeftCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        fIntBitsToFloat3 = Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topLeftCornerRadius >> 32));
                        fIntBitsToFloat4 = Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & roundRectScaledRadiiRect.topLeftCornerRadius));
                    } else {
                        if (Float.intBitsToFloat(i) > this.right - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topRightCornerRadius >> 32))) {
                            if (Float.intBitsToFloat(i) > this.right - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomRightCornerRadius >> 32))) {
                                if (Float.intBitsToFloat(i) < Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomLeftCornerRadius >> 32)) + this.left) {
                                }
                                return true;
                            }
                            if (Float.intBitsToFloat(i) < Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomLeftCornerRadius >> 32)) + this.left) {
                            }
                            return true;
                        }
                        if (Float.intBitsToFloat(i2) >= Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topRightCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + this.top) {
                            fIntBitsToFloat = (Float.intBitsToFloat(i) - this.right) + Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topRightCornerRadius >> 32));
                            fIntBitsToFloat2 = (Float.intBitsToFloat(i2) - this.top) - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topRightCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            fIntBitsToFloat3 = Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topRightCornerRadius >> 32));
                            fIntBitsToFloat4 = Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & roundRectScaledRadiiRect.topRightCornerRadius));
                        } else if (Float.intBitsToFloat(i) > this.right - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomRightCornerRadius >> 32)) || Float.intBitsToFloat(i2) <= this.bottom - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomRightCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) {
                            if (Float.intBitsToFloat(i) < Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomLeftCornerRadius >> 32)) + this.left || Float.intBitsToFloat(i2) <= this.bottom - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomLeftCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) {
                                return true;
                            }
                            fIntBitsToFloat = (Float.intBitsToFloat(i) - this.left) - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomLeftCornerRadius >> 32));
                            fIntBitsToFloat2 = (Float.intBitsToFloat(i2) - this.bottom) + Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomLeftCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            fIntBitsToFloat3 = Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomLeftCornerRadius >> 32));
                            fIntBitsToFloat4 = Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & roundRectScaledRadiiRect.bottomLeftCornerRadius));
                        } else {
                            fIntBitsToFloat = (Float.intBitsToFloat(i) - this.right) + Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomRightCornerRadius >> 32));
                            fIntBitsToFloat2 = (Float.intBitsToFloat(i2) - this.bottom) + Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomRightCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            fIntBitsToFloat3 = Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomRightCornerRadius >> 32));
                            fIntBitsToFloat4 = Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & roundRectScaledRadiiRect.bottomRightCornerRadius));
                        }
                    }
                } else {
                    if (Float.intBitsToFloat(i) > this.right - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topRightCornerRadius >> 32))) {
                        if (Float.intBitsToFloat(i) > this.right - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomRightCornerRadius >> 32))) {
                            if (Float.intBitsToFloat(i) < Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomLeftCornerRadius >> 32)) + this.left) {
                            }
                            return true;
                        }
                        if (Float.intBitsToFloat(i) < Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomLeftCornerRadius >> 32)) + this.left) {
                        }
                        return true;
                    }
                    if (Float.intBitsToFloat(i2) >= Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topRightCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + this.top) {
                        if (Float.intBitsToFloat(i) > this.right - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomRightCornerRadius >> 32))) {
                            if (Float.intBitsToFloat(i) < Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomLeftCornerRadius >> 32)) + this.left) {
                            }
                            return true;
                        }
                        if (Float.intBitsToFloat(i) < Float.intBitsToFloat((int) (roundRectScaledRadiiRect.bottomLeftCornerRadius >> 32)) + this.left) {
                        }
                        return true;
                    }
                    fIntBitsToFloat = (Float.intBitsToFloat(i) - this.right) + Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topRightCornerRadius >> 32));
                    fIntBitsToFloat2 = (Float.intBitsToFloat(i2) - this.top) - Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topRightCornerRadius & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    fIntBitsToFloat3 = Float.intBitsToFloat((int) (roundRectScaledRadiiRect.topRightCornerRadius >> 32));
                    fIntBitsToFloat4 = Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & roundRectScaledRadiiRect.topRightCornerRadius));
                }
                float f = fIntBitsToFloat / fIntBitsToFloat3;
                float f2 = fIntBitsToFloat2 / fIntBitsToFloat4;
                return (f2 * f2) + (f * f) <= 1.0f;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: copy-MDFrsts, reason: not valid java name */
    public final RoundRect m6034copyMDFrsts(float f, float f2, float f3, float f4, long j, long j2, long j3, long j4) {
        return new RoundRect(f, f2, f3, f4, j, j2, j3, j4, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundRect)) {
            return false;
        }
        RoundRect roundRect = (RoundRect) obj;
        return Float.compare(this.left, roundRect.left) == 0 && Float.compare(this.top, roundRect.top) == 0 && Float.compare(this.right, roundRect.right) == 0 && Float.compare(this.bottom, roundRect.bottom) == 0 && CornerRadius.m5946equalsimpl0(this.topLeftCornerRadius, roundRect.topLeftCornerRadius) && CornerRadius.m5946equalsimpl0(this.topRightCornerRadius, roundRect.topRightCornerRadius) && CornerRadius.m5946equalsimpl0(this.bottomRightCornerRadius, roundRect.bottomRightCornerRadius) && CornerRadius.m5946equalsimpl0(this.bottomLeftCornerRadius, roundRect.bottomLeftCornerRadius);
    }

    public final float getBottom() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: getBottomLeftCornerRadius-kKHJgLs, reason: not valid java name */
    public final long m6035getBottomLeftCornerRadiuskKHJgLs() {
        return this.bottomLeftCornerRadius;
    }

    /* JADX INFO: renamed from: getBottomRightCornerRadius-kKHJgLs, reason: not valid java name */
    public final long m6036getBottomRightCornerRadiuskKHJgLs() {
        return this.bottomRightCornerRadius;
    }

    public final float getHeight() {
        return this.bottom - this.top;
    }

    public final float getLeft() {
        return this.left;
    }

    public final float getRight() {
        return this.right;
    }

    public final float getTop() {
        return this.top;
    }

    /* JADX INFO: renamed from: getTopLeftCornerRadius-kKHJgLs, reason: not valid java name */
    public final long m6037getTopLeftCornerRadiuskKHJgLs() {
        return this.topLeftCornerRadius;
    }

    /* JADX INFO: renamed from: getTopRightCornerRadius-kKHJgLs, reason: not valid java name */
    public final long m6038getTopRightCornerRadiuskKHJgLs() {
        return this.topRightCornerRadius;
    }

    public final float getWidth() {
        return this.right - this.left;
    }

    public int hashCode() {
        return CornerRadius.m5949hashCodeimpl(this.bottomLeftCornerRadius) + ((CornerRadius.m5949hashCodeimpl(this.bottomRightCornerRadius) + ((CornerRadius.m5949hashCodeimpl(this.topRightCornerRadius) + ((CornerRadius.m5949hashCodeimpl(this.topLeftCornerRadius) + jn.b(this.bottom, jn.b(this.right, jn.b(this.top, Float.hashCode(this.left) * 31, 31), 31), 31)) * 31)) * 31)) * 31);
    }

    public String toString() {
        long j = this.topLeftCornerRadius;
        long j2 = this.topRightCornerRadius;
        long j3 = this.bottomRightCornerRadius;
        long j4 = this.bottomLeftCornerRadius;
        String str = GeometryUtilsKt.toStringAsFixed(this.left, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.top, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.right, 1) + ", " + GeometryUtilsKt.toStringAsFixed(this.bottom, 1);
        if (!CornerRadius.m5946equalsimpl0(j, j2) || !CornerRadius.m5946equalsimpl0(j2, j3) || !CornerRadius.m5946equalsimpl0(j3, j4)) {
            StringBuilder sbD = n7.d("RoundRect(rect=", str, ", topLeft=");
            sbD.append((Object) CornerRadius.m5955toStringimpl(j));
            sbD.append(", topRight=");
            sbD.append((Object) CornerRadius.m5955toStringimpl(j2));
            sbD.append(", bottomRight=");
            sbD.append((Object) CornerRadius.m5955toStringimpl(j3));
            sbD.append(", bottomLeft=");
            sbD.append((Object) CornerRadius.m5955toStringimpl(j4));
            sbD.append(')');
            return sbD.toString();
        }
        int i = (int) (j >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i);
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        if (fIntBitsToFloat == Float.intBitsToFloat(i2)) {
            StringBuilder sbD2 = n7.d("RoundRect(rect=", str, ", radius=");
            sbD2.append(GeometryUtilsKt.toStringAsFixed(Float.intBitsToFloat(i), 1));
            sbD2.append(')');
            return sbD2.toString();
        }
        StringBuilder sbD3 = n7.d("RoundRect(rect=", str, ", x=");
        sbD3.append(GeometryUtilsKt.toStringAsFixed(Float.intBitsToFloat(i), 1));
        sbD3.append(", y=");
        sbD3.append(GeometryUtilsKt.toStringAsFixed(Float.intBitsToFloat(i2), 1));
        sbD3.append(')');
        return sbD3.toString();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ void getZero$annotations() {
        }

        public final RoundRect getZero() {
            return RoundRect.Zero;
        }

        private Companion() {
        }
    }

    private RoundRect(float f, float f2, float f3, float f4, long j, long j2, long j3, long j4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
        this.topLeftCornerRadius = j;
        this.topRightCornerRadius = j2;
        this.bottomRightCornerRadius = j3;
        this.bottomLeftCornerRadius = j4;
    }

    public /* synthetic */ RoundRect(float f, float f2, float f3, float f4, long j, long j2, long j3, long j4, jh2 jh2Var) {
        this(f, f2, f3, f4, j, j2, j3, j4);
    }
}
