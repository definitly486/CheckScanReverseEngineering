package androidx.compose.runtime.snapshots;

import defpackage.aa4;
import defpackage.aq5;
import defpackage.n7;
import defpackage.zc5;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotDoubleIndexHeap {
    public static final int $stable = 8;
    private int firstFreeHandle;
    private int[] handles;
    private int size;
    private long[] values = SnapshotId_jvmKt.snapshotIdArrayWithCapacity(16);
    private int[] index = new int[16];

    public SnapshotDoubleIndexHeap() {
        int[] iArr = new int[16];
        int i = 0;
        while (i < 16) {
            int i2 = i + 1;
            iArr[i] = i2;
            i = i2;
        }
        this.handles = iArr;
    }

    private final int allocateHandle() {
        int[] iArr = this.handles;
        int length = iArr.length;
        if (this.firstFreeHandle >= length) {
            int i = length * 2;
            iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int i3 = i2 + 1;
                iArr[i2] = i3;
                i2 = i3;
            }
            aq5.n(0, 0, 14, this.handles, iArr);
            this.handles = iArr;
        }
        int i4 = this.firstFreeHandle;
        this.firstFreeHandle = iArr[i4];
        return i4;
    }

    private final void ensure(int i) {
        int length = this.values.length;
        if (i <= length) {
            return;
        }
        int i2 = length * 2;
        long[] jArrSnapshotIdArrayWithCapacity = SnapshotId_jvmKt.snapshotIdArrayWithCapacity(i2);
        int[] iArr = new int[i2];
        long[] jArr = this.values;
        aq5.l(jArr, jArrSnapshotIdArrayWithCapacity, 0, 0, jArr.length);
        aq5.n(0, 0, 14, this.index, iArr);
        this.values = jArrSnapshotIdArrayWithCapacity;
        this.index = iArr;
    }

    private final void freeHandle(int i) {
        this.handles[i] = this.firstFreeHandle;
        this.firstFreeHandle = i;
    }

    public static /* synthetic */ long lowestOrDefault$default(SnapshotDoubleIndexHeap snapshotDoubleIndexHeap, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        return snapshotDoubleIndexHeap.lowestOrDefault(j);
    }

    private final void shiftDown(int i) {
        long[] jArr = this.values;
        int i2 = this.size >> 1;
        while (i < i2) {
            int i3 = (i + 1) << 1;
            int i4 = i3 - 1;
            if (i3 >= this.size || aa4.g(jArr[i3], jArr[i4]) >= 0) {
                if (aa4.g(jArr[i4], jArr[i]) >= 0) {
                    return;
                }
                swap(i4, i);
                i = i4;
            } else {
                if (aa4.g(jArr[i3], jArr[i]) >= 0) {
                    return;
                }
                swap(i3, i);
                i = i3;
            }
        }
    }

    private final void shiftUp(int i) {
        long[] jArr = this.values;
        long j = jArr[i];
        while (i > 0) {
            int i2 = ((i + 1) >> 1) - 1;
            if (aa4.g(jArr[i2], j) <= 0) {
                return;
            }
            swap(i2, i);
            i = i2;
        }
    }

    private final void swap(int i, int i2) {
        long[] jArr = this.values;
        int[] iArr = this.index;
        int[] iArr2 = this.handles;
        long j = jArr[i];
        jArr[i] = jArr[i2];
        jArr[i2] = j;
        int i3 = iArr[i];
        int i4 = iArr[i2];
        iArr[i] = i4;
        iArr[i2] = i3;
        iArr2[i4] = i;
        iArr2[i3] = i2;
    }

    public final int add(long j) {
        ensure(this.size + 1);
        int i = this.size;
        this.size = i + 1;
        int iAllocateHandle = allocateHandle();
        this.values[i] = j;
        this.index[i] = iAllocateHandle;
        this.handles[iAllocateHandle] = i;
        shiftUp(i);
        return iAllocateHandle;
    }

    public final int getSize() {
        return this.size;
    }

    public final long lowestOrDefault(long j) {
        return this.size > 0 ? this.values[0] : j;
    }

    public final void remove(int i) {
        int i2 = this.handles[i];
        swap(i2, this.size - 1);
        this.size--;
        shiftUp(i2);
        shiftDown(i2);
        freeHandle(i);
    }

    public final void validate() {
        int i = this.size;
        int i2 = 1;
        while (i2 < i) {
            int i3 = i2 + 1;
            long[] jArr = this.values;
            if (aa4.g(jArr[(i3 >> 1) - 1], jArr[i2]) > 0) {
                zc5.d(" is out of place", "Index ", i2);
                return;
            }
            i2 = i3;
        }
    }

    public final void validateHandle(int i, long j) {
        int i2 = this.handles[i];
        if (this.index[i2] != i) {
            zc5.d(" is corrupted", "Index for handle ", i);
        } else {
            if (this.values[i2] == j) {
                return;
            }
            StringBuilder sbC = n7.c(i, "Value for handle ", " was ");
            sbC.append(this.values[i2]);
            sbC.append(" but was supposed to be ");
            sbC.append(j);
            throw new IllegalStateException(sbC.toString().toString());
        }
    }
}
