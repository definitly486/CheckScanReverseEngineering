package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;

/* JADX INFO: loaded from: classes.dex */
public final class OffsetMappingCalculator {
    public static final int $stable = 8;
    private int[] ops = OpArray.m2784constructorimpl(10);
    private int opsSize;

    /* JADX INFO: renamed from: map-fzxv0v0, reason: not valid java name */
    private final long m2779mapfzxv0v0(int i, boolean z) {
        int i2;
        int iMin;
        int[] iArr = this.ops;
        int i3 = this.opsSize;
        if (i3 >= 0) {
            if (z) {
                iMin = i;
                for (int i4 = 0; i4 < i3; i4++) {
                    int i5 = i4 * 3;
                    int i6 = iArr[i5];
                    int i7 = iArr[i5 + 1];
                    int i8 = iArr[i5 + 2];
                    long jM2780mapStepC6uMEY = m2780mapStepC6uMEY(iMin, i6, i7, i8, z);
                    long jM2780mapStepC6uMEY2 = m2780mapStepC6uMEY(i, i6, i7, i8, z);
                    iMin = Math.min(TextRange.m8491getStartimpl(jM2780mapStepC6uMEY), TextRange.m8491getStartimpl(jM2780mapStepC6uMEY2));
                    i = Math.max(TextRange.m8486getEndimpl(jM2780mapStepC6uMEY), TextRange.m8486getEndimpl(jM2780mapStepC6uMEY2));
                }
            } else {
                int i9 = i3 - 1;
                iMin = i;
                while (-1 < i9) {
                    int i10 = i9 * 3;
                    int i11 = iArr[i10];
                    int i12 = iArr[i10 + 1];
                    int i13 = iArr[i10 + 2];
                    OffsetMappingCalculator offsetMappingCalculator = this;
                    boolean z2 = z;
                    long jM2780mapStepC6uMEY3 = offsetMappingCalculator.m2780mapStepC6uMEY(iMin, i11, i12, i13, z2);
                    long jM2780mapStepC6uMEY4 = offsetMappingCalculator.m2780mapStepC6uMEY(i, i11, i12, i13, z2);
                    iMin = Math.min(TextRange.m8491getStartimpl(jM2780mapStepC6uMEY3), TextRange.m8491getStartimpl(jM2780mapStepC6uMEY4));
                    i = Math.max(TextRange.m8486getEndimpl(jM2780mapStepC6uMEY3), TextRange.m8486getEndimpl(jM2780mapStepC6uMEY4));
                    i9--;
                    this = offsetMappingCalculator;
                    z = z2;
                }
            }
            i2 = i;
            i = iMin;
        } else {
            i2 = i;
        }
        return TextRangeKt.TextRange(i, i2);
    }

    /* JADX INFO: renamed from: mapStep-C6u-MEY, reason: not valid java name */
    private final long m2780mapStepC6uMEY(int i, int i2, int i3, int i4, boolean z) {
        int i5 = z ? i3 : i4;
        if (z) {
            i3 = i4;
        }
        if (i < i2) {
            return TextRangeKt.TextRange(i);
        }
        if (i == i2) {
            return i5 == 0 ? TextRangeKt.TextRange(i2, i3 + i2) : TextRangeKt.TextRange(i2);
        }
        if (i < i2 + i5) {
            return i3 == 0 ? TextRangeKt.TextRange(i2) : TextRangeKt.TextRange(i2, i3 + i2);
        }
        return TextRangeKt.TextRange((i - i5) + i3);
    }

    /* JADX INFO: renamed from: mapFromDest--jx7JFs, reason: not valid java name */
    public final long m2781mapFromDestjx7JFs(int i) {
        return m2779mapfzxv0v0(i, false);
    }

    /* JADX INFO: renamed from: mapFromSource--jx7JFs, reason: not valid java name */
    public final long m2782mapFromSourcejx7JFs(int i) {
        return m2779mapfzxv0v0(i, true);
    }

    public final void recordEditOperation(int i, int i2, int i3) {
        if (!(i3 >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("Expected newLen to be ≥ 0, was " + i3);
        }
        int iMin = Math.min(i, i2);
        int iMax = Math.max(iMin, i2) - iMin;
        if (iMax >= 2 || iMax != i3) {
            int i4 = this.opsSize + 1;
            if (i4 > OpArray.m2791getSizeimpl(this.ops)) {
                this.ops = OpArray.m2786copyOfpSmdads(this.ops, Math.max(i4 * 2, OpArray.m2791getSizeimpl(this.ops) * 2));
            }
            OpArray.m2793setimpl(this.ops, this.opsSize, iMin, iMax, i3);
            this.opsSize = i4;
        }
    }
}
