package androidx.compose.runtime.snapshots;

import defpackage.aa4;
import defpackage.aq5;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotId_jvmKt {
    public static final long SnapshotIdInvalidValue = -1;
    public static final long SnapshotIdMax = Long.MAX_VALUE;
    public static final int SnapshotIdSize = 64;
    public static final long SnapshotIdZero = 0;

    public static final int binarySearch(long[] jArr, long j) {
        int length = jArr.length - 1;
        int i = 0;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            long j2 = jArr[i2];
            if (j > j2) {
                i = i2 + 1;
            } else {
                if (j >= j2) {
                    return i2;
                }
                length = i2 - 1;
            }
        }
        return -(i + 1);
    }

    public static final int compareTo(long j, int i) {
        return aa4.g(j, i);
    }

    public static final void copyInto(long[] jArr, long[] jArr2) {
        aq5.l(jArr, jArr2, 0, 0, jArr.length);
    }

    public static final long div(long j, int i) {
        return j / ((long) i);
    }

    public static final long first(long[] jArr) {
        return jArr[0];
    }

    public static final void forEach(long[] jArr, nl3<? super Long, j59> nl3Var) {
        for (long j : jArr) {
            nl3Var.invoke(Long.valueOf(j));
        }
    }

    public static final long get(long[] jArr, int i) {
        return jArr[i];
    }

    public static final int getSize(long[] jArr) {
        return jArr.length;
    }

    public static final long minus(long j, int i) {
        return j - ((long) i);
    }

    public static final long plus(long j, int i) {
        return j + ((long) i);
    }

    public static final void set(long[] jArr, int i, long j) {
        jArr[i] = j;
    }

    public static final long[] snapshotIdArrayOf(long j) {
        return new long[]{j};
    }

    public static final long[] snapshotIdArrayWithCapacity(int i) {
        return new long[i];
    }

    public static final long times(long j, int i) {
        return j * ((long) i);
    }

    public static final int toInt(long j) {
        return (int) j;
    }

    public static final long toLong(long j) {
        return j;
    }

    public static final long toSnapshotId(int i) {
        return i;
    }

    public static final long[] withIdInsertedAt(long[] jArr, int i, long j) {
        int length = jArr.length;
        long[] jArr2 = new long[length + 1];
        aq5.l(jArr, jArr2, 0, 0, i);
        aq5.l(jArr, jArr2, i + 1, i, length);
        jArr2[i] = j;
        return jArr2;
    }

    public static final long[] withIdRemovedAt(long[] jArr, int i) {
        int length = jArr.length;
        int i2 = length - 1;
        if (i2 == 0) {
            return null;
        }
        long[] jArr2 = new long[i2];
        if (i > 0) {
            aq5.l(jArr, jArr2, 0, 0, i);
        }
        if (i < i2) {
            aq5.l(jArr, jArr2, i, i + 1, length);
        }
        return jArr2;
    }

    public static final long toSnapshotId(long j) {
        return j;
    }

    public static final long minus(long j, long j2) {
        return j - j2;
    }

    public static final int compareTo(long j, long j2) {
        return aa4.g(j, j2);
    }
}
