package androidx.compose.runtime.composer.gapbuffer;

import defpackage.nl3;
import defpackage.ti0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class BitVector {
    public static final int $stable = 8;
    private long first;
    private long[] others = SlotTableKt.EmptyLongArray;
    private long second;

    private final int nextBit(int i, nl3<? super Long, Long> nl3Var) {
        int iNumberOfTrailingZeros;
        if (i < 64 && (iNumberOfTrailingZeros = Long.numberOfTrailingZeros((nl3Var.invoke(Long.valueOf(this.first)).longValue() >>> i) << i)) < 64) {
            return iNumberOfTrailingZeros;
        }
        if (i < 128) {
            int i2 = i - 64;
            int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros((nl3Var.invoke(Long.valueOf(this.second)).longValue() >>> i2) << i2);
            if (iNumberOfTrailingZeros2 < 64) {
                return iNumberOfTrailingZeros2 + 64;
            }
        }
        int iMax = Math.max(i, 128);
        int i3 = (iMax / 64) - 2;
        long[] jArr = this.others;
        int length = jArr.length;
        for (int i4 = i3; i4 < length; i4++) {
            long jLongValue = nl3Var.invoke(Long.valueOf(jArr[i4])).longValue();
            if (i4 == i3) {
                int i5 = iMax % 64;
                jLongValue = (jLongValue >>> i5) << i5;
            }
            int iNumberOfTrailingZeros3 = Long.numberOfTrailingZeros(jLongValue);
            if (iNumberOfTrailingZeros3 < 64) {
                return ti0.b(i4, 64, 128, iNumberOfTrailingZeros3);
            }
        }
        return Integer.MAX_VALUE;
    }

    public final boolean get(int i) {
        int i2;
        if (i < 64) {
            return ((1 << i) & this.first) != 0;
        }
        if (i < 128) {
            return ((1 << (i - 64)) & this.second) != 0;
        }
        long[] jArr = this.others;
        int length = jArr.length;
        if (length != 0 && (i2 = (i / 64) - 2) < length) {
            return ((1 << (i % 64)) & jArr[i2]) != 0;
        }
        return false;
    }

    public final int getSize() {
        return (this.others.length + 2) * 64;
    }

    public final int nextClear(int i) {
        int iNumberOfTrailingZeros;
        if (i < 64 && (iNumberOfTrailingZeros = Long.numberOfTrailingZeros(((~this.first) >>> i) << i)) < 64) {
            return iNumberOfTrailingZeros;
        }
        if (i < 128) {
            int i2 = i - 64;
            int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(((~this.second) >>> i2) << i2);
            if (iNumberOfTrailingZeros2 < 64) {
                return iNumberOfTrailingZeros2 + 64;
            }
        }
        int iMax = Math.max(i, 128);
        int i3 = (iMax / 64) - 2;
        long[] jArr = this.others;
        int length = jArr.length;
        for (int i4 = i3; i4 < length; i4++) {
            long j = ~jArr[i4];
            if (i4 == i3) {
                int i5 = iMax % 64;
                j = (j >>> i5) << i5;
            }
            int iNumberOfTrailingZeros3 = Long.numberOfTrailingZeros(j);
            if (iNumberOfTrailingZeros3 < 64) {
                return ti0.b(i4, 64, 128, iNumberOfTrailingZeros3);
            }
        }
        return Integer.MAX_VALUE;
    }

    public final int nextSet(int i) {
        int iNumberOfTrailingZeros;
        if (i < 64 && (iNumberOfTrailingZeros = Long.numberOfTrailingZeros((this.first >>> i) << i)) < 64) {
            return iNumberOfTrailingZeros;
        }
        if (i < 128) {
            int i2 = i - 64;
            int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros((this.second >>> i2) << i2);
            if (iNumberOfTrailingZeros2 < 64) {
                return iNumberOfTrailingZeros2 + 64;
            }
        }
        int iMax = Math.max(i, 128);
        int i3 = (iMax / 64) - 2;
        long[] jArr = this.others;
        int length = jArr.length;
        for (int i4 = i3; i4 < length; i4++) {
            long j = jArr[i4];
            if (i4 == i3) {
                int i5 = iMax % 64;
                j = (j >>> i5) << i5;
            }
            int iNumberOfTrailingZeros3 = Long.numberOfTrailingZeros(j);
            if (iNumberOfTrailingZeros3 < 64) {
                return ti0.b(i4, 64, 128, iNumberOfTrailingZeros3);
            }
        }
        return Integer.MAX_VALUE;
    }

    public final void set(int i, boolean z) {
        if (i < 64) {
            this.first = ((z ? 1L : 0L) << i) | ((~(1 << i)) & this.first);
            return;
        }
        if (i < 128) {
            this.second = ((z ? 1L : 0L) << i) | ((~(1 << (i - 64))) & this.second);
            return;
        }
        int i2 = i / 64;
        int i3 = i2 - 2;
        int i4 = i % 64;
        long j = 1 << i4;
        long[] jArrCopyOf = this.others;
        if (i3 >= jArrCopyOf.length) {
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i2 - 1);
            this.others = jArrCopyOf;
        }
        jArrCopyOf[i3] = ((z ? 1L : 0L) << i4) | ((~j) & jArrCopyOf[i3]);
    }

    public final void setRange(int i, int i2) {
        long j = i < i2 ? -1L : 0L;
        this.first = (((((long) (i < 64 ? 1 : 0)) * j) >>> (64 - (Math.min(64, i2) - i))) << i) | this.first;
        if (i2 > 64) {
            int iMax = Math.max(i, 64);
            this.second = (((j * ((long) (iMax < 128 ? 1 : 0))) >>> (128 - (Math.min(128, i2) - iMax))) << iMax) | this.second;
            if (i2 > 128) {
                for (int iMax2 = Math.max(iMax, 128); iMax2 < i2; iMax2++) {
                    set(iMax2, true);
                }
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BitVector [");
        int size = getSize();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            if (get(i)) {
                if (!z) {
                    sb.append(", ");
                }
                sb.append(i);
                z = false;
            }
        }
        sb.append(']');
        return sb.toString();
    }
}
