package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import androidx.tracing.Trace;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.bm3;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.yr;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class MutableLongObjectMap<V> extends LongObjectMap<V> {
    private int growthLimit;

    public MutableLongObjectMap(int i) {
        super(null);
        if (!(i >= 0)) {
            RuntimeHelpersKt.throwIllegalArgumentException("Capacity must be a positive value.");
        }
        initializeStorage(ScatterMapKt.unloadedCapacity(i));
    }

    private final int findAbsoluteInsertIndex(long j) {
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
                return iFindFirstAvailableSlot;
            }
            i6 = i9 + 8;
            i5 = (i5 + i6) & i4;
        }
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
        this.values = new Object[iMax];
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
        aq5.t(null, this.values, 0, this._capacity);
        initializeGrowth();
    }

    public final void dropDeletes$collection() {
        long[] jArr = this.metadata;
        int i = this._capacity;
        long[] jArr2 = this.keys;
        Object[] objArr = this.values;
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
                        objArr[iFindFirstAvailableSlot] = objArr[i5];
                        objArr[i5] = null;
                    } else {
                        jArr[i11] = (((long) (i8 & Trace.MAX_TRACE_LABEL_LENGTH)) << i12) | (j4 & (~(255 << i12)));
                        long j5 = jArr2[iFindFirstAvailableSlot];
                        jArr2[iFindFirstAvailableSlot] = jArr2[i5];
                        jArr2[i5] = j5;
                        Object obj = objArr[iFindFirstAvailableSlot];
                        objArr[iFindFirstAvailableSlot] = objArr[i5];
                        objArr[i5] = obj;
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

    public final V getOrPut(long j, ll3<? extends V> ll3Var) {
        ll3Var.getClass();
        V v = get(j);
        if (v != null) {
            return v;
        }
        V vInvoke = ll3Var.invoke();
        set(j, vInvoke);
        return vInvoke;
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

    public final void plusAssign(LongObjectMap<V> longObjectMap) {
        longObjectMap.getClass();
        putAll(longObjectMap);
    }

    public final V put(long j, V v) {
        int iFindAbsoluteInsertIndex = findAbsoluteInsertIndex(j);
        Object[] objArr = this.values;
        V v2 = (V) objArr[iFindAbsoluteInsertIndex];
        this.keys[iFindAbsoluteInsertIndex] = j;
        objArr[iFindAbsoluteInsertIndex] = v;
        return v2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void putAll(LongObjectMap<V> longObjectMap) {
        longObjectMap.getClass();
        long[] jArr = longObjectMap.keys;
        Object[] objArr = longObjectMap.values;
        long[] jArr2 = longObjectMap.metadata;
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
                        int i4 = (i << 3) + i3;
                        set(jArr[i4], objArr[i4]);
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

    public final boolean remove(long j, V v) {
        int iNumberOfTrailingZeros;
        int iHashCode = Long.hashCode(j) * ScatterMapKt.MurmurHashC1;
        int i = iHashCode ^ (iHashCode << 16);
        int i2 = i & Trace.MAX_TRACE_LABEL_LENGTH;
        int i3 = this._capacity;
        int i4 = (i >>> 7) & i3;
        int i5 = 0;
        loop0: while (true) {
            long[] jArr = this.metadata;
            int i6 = i4 >> 3;
            int i7 = (i4 & 7) << 3;
            long j2 = ((jArr[i6 + 1] << (64 - i7)) & ((-i7) >> 63)) | (jArr[i6] >>> i7);
            long j3 = (((long) i2) * ScatterMapKt.BitmaskLsb) ^ j2;
            for (long j4 = (~j3) & (j3 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j4) >> 3) + i4) & i3;
                if (this.keys[iNumberOfTrailingZeros] == j) {
                    break loop0;
                }
            }
            if ((j2 & ((~j2) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i5 += 8;
            i4 = (i4 + i5) & i3;
        }
        if (iNumberOfTrailingZeros < 0 || !aa4.e(this.values[iNumberOfTrailingZeros], v)) {
            return false;
        }
        removeValueAt(iNumberOfTrailingZeros);
        return true;
    }

    public final void removeIf(bm3<? super Long, ? super V, Boolean> bm3Var) {
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
                        if (bm3Var.invoke(Long.valueOf(this.keys[i4]), this.values[i4]).booleanValue()) {
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

    public final V removeValueAt(int i) {
        this._size--;
        long[] jArr = this.metadata;
        int i2 = this._capacity;
        int i3 = i >> 3;
        int i4 = (i & 7) << 3;
        long j = (jArr[i3] & (~(255 << i4))) | (254 << i4);
        jArr[i3] = j;
        jArr[(((i - 7) & i2) + (i2 & 7)) >> 3] = j;
        Object[] objArr = this.values;
        V v = (V) objArr[i];
        objArr[i] = null;
        return v;
    }

    public final void resizeStorage$collection(int i) {
        MutableLongObjectMap<V> mutableLongObjectMap = this;
        long[] jArr = mutableLongObjectMap.metadata;
        long[] jArr2 = mutableLongObjectMap.keys;
        Object[] objArr = mutableLongObjectMap.values;
        int i2 = mutableLongObjectMap._capacity;
        initializeStorage(i);
        long[] jArr3 = mutableLongObjectMap.metadata;
        long[] jArr4 = mutableLongObjectMap.keys;
        Object[] objArr2 = mutableLongObjectMap.values;
        int i3 = mutableLongObjectMap._capacity;
        int i4 = 0;
        while (i4 < i2) {
            if (((jArr[i4 >> 3] >> ((i4 & 7) << 3)) & 255) < 128) {
                long j = jArr2[i4];
                int iHashCode = Long.hashCode(j) * ScatterMapKt.MurmurHashC1;
                int i5 = iHashCode ^ (iHashCode << 16);
                int iFindFirstAvailableSlot = mutableLongObjectMap.findFirstAvailableSlot(i5 >>> 7);
                long j2 = i5 & Trace.MAX_TRACE_LABEL_LENGTH;
                int i6 = iFindFirstAvailableSlot >> 3;
                int i7 = (iFindFirstAvailableSlot & 7) << 3;
                long j3 = (jArr3[i6] & (~(255 << i7))) | (j2 << i7);
                jArr3[i6] = j3;
                jArr3[(((iFindFirstAvailableSlot - 7) & i3) + (i3 & 7)) >> 3] = j3;
                jArr4[iFindFirstAvailableSlot] = j;
                objArr2[iFindFirstAvailableSlot] = objArr[i4];
            }
            i4++;
            mutableLongObjectMap = this;
            jArr = jArr;
        }
    }

    public final void set(long j, V v) {
        int iFindAbsoluteInsertIndex = findAbsoluteInsertIndex(j);
        this.keys[iFindAbsoluteInsertIndex] = j;
        this.values[iFindAbsoluteInsertIndex] = v;
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

    public /* synthetic */ MutableLongObjectMap(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 6 : i);
    }

    public MutableLongObjectMap() {
        this(0, 1, null);
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

    public final V remove(long j) {
        int iNumberOfTrailingZeros;
        int iHashCode = Long.hashCode(j) * ScatterMapKt.MurmurHashC1;
        int i = iHashCode ^ (iHashCode << 16);
        int i2 = i & Trace.MAX_TRACE_LABEL_LENGTH;
        int i3 = this._capacity;
        int i4 = (i >>> 7) & i3;
        int i5 = 0;
        loop0: while (true) {
            long[] jArr = this.metadata;
            int i6 = i4 >> 3;
            int i7 = (i4 & 7) << 3;
            long j2 = ((jArr[i6 + 1] << (64 - i7)) & ((-i7) >> 63)) | (jArr[i6] >>> i7);
            long j3 = (((long) i2) * ScatterMapKt.BitmaskLsb) ^ j2;
            for (long j4 = (~j3) & (j3 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j4) >> 3) + i4) & i3;
                if (this.keys[iNumberOfTrailingZeros] == j) {
                    break loop0;
                }
            }
            if ((j2 & ((~j2) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i5 += 8;
            i4 = (i4 + i5) & i3;
        }
        if (iNumberOfTrailingZeros >= 0) {
            return removeValueAt(iNumberOfTrailingZeros);
        }
        return null;
    }
}
