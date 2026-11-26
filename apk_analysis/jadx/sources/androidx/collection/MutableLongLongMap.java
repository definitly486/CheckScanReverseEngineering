package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import androidx.tracing.Trace;
import defpackage.aq5;
import defpackage.bm3;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.yr;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class MutableLongLongMap extends LongLongMap {
    private int growthLimit;

    public MutableLongLongMap(int i) {
        super(null);
        if (!(i >= 0)) {
            RuntimeHelpersKt.throwIllegalArgumentException("Capacity must be a positive value.");
        }
        initializeStorage(ScatterMapKt.unloadedCapacity(i));
    }

    private final int findFirstAvailableSlot(int i) {
        int i2 = this._capacity;
        int i3 = i & i2;
        int i4 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i5 = i3 >> 3;
            int i6 = (i3 & 7) << 3;
            long j = ((jArr[i5 + 1] << (64 - i6)) & ((-i6) >> 63)) | (jArr[i5] >>> i6);
            long j2 = j & ((~j) << 7) & (-9187201950435737472L);
            if (j2 != 0) {
                return (i3 + (Long.numberOfTrailingZeros(j2) >> 3)) & i2;
            }
            i4 += 8;
            i3 = (i3 + i4) & i2;
        }
    }

    private final int findInsertIndex(long j) {
        int iHashCode = Long.hashCode(j) * ScatterMapKt.MurmurHashC1;
        int i = iHashCode ^ (iHashCode << 16);
        int i2 = i >>> 7;
        int i3 = i & Trace.MAX_TRACE_LABEL_LENGTH;
        int i4 = this._capacity;
        int i5 = i2 & i4;
        int i6 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i7 = i5 >> 3;
            int i8 = (i5 & 7) << 3;
            long j2 = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j3 = i3;
            int i9 = i6;
            long j4 = j2 ^ (j3 * ScatterMapKt.BitmaskLsb);
            for (long j5 = (~j4) & (j4 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j5 != 0; j5 &= j5 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j5) >> 3) + i5) & i4;
                if (this.keys[iNumberOfTrailingZeros] == j) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j2) << 6) & j2 & (-9187201950435737472L)) != 0) {
                int iFindFirstAvailableSlot = findFirstAvailableSlot(i2);
                if (this.growthLimit == 0 && ((this.metadata[iFindFirstAvailableSlot >> 3] >> ((iFindFirstAvailableSlot & 7) << 3)) & 255) != 254) {
                    adjustStorage$collection();
                    iFindFirstAvailableSlot = findFirstAvailableSlot(i2);
                }
                this._size++;
                int i10 = this.growthLimit;
                long[] jArr2 = this.metadata;
                int i11 = iFindFirstAvailableSlot >> 3;
                long j6 = jArr2[i11];
                int i12 = (iFindFirstAvailableSlot & 7) << 3;
                this.growthLimit = i10 - (((j6 >> i12) & 255) == 128 ? 1 : 0);
                int i13 = this._capacity;
                long j7 = ((~(255 << i12)) & j6) | (j3 << i12);
                jArr2[i11] = j7;
                jArr2[(((iFindFirstAvailableSlot - 7) & i13) + (i13 & 7)) >> 3] = j7;
                return ~iFindFirstAvailableSlot;
            }
            i6 = i9 + 8;
            i5 = (i5 + i6) & i4;
        }
    }

    private final void initializeGrowth() {
        this.growthLimit = ScatterMapKt.loadedCapacity(getCapacity()) - this._size;
    }

    private final void initializeMetadata(int i) {
        long[] jArr;
        if (i == 0) {
            jArr = ScatterMapKt.EmptyGroup;
        } else {
            int i2 = ((i + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i2];
            Arrays.fill(jArr2, 0, i2, -9187201950435737472L);
            jArr = jArr2;
        }
        this.metadata = jArr;
        int i3 = i >> 3;
        long j = 255 << ((i & 7) << 3);
        jArr[i3] = (jArr[i3] & (~j)) | j;
        initializeGrowth();
    }

    private final void initializeStorage(int i) {
        int iMax = i > 0 ? Math.max(7, ScatterMapKt.normalizeCapacity(i)) : 0;
        this._capacity = iMax;
        initializeMetadata(iMax);
        this.keys = new long[iMax];
        this.values = new long[iMax];
    }

    public final void adjustStorage$collection() {
        int i = this._capacity;
        if (i <= 8 || Long.compareUnsigned(((long) this._size) * 32, ((long) i) * 25) > 0) {
            resizeStorage$collection(ScatterMapKt.nextCapacity(this._capacity));
        } else {
            dropDeletes$collection();
        }
    }

    public final void clear() {
        this._size = 0;
        long[] jArr = this.metadata;
        if (jArr != ScatterMapKt.EmptyGroup) {
            aq5.w(jArr, -9187201950435737472L);
            long[] jArr2 = this.metadata;
            int i = this._capacity;
            int i2 = i >> 3;
            long j = 255 << ((i & 7) << 3);
            jArr2[i2] = (jArr2[i2] & (~j)) | j;
        }
        initializeGrowth();
    }

    public final void dropDeletes$collection() {
        long[] jArr = this.metadata;
        int i = this._capacity;
        long[] jArr2 = this.keys;
        long[] jArr3 = this.values;
        int i2 = (i + 7) >> 3;
        char c = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            long j = jArr[i3] & (-9187201950435737472L);
            jArr[i3] = (-72340172838076674L) & ((~j) + (j >>> 7));
        }
        int iM = yr.M(jArr);
        int i4 = iM - 1;
        long j2 = 72057594037927935L;
        jArr[i4] = (jArr[i4] & 72057594037927935L) | (-72057594037927936L);
        jArr[iM] = jArr[0];
        int i5 = 0;
        while (i5 != i) {
            int i6 = i5 >> 3;
            int i7 = (i5 & 7) << 3;
            long j3 = (jArr[i6] >> i7) & 255;
            if (j3 != 128 && j3 == 254) {
                int iHashCode = Long.hashCode(jArr2[i5]) * ScatterMapKt.MurmurHashC1;
                int i8 = iHashCode ^ (iHashCode << 16);
                int i9 = i8 >>> 7;
                int iFindFirstAvailableSlot = findFirstAvailableSlot(i9);
                int i10 = i9 & i;
                char c2 = c;
                if (((iFindFirstAvailableSlot - i10) & i) / 8 == ((i5 - i10) & i) / 8) {
                    jArr[i6] = ((i8 & Trace.MAX_TRACE_LABEL_LENGTH) << i7) | ((~(255 << i7)) & jArr[i6]);
                    jArr[jArr.length - 1] = (jArr[c2] & j2) | Long.MIN_VALUE;
                    i5++;
                    c = c2;
                } else {
                    int i11 = iFindFirstAvailableSlot >> 3;
                    long j4 = jArr[i11];
                    int i12 = (iFindFirstAvailableSlot & 7) << 3;
                    if (((j4 >> i12) & 255) == 128) {
                        jArr[i11] = (((long) (i8 & Trace.MAX_TRACE_LABEL_LENGTH)) << i12) | (j4 & (~(255 << i12)));
                        jArr[i6] = (jArr[i6] & (~(255 << i7))) | (128 << i7);
                        jArr2[iFindFirstAvailableSlot] = jArr2[i5];
                        jArr2[i5] = 0;
                        jArr3[iFindFirstAvailableSlot] = jArr3[i5];
                        jArr3[i5] = 0;
                    } else {
                        jArr[i11] = (((long) (i8 & Trace.MAX_TRACE_LABEL_LENGTH)) << i12) | (j4 & (~(255 << i12)));
                        long j5 = jArr2[iFindFirstAvailableSlot];
                        jArr2[iFindFirstAvailableSlot] = jArr2[i5];
                        jArr2[i5] = j5;
                        long j6 = jArr3[iFindFirstAvailableSlot];
                        jArr3[iFindFirstAvailableSlot] = jArr3[i5];
                        jArr3[i5] = j6;
                        i5--;
                    }
                    jArr[jArr.length - 1] = (jArr[c2] & j2) | Long.MIN_VALUE;
                    i5++;
                    c = c2;
                    j2 = j2;
                }
            } else {
                i5++;
            }
        }
        initializeGrowth();
    }

    public final long getOrPut(long j, ll3<Long> ll3Var) {
        ll3Var.getClass();
        int iFindKeyIndex = findKeyIndex(j);
        if (iFindKeyIndex >= 0) {
            return this.values[iFindKeyIndex];
        }
        long jLongValue = ll3Var.invoke().longValue();
        put(j, jLongValue);
        return jLongValue;
    }

    public final void minusAssign(LongSet longSet) {
        longSet.getClass();
        long[] jArr = longSet.elements;
        long[] jArr2 = longSet.metadata;
        int length = jArr2.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr2[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        remove(jArr[(i << 3) + i3]);
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void plusAssign(LongLongMap longLongMap) {
        longLongMap.getClass();
        putAll(longLongMap);
    }

    public final long put(long j, long j2, long j3) {
        int iFindInsertIndex = findInsertIndex(j);
        if (iFindInsertIndex < 0) {
            iFindInsertIndex = ~iFindInsertIndex;
        } else {
            j3 = this.values[iFindInsertIndex];
        }
        this.keys[iFindInsertIndex] = j;
        this.values[iFindInsertIndex] = j2;
        return j3;
    }

    public final void putAll(LongLongMap longLongMap) {
        longLongMap.getClass();
        long[] jArr = longLongMap.keys;
        long[] jArr2 = longLongMap.values;
        long[] jArr3 = longLongMap.metadata;
        int length = jArr3.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr3[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        set(jArr[i4], jArr2[i4]);
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final boolean remove(long j, long j2) {
        int iFindKeyIndex = findKeyIndex(j);
        if (iFindKeyIndex < 0 || this.values[iFindKeyIndex] != j2) {
            return false;
        }
        removeValueAt(iFindKeyIndex);
        return true;
    }

    public final void removeIf(bm3<? super Long, ? super Long, Boolean> bm3Var) {
        bm3Var.getClass();
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        if (bm3Var.invoke(Long.valueOf(this.keys[i4]), Long.valueOf(this.values[i4])).booleanValue()) {
                            removeValueAt(i4);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void removeValueAt(int i) {
        this._size--;
        long[] jArr = this.metadata;
        int i2 = this._capacity;
        int i3 = i >> 3;
        int i4 = (i & 7) << 3;
        long j = (jArr[i3] & (~(255 << i4))) | (254 << i4);
        jArr[i3] = j;
        jArr[(((i - 7) & i2) + (i2 & 7)) >> 3] = j;
    }

    public final void resizeStorage$collection(int i) {
        MutableLongLongMap mutableLongLongMap = this;
        long[] jArr = mutableLongLongMap.metadata;
        long[] jArr2 = mutableLongLongMap.keys;
        long[] jArr3 = mutableLongLongMap.values;
        int i2 = mutableLongLongMap._capacity;
        initializeStorage(i);
        long[] jArr4 = mutableLongLongMap.metadata;
        long[] jArr5 = mutableLongLongMap.keys;
        long[] jArr6 = mutableLongLongMap.values;
        int i3 = mutableLongLongMap._capacity;
        int i4 = 0;
        while (i4 < i2) {
            if (((jArr[i4 >> 3] >> ((i4 & 7) << 3)) & 255) < 128) {
                long j = jArr2[i4];
                int iHashCode = Long.hashCode(j) * ScatterMapKt.MurmurHashC1;
                int i5 = iHashCode ^ (iHashCode << 16);
                int iFindFirstAvailableSlot = mutableLongLongMap.findFirstAvailableSlot(i5 >>> 7);
                long j2 = i5 & Trace.MAX_TRACE_LABEL_LENGTH;
                int i6 = iFindFirstAvailableSlot >> 3;
                int i7 = (iFindFirstAvailableSlot & 7) << 3;
                long j3 = (jArr4[i6] & (~(255 << i7))) | (j2 << i7);
                jArr4[i6] = j3;
                jArr4[(((iFindFirstAvailableSlot - 7) & i3) + (i3 & 7)) >> 3] = j3;
                jArr5[iFindFirstAvailableSlot] = j;
                jArr6[iFindFirstAvailableSlot] = jArr3[i4];
            }
            i4++;
            mutableLongLongMap = this;
            jArr = jArr;
        }
    }

    public final void set(long j, long j2) {
        int iFindInsertIndex = findInsertIndex(j);
        if (iFindInsertIndex < 0) {
            iFindInsertIndex = ~iFindInsertIndex;
        }
        this.keys[iFindInsertIndex] = j;
        this.values[iFindInsertIndex] = j2;
    }

    public final int trim() {
        int i = this._capacity;
        int iNormalizeCapacity = ScatterMapKt.normalizeCapacity(ScatterMapKt.unloadedCapacity(this._size));
        if (iNormalizeCapacity >= i) {
            return 0;
        }
        resizeStorage$collection(iNormalizeCapacity);
        return i - this._capacity;
    }

    public final void remove(long j) {
        int iFindKeyIndex = findKeyIndex(j);
        if (iFindKeyIndex >= 0) {
            removeValueAt(iFindKeyIndex);
        }
    }

    public final void put(long j, long j2) {
        set(j, j2);
    }

    public MutableLongLongMap() {
        this(0, 1, null);
    }

    public /* synthetic */ MutableLongLongMap(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 6 : i);
    }

    public final void minusAssign(long[] jArr) {
        jArr.getClass();
        for (long j : jArr) {
            remove(j);
        }
    }

    public final void minusAssign(long j) {
        remove(j);
    }

    public final void minusAssign(LongList longList) {
        longList.getClass();
        long[] jArr = longList.content;
        int i = longList._size;
        for (int i2 = 0; i2 < i; i2++) {
            remove(jArr[i2]);
        }
    }
}
