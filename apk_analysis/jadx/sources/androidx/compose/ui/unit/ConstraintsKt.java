package androidx.compose.ui.unit;

import androidx.media3.muxer.MuxerUtil;
import defpackage.h8;
import defpackage.kv2;
import defpackage.ln;

/* JADX INFO: loaded from: classes2.dex */
public final class ConstraintsKt {
    private static final long FocusMask = 3;
    private static final int Infinity = Integer.MAX_VALUE;
    private static final int MaxAllowedForMaxFocusBits = 8190;
    private static final int MaxAllowedForMaxNonFocusBits = 262142;
    private static final int MaxAllowedForMinFocusBits = 32766;
    private static final int MaxAllowedForMinNonFocusBits = 65534;
    public static final long MaxDimensionsAndFocusMask = -8589934589L;
    private static final int MaxFocusBits = 18;
    private static final int MaxFocusMask = 262143;
    private static final int MaxNonFocusBits = 13;
    private static final int MaxNonFocusMask = 8191;
    private static final int MinFocusBits = 16;
    private static final int MinFocusMask = 65535;
    private static final int MinNonFocusBits = 15;
    private static final int MinNonFocusMask = 32767;

    public static final long Constraints(int i, int i2, int i3, int i4) {
        if (!((i3 >= 0) & (i2 >= i) & (i4 >= i3) & (i >= 0))) {
            InlineClassHelperKt.throwIllegalArgumentException("maxWidth must be >= than minWidth,\nmaxHeight must be >= than minHeight,\nminWidth and minHeight must be >= 0");
        }
        return createConstraints(i, i2, i3, i4);
    }

    public static /* synthetic */ long Constraints$default(int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = 0;
        }
        if ((i5 & 2) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        if ((i5 & 4) != 0) {
            i3 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = Integer.MAX_VALUE;
        }
        return Constraints(i, i2, i3, i4);
    }

    private static final int addMaxWithMinimum(int i, int i2) {
        if (i == Integer.MAX_VALUE) {
            return i;
        }
        int i3 = i + i2;
        if (i3 < 0) {
            return 0;
        }
        return i3;
    }

    private static final int bitOffsetToIndex(int i) {
        return (i >> 1) + (i & 1);
    }

    public static final int bitsNeedForSizeUnchecked(int i) {
        if (i < MaxNonFocusMask) {
            return 13;
        }
        if (i < 32767) {
            return 15;
        }
        if (i < 65535) {
            return 16;
        }
        return i < MaxFocusMask ? 18 : 255;
    }

    /* JADX INFO: renamed from: constrain-4WqzIAM, reason: not valid java name */
    public static final long m9009constrain4WqzIAM(long j, long j2) {
        int i = (int) (j2 >> 32);
        int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        if (i < iM8997getMinWidthimpl) {
            i = iM8997getMinWidthimpl;
        }
        if (i <= iM8995getMaxWidthimpl) {
            iM8995getMaxWidthimpl = i;
        }
        int i2 = (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        if (i2 < iM8996getMinHeightimpl) {
            i2 = iM8996getMinHeightimpl;
        }
        if (i2 <= iM8994getMaxHeightimpl) {
            iM8994getMaxHeightimpl = i2;
        }
        return IntSize.m9208constructorimpl((((long) iM8995getMaxWidthimpl) << 32) | (((long) iM8994getMaxHeightimpl) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: constrain-N9IONVI, reason: not valid java name */
    public static final long m9010constrainN9IONVI(long j, long j2) {
        int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        int iM8997getMinWidthimpl2 = Constraints.m8997getMinWidthimpl(j2);
        if (iM8997getMinWidthimpl2 < iM8997getMinWidthimpl) {
            iM8997getMinWidthimpl2 = iM8997getMinWidthimpl;
        }
        if (iM8997getMinWidthimpl2 > iM8995getMaxWidthimpl) {
            iM8997getMinWidthimpl2 = iM8995getMaxWidthimpl;
        }
        int iM8995getMaxWidthimpl2 = Constraints.m8995getMaxWidthimpl(j2);
        if (iM8995getMaxWidthimpl2 >= iM8997getMinWidthimpl) {
            iM8997getMinWidthimpl = iM8995getMaxWidthimpl2;
        }
        if (iM8997getMinWidthimpl <= iM8995getMaxWidthimpl) {
            iM8995getMaxWidthimpl = iM8997getMinWidthimpl;
        }
        int iM8996getMinHeightimpl2 = Constraints.m8996getMinHeightimpl(j2);
        if (iM8996getMinHeightimpl2 < iM8996getMinHeightimpl) {
            iM8996getMinHeightimpl2 = iM8996getMinHeightimpl;
        }
        if (iM8996getMinHeightimpl2 > iM8994getMaxHeightimpl) {
            iM8996getMinHeightimpl2 = iM8994getMaxHeightimpl;
        }
        int iM8994getMaxHeightimpl2 = Constraints.m8994getMaxHeightimpl(j2);
        if (iM8994getMaxHeightimpl2 >= iM8996getMinHeightimpl) {
            iM8996getMinHeightimpl = iM8994getMaxHeightimpl2;
        }
        if (iM8996getMinHeightimpl <= iM8994getMaxHeightimpl) {
            iM8994getMaxHeightimpl = iM8996getMinHeightimpl;
        }
        return Constraints(iM8997getMinWidthimpl2, iM8995getMaxWidthimpl, iM8996getMinHeightimpl2, iM8994getMaxHeightimpl);
    }

    /* JADX INFO: renamed from: constrainHeight-K40F9xA, reason: not valid java name */
    public static final int m9011constrainHeightK40F9xA(long j, int i) {
        int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        if (i < iM8996getMinHeightimpl) {
            i = iM8996getMinHeightimpl;
        }
        return i > iM8994getMaxHeightimpl ? iM8994getMaxHeightimpl : i;
    }

    /* JADX INFO: renamed from: constrainWidth-K40F9xA, reason: not valid java name */
    public static final int m9012constrainWidthK40F9xA(long j, int i) {
        int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        if (i < iM8997getMinWidthimpl) {
            i = iM8997getMinWidthimpl;
        }
        return i > iM8995getMaxWidthimpl ? iM8995getMaxWidthimpl : i;
    }

    public static final long createConstraints(int i, int i2, int i3, int i4) {
        int i5 = i4 == Integer.MAX_VALUE ? i3 : i4;
        int iBitsNeedForSizeUnchecked = bitsNeedForSizeUnchecked(i5);
        int i6 = i2 == Integer.MAX_VALUE ? i : i2;
        int iBitsNeedForSizeUnchecked2 = bitsNeedForSizeUnchecked(i6);
        if (iBitsNeedForSizeUnchecked + iBitsNeedForSizeUnchecked2 > 31) {
            throwInvalidConstraintException(i6, i5);
        }
        int i7 = i2 + 1;
        int i8 = i4 + 1;
        int i9 = iBitsNeedForSizeUnchecked2 - 13;
        return Constraints.m8983constructorimpl((((long) (i7 & (~(i7 >> 31)))) << 33) | ((long) ((i9 >> 1) + (i9 & 1))) | (((long) i) << 2) | (((long) i3) << (iBitsNeedForSizeUnchecked2 + 2)) | (((long) (i8 & (~(i8 >> 31)))) << (iBitsNeedForSizeUnchecked2 + 33)));
    }

    public static /* synthetic */ void getMaxDimensionsAndFocusMask$annotations() {
    }

    private static final int heightMask(int i) {
        return (1 << (18 - i)) - 1;
    }

    private static final int indexToBitOffset(int i) {
        return (((i & 2) >> 1) * 3) + ((i & 1) << 1);
    }

    /* JADX INFO: renamed from: isSatisfiedBy-4WqzIAM, reason: not valid java name */
    public static final boolean m9013isSatisfiedBy4WqzIAM(long j, long j2) {
        int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        int i = (int) (j2 >> 32);
        if (iM8997getMinWidthimpl > i || i > iM8995getMaxWidthimpl) {
            return false;
        }
        int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        int i2 = (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        return iM8996getMinHeightimpl <= i2 && i2 <= iM8994getMaxHeightimpl;
    }

    private static final int maxAllowedForSize(int i) {
        if (i < MaxNonFocusMask) {
            return MaxAllowedForMaxNonFocusBits;
        }
        if (i < 32767) {
            return 65534;
        }
        if (i < 65535) {
            return MaxAllowedForMinFocusBits;
        }
        if (i < MaxFocusMask) {
            return MaxAllowedForMaxFocusBits;
        }
        throwInvalidConstraintsSizeException(i);
        h8.d();
        return 0;
    }

    private static final int minHeightOffsets(int i) {
        return i + 15;
    }

    /* JADX INFO: renamed from: offset-NN6Ew-U, reason: not valid java name */
    public static final long m9014offsetNN6EwU(long j, int i, int i2) {
        int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j) + i;
        if (iM8997getMinWidthimpl < 0) {
            iM8997getMinWidthimpl = 0;
        }
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        if (iM8995getMaxWidthimpl != Integer.MAX_VALUE && (iM8995getMaxWidthimpl = iM8995getMaxWidthimpl + i) < 0) {
            iM8995getMaxWidthimpl = 0;
        }
        int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j) + i2;
        if (iM8996getMinHeightimpl < 0) {
            iM8996getMinHeightimpl = 0;
        }
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        return Constraints(iM8997getMinWidthimpl, iM8995getMaxWidthimpl, iM8996getMinHeightimpl, (iM8994getMaxHeightimpl == Integer.MAX_VALUE || (iM8994getMaxHeightimpl = iM8994getMaxHeightimpl + i2) >= 0) ? iM8994getMaxHeightimpl : 0);
    }

    /* JADX INFO: renamed from: offset-NN6Ew-U$default, reason: not valid java name */
    public static /* synthetic */ long m9015offsetNN6EwU$default(long j, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return m9014offsetNN6EwU(j, i, i2);
    }

    public static final void throwInvalidConstraintException(int i, int i2) {
        throw new IllegalArgumentException(ln.c(i, i2, "Can't represent a width of ", " and height of ", " in Constraints"));
    }

    public static final Void throwInvalidConstraintsSizeException(int i) {
        throw new IllegalArgumentException(kv2.b(i, "Can't represent a size of ", " in Constraints"));
    }

    private static final int widthMask(int i) {
        return (1 << (i + 13)) - 1;
    }
}
