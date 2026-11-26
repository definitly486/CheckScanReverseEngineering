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
public final class MutableFloatIntMap extends FloatIntMap {
    private int growthLimit;

    public MutableFloatIntMap(int i) {
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

    private final int findInsertIndex(float f) {
        int iHashCode = Float.hashCode(f) * ScatterMapKt.MurmurHashC1;
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
            long j = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j2 = i3;
            int i9 = i6;
            long j3 = j ^ (j2 * ScatterMapKt.BitmaskLsb);
            for (long j4 = (~j3) & (j3 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j4) >> 3) + i5) & i4;
                if (this.keys[iNumberOfTrailingZeros] == f) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j) << 6) & j & (-9187201950435737472L)) != 0) {
                int iFindFirstAvailableSlot = findFirstAvailableSlot(i2);
                if (this.growthLimit == 0 && ((this.metadata[iFindFirstAvailableSlot >> 3] >> ((iFindFirstAvailableSlot & 7) << 3)) & 255) != 254) {
                    adjustStorage$collection();
                    iFindFirstAvailableSlot = findFirstAvailableSlot(i2);
                }
                this._size++;
                int i10 = this.growthLimit;
                long[] jArr2 = this.metadata;
                int i11 = iFindFirstAvailableSlot >> 3;
                long j5 = jArr2[i11];
                int i12 = (iFindFirstAvailableSlot & 7) << 3;
                this.growthLimit = i10 - (((j5 >> i12) & 255) == 128 ? 1 : 0);
                int i13 = this._capacity;
                long j6 = ((~(255 << i12)) & j5) | (j2 << i12);
                jArr2[i11] = j6;
                jArr2[(((iFindFirstAvailableSlot - 7) & i13) + (i13 & 7)) >> 3] = j6;
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
        this.keys = new float[iMax];
        this.values = new int[iMax];
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
        float[] fArr = this.keys;
        int[] iArr = this.values;
        int i2 = (i + 7) >> 3;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            long j = jArr[i4] & (-9187201950435737472L);
            jArr[i4] = (-72340172838076674L) & ((~j) + (j >>> 7));
        }
        int iM = yr.M(jArr);
        int i5 = iM - 1;
        long j2 = 72057594037927935L;
        jArr[i5] = (jArr[i5] & 72057594037927935L) | (-72057594037927936L);
        jArr[iM] = jArr[0];
        int i6 = 0;
        while (i6 != i) {
            int i7 = i6 >> 3;
            int i8 = (i6 & 7) << 3;
            long j3 = (jArr[i7] >> i8) & 255;
            if (j3 != 128 && j3 == 254) {
                int iHashCode = Float.hashCode(fArr[i6]) * ScatterMapKt.MurmurHashC1;
                int i9 = iHashCode ^ (iHashCode << 16);
                int i10 = i9 >>> 7;
                int iFindFirstAvailableSlot = findFirstAvailableSlot(i10);
                int i11 = i10 & i;
                int i12 = i3;
                if (((iFindFirstAvailableSlot - i11) & i) / 8 == ((i6 - i11) & i) / 8) {
                    jArr[i7] = ((i9 & Trace.MAX_TRACE_LABEL_LENGTH) << i8) | ((~(255 << i8)) & jArr[i7]);
                    jArr[jArr.length - 1] = (jArr[i12] & j2) | Long.MIN_VALUE;
                    i6++;
                    i3 = i12;
                } else {
                    int i13 = iFindFirstAvailableSlot >> 3;
                    long j4 = jArr[i13];
                    int i14 = (iFindFirstAvailableSlot & 7) << 3;
                    if (((j4 >> i14) & 255) == 128) {
                        jArr[i13] = (((long) (i9 & Trace.MAX_TRACE_LABEL_LENGTH)) << i14) | (j4 & (~(255 << i14)));
                        jArr[i7] = (jArr[i7] & (~(255 << i8))) | (128 << i8);
                        fArr[iFindFirstAvailableSlot] = fArr[i6];
                        fArr[i6] = 0.0f;
                        iArr[iFindFirstAvailableSlot] = iArr[i6];
                        iArr[i6] = i12;
                    } else {
                        jArr[i13] = (((long) (i9 & Trace.MAX_TRACE_LABEL_LENGTH)) << i14) | (j4 & (~(255 << i14)));
                        float f = fArr[iFindFirstAvailableSlot];
                        fArr[iFindFirstAvailableSlot] = fArr[i6];
                        fArr[i6] = f;
                        int i15 = iArr[iFindFirstAvailableSlot];
                        iArr[iFindFirstAvailableSlot] = iArr[i6];
                        iArr[i6] = i15;
                        i6--;
                    }
                    jArr[jArr.length - 1] = (jArr[i12] & j2) | Long.MIN_VALUE;
                    i6++;
                    i3 = i12;
                    j2 = j2;
                }
            } else {
                i6++;
            }
        }
        initializeGrowth();
    }

    public final int getOrPut(float f, ll3<Integer> ll3Var) {
        ll3Var.getClass();
        int iFindKeyIndex = findKeyIndex(f);
        if (iFindKeyIndex >= 0) {
            return this.values[iFindKeyIndex];
        }
        int iIntValue = ll3Var.invoke().intValue();
        put(f, iIntValue);
        return iIntValue;
    }

    public final void minusAssign(FloatSet floatSet) {
        floatSet.getClass();
        float[] fArr = floatSet.elements;
        long[] jArr = floatSet.metadata;
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
                        remove(fArr[(i << 3) + i3]);
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

    public final void plusAssign(FloatIntMap floatIntMap) {
        floatIntMap.getClass();
        putAll(floatIntMap);
    }

    public final int put(float f, int i, int i2) {
        int iFindInsertIndex = findInsertIndex(f);
        if (iFindInsertIndex < 0) {
            iFindInsertIndex = ~iFindInsertIndex;
        } else {
            i2 = this.values[iFindInsertIndex];
        }
        this.keys[iFindInsertIndex] = f;
        this.values[iFindInsertIndex] = i;
        return i2;
    }

    public final void putAll(FloatIntMap floatIntMap) {
        floatIntMap.getClass();
        float[] fArr = floatIntMap.keys;
        int[] iArr = floatIntMap.values;
        long[] jArr = floatIntMap.metadata;
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
                        set(fArr[i4], iArr[i4]);
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

    public final boolean remove(float f, int i) {
        int iFindKeyIndex = findKeyIndex(f);
        if (iFindKeyIndex < 0 || this.values[iFindKeyIndex] != i) {
            return false;
        }
        removeValueAt(iFindKeyIndex);
        return true;
    }

    public final void removeIf(bm3<? super Float, ? super Integer, Boolean> bm3Var) {
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
                        if (bm3Var.invoke(Float.valueOf(this.keys[i4]), Integer.valueOf(this.values[i4])).booleanValue()) {
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
        MutableFloatIntMap mutableFloatIntMap = this;
        long[] jArr = mutableFloatIntMap.metadata;
        float[] fArr = mutableFloatIntMap.keys;
        int[] iArr = mutableFloatIntMap.values;
        int i2 = mutableFloatIntMap._capacity;
        initializeStorage(i);
        long[] jArr2 = mutableFloatIntMap.metadata;
        float[] fArr2 = mutableFloatIntMap.keys;
        int[] iArr2 = mutableFloatIntMap.values;
        int i3 = mutableFloatIntMap._capacity;
        int i4 = 0;
        while (i4 < i2) {
            if (((jArr[i4 >> 3] >> ((i4 & 7) << 3)) & 255) < 128) {
                float f = fArr[i4];
                int iHashCode = Float.hashCode(f) * ScatterMapKt.MurmurHashC1;
                int i5 = iHashCode ^ (iHashCode << 16);
                int iFindFirstAvailableSlot = mutableFloatIntMap.findFirstAvailableSlot(i5 >>> 7);
                long j = i5 & Trace.MAX_TRACE_LABEL_LENGTH;
                int i6 = iFindFirstAvailableSlot >> 3;
                int i7 = (iFindFirstAvailableSlot & 7) << 3;
                long j2 = (jArr2[i6] & (~(255 << i7))) | (j << i7);
                jArr2[i6] = j2;
                jArr2[(((iFindFirstAvailableSlot - 7) & i3) + (i3 & 7)) >> 3] = j2;
                fArr2[iFindFirstAvailableSlot] = f;
                iArr2[iFindFirstAvailableSlot] = iArr[i4];
            }
            i4++;
            mutableFloatIntMap = this;
            jArr = jArr;
        }
    }

    public final void set(float f, int i) {
        int iFindInsertIndex = findInsertIndex(f);
        if (iFindInsertIndex < 0) {
            iFindInsertIndex = ~iFindInsertIndex;
        }
        this.keys[iFindInsertIndex] = f;
        this.values[iFindInsertIndex] = i;
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

    public final void remove(float f) {
        int iFindKeyIndex = findKeyIndex(f);
        if (iFindKeyIndex >= 0) {
            removeValueAt(iFindKeyIndex);
        }
    }

    public final void put(float f, int i) {
        set(f, i);
    }

    public MutableFloatIntMap() {
        this(0, 1, null);
    }

    public /* synthetic */ MutableFloatIntMap(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 6 : i);
    }

    public final void minusAssign(float[] fArr) {
        fArr.getClass();
        for (float f : fArr) {
            remove(f);
        }
    }

    public final void minusAssign(float f) {
        remove(f);
    }

    public final void minusAssign(FloatList floatList) {
        floatList.getClass();
        float[] fArr = floatList.content;
        int i = floatList._size;
        for (int i2 = 0; i2 < i; i2++) {
            remove(fArr[i2]);
        }
    }
}
