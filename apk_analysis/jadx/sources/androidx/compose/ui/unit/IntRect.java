package androidx.compose.ui.unit;

import androidx.media3.muxer.MuxerUtil;
import defpackage.ej0;
import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class IntRect {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final IntRect Zero = new IntRect(0, 0, 0, 0);
    private final int bottom;
    private final int left;
    private final int right;
    private final int top;

    public IntRect(int i, int i2, int i3, int i4) {
        this.left = i;
        this.top = i2;
        this.right = i3;
        this.bottom = i4;
    }

    public static /* synthetic */ IntRect copy$default(IntRect intRect, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = intRect.left;
        }
        if ((i5 & 2) != 0) {
            i2 = intRect.top;
        }
        if ((i5 & 4) != 0) {
            i3 = intRect.right;
        }
        if ((i5 & 8) != 0) {
            i4 = intRect.bottom;
        }
        return intRect.copy(i, i2, i3, i4);
    }

    public static /* synthetic */ void getBottom$annotations() {
    }

    public static /* synthetic */ void getHeight$annotations() {
    }

    public static /* synthetic */ void getLeft$annotations() {
    }

    public static /* synthetic */ void getRight$annotations() {
    }

    /* JADX INFO: renamed from: getSize-YbymL2g$annotations, reason: not valid java name */
    public static /* synthetic */ void m9189getSizeYbymL2g$annotations() {
    }

    public static /* synthetic */ void getTop$annotations() {
    }

    public static /* synthetic */ void getWidth$annotations() {
    }

    public static /* synthetic */ void isEmpty$annotations() {
    }

    public final int component1() {
        return this.left;
    }

    public final int component2() {
        return this.top;
    }

    public final int component3() {
        return this.right;
    }

    public final int component4() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: contains--gyyYBs, reason: not valid java name */
    public final boolean m9190containsgyyYBs(long j) {
        return IntOffset.m9170getXimpl(j) >= this.left && IntOffset.m9170getXimpl(j) < this.right && IntOffset.m9171getYimpl(j) >= this.top && IntOffset.m9171getYimpl(j) < this.bottom;
    }

    public final IntRect copy(int i, int i2, int i3, int i4) {
        return new IntRect(i, i2, i3, i4);
    }

    public final IntRect deflate(int i) {
        return inflate(-i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntRect)) {
            return false;
        }
        IntRect intRect = (IntRect) obj;
        return this.left == intRect.left && this.top == intRect.top && this.right == intRect.right && this.bottom == intRect.bottom;
    }

    public final int getBottom() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: getBottomCenter-nOcc-ac, reason: not valid java name */
    public final long m9191getBottomCenternOccac() {
        return IntOffset.m9164constructorimpl((((long) ((getWidth() / 2) + this.left)) << 32) | (((long) this.bottom) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getBottomLeft-nOcc-ac, reason: not valid java name */
    public final long m9192getBottomLeftnOccac() {
        return IntOffset.m9164constructorimpl((((long) this.left) << 32) | (((long) this.bottom) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getBottomRight-nOcc-ac, reason: not valid java name */
    public final long m9193getBottomRightnOccac() {
        return IntOffset.m9164constructorimpl((((long) this.right) << 32) | (((long) this.bottom) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getCenter-nOcc-ac, reason: not valid java name */
    public final long m9194getCenternOccac() {
        return IntOffset.m9164constructorimpl((((long) ((getWidth() / 2) + this.left)) << 32) | (((long) ((getHeight() / 2) + this.top)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getCenterLeft-nOcc-ac, reason: not valid java name */
    public final long m9195getCenterLeftnOccac() {
        return IntOffset.m9164constructorimpl((((long) this.left) << 32) | (((long) ((getHeight() / 2) + this.top)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getCenterRight-nOcc-ac, reason: not valid java name */
    public final long m9196getCenterRightnOccac() {
        return IntOffset.m9164constructorimpl((((long) this.right) << 32) | (((long) ((getHeight() / 2) + this.top)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public final int getHeight() {
        return this.bottom - this.top;
    }

    public final int getLeft() {
        return this.left;
    }

    public final int getMaxDimension() {
        return Math.max(Math.abs(getWidth()), Math.abs(getHeight()));
    }

    public final int getMinDimension() {
        return Math.min(Math.abs(getWidth()), Math.abs(getHeight()));
    }

    public final int getRight() {
        return this.right;
    }

    /* JADX INFO: renamed from: getSize-YbymL2g, reason: not valid java name */
    public final long m9197getSizeYbymL2g() {
        return IntSize.m9208constructorimpl((((long) getWidth()) << 32) | (((long) getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public final int getTop() {
        return this.top;
    }

    /* JADX INFO: renamed from: getTopCenter-nOcc-ac, reason: not valid java name */
    public final long m9198getTopCenternOccac() {
        return IntOffset.m9164constructorimpl((((long) ((getWidth() / 2) + this.left)) << 32) | (((long) this.top) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getTopLeft-nOcc-ac, reason: not valid java name */
    public final long m9199getTopLeftnOccac() {
        return IntOffset.m9164constructorimpl((((long) this.left) << 32) | (((long) this.top) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getTopRight-nOcc-ac, reason: not valid java name */
    public final long m9200getTopRightnOccac() {
        return IntOffset.m9164constructorimpl((((long) this.right) << 32) | (((long) this.top) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public final int getWidth() {
        return this.right - this.left;
    }

    public int hashCode() {
        return Integer.hashCode(this.bottom) + ej0.b(this.right, ej0.b(this.top, Integer.hashCode(this.left) * 31, 31), 31);
    }

    public final IntRect inflate(int i) {
        return new IntRect(this.left - i, this.top - i, this.right + i, this.bottom + i);
    }

    public final IntRect intersect(IntRect intRect) {
        return new IntRect(Math.max(this.left, intRect.left), Math.max(this.top, intRect.top), Math.min(this.right, intRect.right), Math.min(this.bottom, intRect.bottom));
    }

    public final boolean isEmpty() {
        return this.left >= this.right || this.top >= this.bottom;
    }

    public final boolean overlaps(IntRect intRect) {
        return this.right > intRect.left && intRect.right > this.left && this.bottom > intRect.top && intRect.bottom > this.top;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IntRect.fromLTRB(");
        sb.append(this.left);
        sb.append(", ");
        sb.append(this.top);
        sb.append(", ");
        sb.append(this.right);
        sb.append(", ");
        return rg.h(sb, this.bottom, ')');
    }

    public final IntRect translate(int i, int i2) {
        return new IntRect(this.left + i, this.top + i2, this.right + i, this.bottom + i2);
    }

    /* JADX INFO: renamed from: translate--gyyYBs, reason: not valid java name */
    public final IntRect m9201translategyyYBs(long j) {
        return new IntRect(IntOffset.m9170getXimpl(j) + this.left, IntOffset.m9171getYimpl(j) + this.top, IntOffset.m9170getXimpl(j) + this.right, IntOffset.m9171getYimpl(j) + this.bottom);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ void getZero$annotations() {
        }

        public final IntRect getZero() {
            return IntRect.Zero;
        }

        private Companion() {
        }
    }
}
