package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.collection.internal.RuntimeHelpersKt;
import androidx.media3.muxer.MuxerUtil;
import androidx.tracing.Trace;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bm3;
import defpackage.fm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.qz0;
import defpackage.rg;
import defpackage.zo7;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class SieveCache<K, V> {
    private int _capacity;
    private int _count;
    private int _maxSize;
    private int _size;
    private final nl3<K, V> createValueFromKey;
    private int growthLimit;
    private int hand;
    private int head;
    public Object[] keys;
    public long[] metadata;
    private long[] nodes;
    private final fm3<K, V, V, Boolean, j59> onEntryRemoved;
    private final bm3<K, V, Integer> sizeOf;
    private int tail;
    public Object[] values;

    /* JADX INFO: renamed from: androidx.collection.SieveCache$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3<K, V, Integer> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.bm3
        public final Integer invoke(K k, V v) {
            k.getClass();
            v.getClass();
            return 1;
        }
    }

    /* JADX INFO: renamed from: androidx.collection.SieveCache$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3 {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Void invoke(K k) {
            k.getClass();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SieveCache(int i, int i2, bm3<? super K, ? super V, Integer> bm3Var, nl3<? super K, ? extends V> nl3Var, fm3<? super K, ? super V, ? super V, ? super Boolean, j59> fm3Var) {
        bm3Var.getClass();
        nl3Var.getClass();
        fm3Var.getClass();
        this.sizeOf = bm3Var;
        this.createValueFromKey = nl3Var;
        this.onEntryRemoved = fm3Var;
        this.metadata = ScatterMapKt.EmptyGroup;
        Object[] objArr = ContainerHelpersKt.EMPTY_OBJECTS;
        this.keys = objArr;
        this.values = objArr;
        this.nodes = SieveCacheKt.getEmptyNodes();
        this.head = Integer.MAX_VALUE;
        this.tail = Integer.MAX_VALUE;
        this.hand = Integer.MAX_VALUE;
        if (!(i > 0)) {
            RuntimeHelpersKt.throwIllegalArgumentException("maxSize must be > 0");
        }
        this._maxSize = i;
        initializeStorage(ScatterMapKt.unloadedCapacity(i2));
    }

    private final int findEvictionCandidate() {
        long[] jArr = this.nodes;
        int i = this.hand;
        if (i == Integer.MAX_VALUE) {
            i = this.tail;
        }
        while (i != Integer.MAX_VALUE) {
            long j = jArr[i];
            if (((int) ((j >> 62) & 1)) == 0) {
                break;
            }
            int i2 = (int) (SieveCacheKt.NodeLinkMask & (j >> 31));
            jArr[i] = 4611686018427387903L & j;
            i = i2 != Integer.MAX_VALUE ? i2 : this.tail;
        }
        int i3 = (int) (SieveCacheKt.NodeLinkMask & (jArr[i] >> 31));
        this.hand = i3 != Integer.MAX_VALUE ? i3 : Integer.MAX_VALUE;
        return i;
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

    private final int findInsertIndex(K k) {
        int iHashCode = (k != null ? k.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
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
            int i9 = i3;
            long j3 = j ^ (j2 * ScatterMapKt.BitmaskLsb);
            for (long j4 = (~j3) & (j3 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                int iNumberOfTrailingZeros = (i5 + (Long.numberOfTrailingZeros(j4) >> 3)) & i4;
                if (aa4.e(this.keys[iNumberOfTrailingZeros], k)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j) << 6) & j & (-9187201950435737472L)) != 0) {
                int iFindFirstAvailableSlot = findFirstAvailableSlot(i2);
                if (this.growthLimit == 0 && ((this.metadata[iFindFirstAvailableSlot >> 3] >> ((iFindFirstAvailableSlot & 7) << 3)) & 255) != 254) {
                    adjustStorage$collection();
                    iFindFirstAvailableSlot = findFirstAvailableSlot(i2);
                }
                this._count++;
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
            i6 += 8;
            i5 = (i5 + i6) & i4;
            i3 = i9;
        }
    }

    private final int findKeyIndex(K k) {
        int i = 0;
        int iHashCode = (k != null ? k.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
        int i2 = iHashCode ^ (iHashCode << 16);
        int i3 = i2 & Trace.MAX_TRACE_LABEL_LENGTH;
        int i4 = this._capacity;
        int i5 = i2 >>> 7;
        while (true) {
            int i6 = i5 & i4;
            long[] jArr = this.metadata;
            int i7 = i6 >> 3;
            int i8 = (i6 & 7) << 3;
            long j = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j2 = (((long) i3) * ScatterMapKt.BitmaskLsb) ^ j;
            for (long j3 = (~j2) & (j2 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j3 != 0; j3 &= j3 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j3) >> 3) + i6) & i4;
                if (aa4.e(this.keys[iNumberOfTrailingZeros], k)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((j & ((~j) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i += 8;
            i5 = i6 + i;
        }
    }

    private final void fixupNodes(long[] jArr) {
        long[] jArr2 = this.nodes;
        int length = jArr2.length;
        int i = 0;
        while (true) {
            int i2 = Integer.MAX_VALUE;
            if (i >= length) {
                break;
            }
            long j = jArr2[i];
            int i3 = (int) ((j >> 31) & SieveCacheKt.NodeLinkMask);
            int i4 = (int) (j & SieveCacheKt.NodeLinkMask);
            long j2 = ((j & SieveCacheKt.NodeMetaMask) | ((long) (i3 == Integer.MAX_VALUE ? Integer.MAX_VALUE : (int) (jArr[i3] & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) << 31;
            if (i4 != Integer.MAX_VALUE) {
                i2 = (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & jArr[i4]);
            }
            jArr2[i] = ((long) i2) | j2;
            i++;
        }
        int i5 = this.head;
        if (i5 != Integer.MAX_VALUE) {
            this.head = (int) (jArr[i5] & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        }
        int i6 = this.tail;
        if (i6 != Integer.MAX_VALUE) {
            this.tail = (int) (jArr[i6] & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        }
        int i7 = this.hand;
        if (i7 != Integer.MAX_VALUE) {
            this.hand = (int) (jArr[i7] & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        }
    }

    public static /* synthetic */ void getCount$annotations() {
    }

    public static /* synthetic */ void getKeys$annotations() {
    }

    public static /* synthetic */ void getMetadata$annotations() {
    }

    public static /* synthetic */ void getValues$annotations() {
    }

    private final void initializeGrowth() {
        this.growthLimit = ScatterMapKt.loadedCapacity(this._capacity) - getCount();
    }

    private final void initializeMetadata(int i) {
        long[] jArr;
        if (i == 0) {
            jArr = ScatterMapKt.EmptyGroup;
        } else {
            int i2 = ((i + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i2];
            Arrays.fill(jArr2, 0, i2, -9187201950435737472L);
            int i3 = i >> 3;
            long j = 255 << ((i & 7) << 3);
            jArr2[i3] = (jArr2[i3] & (~j)) | j;
            jArr = jArr2;
        }
        this.metadata = jArr;
        initializeGrowth();
    }

    private final void initializeStorage(int i) {
        long[] emptyNodes;
        int iMax = i > 0 ? Math.max(7, ScatterMapKt.normalizeCapacity(i)) : 0;
        this._capacity = iMax;
        initializeMetadata(iMax);
        this.keys = iMax == 0 ? ContainerHelpersKt.EMPTY_OBJECTS : new Object[iMax];
        this.values = iMax == 0 ? ContainerHelpersKt.EMPTY_OBJECTS : new Object[iMax];
        if (iMax == 0) {
            emptyNodes = SieveCacheKt.getEmptyNodes();
        } else {
            long[] jArr = new long[iMax];
            Arrays.fill(jArr, 0, iMax, 4611686018427387903L);
            emptyNodes = jArr;
        }
        this.nodes = emptyNodes;
    }

    private final void markNodeVisited(int i) {
        long[] jArr = this.nodes;
        jArr[i] = (jArr[i] & 4611686018427387903L) | SieveCacheKt.NodeVisitedBit;
    }

    private final void moveNodeToHead(int i) {
        long[] jArr = this.nodes;
        int i2 = this.head;
        jArr[i] = (((long) i2) & SieveCacheKt.NodeLinkMask) | 4611686016279904256L;
        if (i2 != Integer.MAX_VALUE) {
            jArr[i2] = ((((long) i) & SieveCacheKt.NodeLinkMask) << 31) | (jArr[i2] & SieveCacheKt.NodeMetaAndNextMask);
        }
        this.head = i;
        if (this.tail == Integer.MAX_VALUE) {
            this.tail = i;
        }
    }

    private final void removeNode(int i) {
        long[] jArr = this.nodes;
        long j = jArr[i];
        int i2 = (int) ((j >> 31) & SieveCacheKt.NodeLinkMask);
        int i3 = (int) (j & SieveCacheKt.NodeLinkMask);
        if (i2 != Integer.MAX_VALUE) {
            jArr[i2] = (jArr[i2] & SieveCacheKt.NodeMetaAndPreviousMask) | (((long) i3) & SieveCacheKt.NodeLinkMask);
        } else {
            this.head = i3;
        }
        if (i3 != Integer.MAX_VALUE) {
            jArr[i3] = ((((long) i2) & SieveCacheKt.NodeLinkMask) << 31) | (jArr[i3] & SieveCacheKt.NodeMetaAndNextMask);
        } else {
            this.tail = i2;
        }
        if (this.hand == i) {
            this.hand = i2;
        }
        jArr[i] = 4611686018427387903L;
    }

    private final V removeValueAt(int i) {
        this._count--;
        long[] jArr = this.metadata;
        int i2 = this._capacity;
        int i3 = i >> 3;
        int i4 = (i & 7) << 3;
        long j = (jArr[i3] & (~(255 << i4))) | (254 << i4);
        jArr[i3] = j;
        jArr[(((i - 7) & i2) + (i2 & 7)) >> 3] = j;
        this.keys[i] = null;
        Object[] objArr = this.values;
        V v = (V) objArr[i];
        objArr[i] = null;
        long[] jArr2 = this.nodes;
        long j2 = jArr2[i];
        int i5 = (int) ((j2 >> 31) & SieveCacheKt.NodeLinkMask);
        int i6 = (int) (j2 & SieveCacheKt.NodeLinkMask);
        if (i5 != Integer.MAX_VALUE) {
            jArr2[i5] = (jArr2[i5] & SieveCacheKt.NodeMetaAndPreviousMask) | (((long) i6) & SieveCacheKt.NodeLinkMask);
        } else {
            this.head = i6;
        }
        if (i6 != Integer.MAX_VALUE) {
            jArr2[i6] = ((((long) i5) & SieveCacheKt.NodeLinkMask) << 31) | (jArr2[i6] & SieveCacheKt.NodeMetaAndNextMask);
        } else {
            this.tail = i5;
        }
        if (this.hand == i) {
            this.hand = i5;
        }
        jArr2[i] = 4611686018427387903L;
        return v;
    }

    public final void adjustStorage$collection() {
        if (this._capacity <= 8 || Long.compareUnsigned(((long) getCount()) * 32, ((long) this._capacity) * 25) > 0) {
            resizeStorage$collection(ScatterMapKt.nextCapacity(this._capacity));
        } else {
            dropDeletes$collection();
        }
    }

    public final boolean all(bm3<? super K, ? super V, Boolean> bm3Var) {
        bm3Var.getClass();
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        Object obj = objArr[i4];
                        obj.getClass();
                        Object obj2 = objArr2[i4];
                        obj2.getClass();
                        if (!bm3Var.invoke(obj, obj2).booleanValue()) {
                            return false;
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return true;
                }
            }
            if (i == length) {
                return true;
            }
            i++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0056 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0058 A[LOOP:0: B:5:0x0010->B:18:0x0058, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x005b A[SYNTHETIC] */
    public final boolean any(bm3<? super K, ? super V, Boolean> bm3Var) {
        bm3Var.getClass();
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            Object obj = objArr[i4];
                            obj.getClass();
                            Object obj2 = objArr2[i4];
                            obj2.getClass();
                            if (bm3Var.invoke(obj, obj2).booleanValue()) {
                                return true;
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 == 8) {
                        if (i != length) {
                            i++;
                        }
                    }
                } else if (i != length) {
                    i++;
                }
            }
        }
        return false;
    }

    public final boolean contains(K k) {
        k.getClass();
        return findKeyIndex(k) >= 0;
    }

    public final boolean containsKey(K k) {
        k.getClass();
        return findKeyIndex(k) >= 0;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0049 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x004b A[LOOP:0: B:5:0x000e->B:18:0x004b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x004e A[SYNTHETIC] */
    public final boolean containsValue(V v) {
        v.getClass();
        Object[] objArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            Object obj = objArr[(i << 3) + i3];
                            obj.getClass();
                            if (v.equals(obj)) {
                                return true;
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 == 8) {
                        if (i != length) {
                            i++;
                        }
                    }
                } else if (i != length) {
                    i++;
                }
            }
        }
        return false;
    }

    public final int count(bm3<? super K, ? super V, Boolean> bm3Var) {
        bm3Var.getClass();
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return 0;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j) < 128) {
                        int i5 = (i << 3) + i4;
                        Object obj = objArr[i5];
                        obj.getClass();
                        Object obj2 = objArr2[i5];
                        obj2.getClass();
                        if (bm3Var.invoke(obj, obj2).booleanValue()) {
                            i2++;
                        }
                    }
                    j >>= 8;
                }
                if (i3 != 8) {
                    return i2;
                }
            }
            if (i == length) {
                return i2;
            }
            i++;
        }
    }

    public final void dropDeletes$collection() {
        Object[] objArr;
        long[] jArr = this.metadata;
        if (jArr == null) {
            return;
        }
        int i = this._capacity;
        Object[] objArr2 = this.keys;
        Object[] objArr3 = this.values;
        long[] jArr2 = this.nodes;
        long[] jArr3 = new long[i];
        int i2 = 0;
        long j = 9223372034707292159L;
        Arrays.fill(jArr3, 0, i, 9223372034707292159L);
        int i3 = (i + 7) >> 3;
        for (int i4 = 0; i4 < i3; i4++) {
            long j2 = jArr[i4] & (-9187201950435737472L);
            jArr[i4] = (-72340172838076674L) & ((~j2) + (j2 >>> 7));
        }
        int length = jArr.length;
        int i5 = length - 1;
        int i6 = length - 2;
        jArr[i6] = (jArr[i6] & 72057594037927935L) | (-72057594037927936L);
        jArr[i5] = jArr[0];
        int i7 = 0;
        while (i7 != i) {
            int i8 = i7 >> 3;
            int i9 = (i7 & 7) << 3;
            long j3 = (jArr[i8] >> i9) & 255;
            if (j3 != 128 && j3 == 254) {
                Object obj = objArr2[i7];
                int iHashCode = (obj != null ? obj.hashCode() : i2) * ScatterMapKt.MurmurHashC1;
                int i10 = iHashCode ^ (iHashCode << 16);
                int i11 = i10 >>> 7;
                int i12 = i2;
                int iFindFirstAvailableSlot = findFirstAvailableSlot(i11);
                int i13 = i11 & i;
                long j4 = j;
                if (((iFindFirstAvailableSlot - i13) & i) / 8 == ((i7 - i13) & i) / 8) {
                    jArr[i8] = (((long) (i10 & Trace.MAX_TRACE_LABEL_LENGTH)) << i9) | (jArr[i8] & (~(255 << i9)));
                    if (jArr3[i7] == j4) {
                        long j5 = i7;
                        jArr3[i7] = j5 | (j5 << 32);
                    }
                    jArr[jArr.length - 1] = jArr[i12];
                    i7++;
                    i2 = i12;
                    j = j4;
                } else {
                    int i14 = iFindFirstAvailableSlot >> 3;
                    long j6 = jArr[i14];
                    int i15 = (iFindFirstAvailableSlot & 7) << 3;
                    if (((j6 >> i15) & 255) == 128) {
                        objArr = objArr2;
                        jArr[i14] = ((~(255 << i15)) & j6) | (((long) (i10 & Trace.MAX_TRACE_LABEL_LENGTH)) << i15);
                        jArr[i8] = (jArr[i8] & (~(255 << i9))) | (128 << i9);
                        objArr[iFindFirstAvailableSlot] = objArr[i7];
                        objArr[i7] = null;
                        objArr3[iFindFirstAvailableSlot] = objArr3[i7];
                        objArr3[i7] = null;
                        jArr2[iFindFirstAvailableSlot] = jArr2[i7];
                        jArr2[i7] = 4611686018427387903L;
                        int i16 = (int) ((jArr3[i7] >> 32) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                        if (i16 != Integer.MAX_VALUE) {
                            jArr3[i16] = (jArr3[i16] & (-4294967296L)) | ((long) iFindFirstAvailableSlot);
                            jArr3[i7] = (jArr3[i7] & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (-4294967296L);
                        } else {
                            jArr3[i7] = 9223372032559808512L | ((long) iFindFirstAvailableSlot);
                        }
                        jArr3[iFindFirstAvailableSlot] = (((long) i7) << 32) | SieveCacheKt.NodeLinkMask;
                    } else {
                        objArr = objArr2;
                        jArr[i14] = (((long) (i10 & Trace.MAX_TRACE_LABEL_LENGTH)) << i15) | ((~(255 << i15)) & j6);
                        Object obj2 = objArr[iFindFirstAvailableSlot];
                        objArr[iFindFirstAvailableSlot] = objArr[i7];
                        objArr[i7] = obj2;
                        Object obj3 = objArr3[iFindFirstAvailableSlot];
                        objArr3[iFindFirstAvailableSlot] = objArr3[i7];
                        objArr3[i7] = obj3;
                        long j7 = jArr2[iFindFirstAvailableSlot];
                        jArr2[iFindFirstAvailableSlot] = jArr2[i7];
                        jArr2[i7] = j7;
                        int i17 = (int) ((jArr3[i7] >> 32) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                        if (i17 != Integer.MAX_VALUE) {
                            long j8 = iFindFirstAvailableSlot;
                            jArr3[i17] = (jArr3[i17] & (-4294967296L)) | j8;
                            jArr3[i7] = (jArr3[i7] & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (j8 << 32);
                        } else {
                            long j9 = iFindFirstAvailableSlot;
                            jArr3[i7] = j9 | (j9 << 32);
                            i17 = i7;
                        }
                        jArr3[iFindFirstAvailableSlot] = (((long) i17) << 32) | ((long) i7);
                        i7--;
                    }
                    jArr[jArr.length - 1] = jArr[i12];
                    i7++;
                    i = i;
                    i2 = i12;
                    j = j4;
                    objArr2 = objArr;
                }
            } else {
                i7++;
            }
        }
        initializeGrowth();
        fixupNodes(jArr3);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0070 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0072 A[LOOP:0: B:16:0x002d->B:28:0x0072, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:33:0x0075 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SieveCache)) {
            return false;
        }
        SieveCache sieveCache = (SieveCache) obj;
        if (sieveCache.getSize() != getSize() || sieveCache._count != this._count) {
            return false;
        }
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            Object obj2 = objArr[i4];
                            obj2.getClass();
                            Object obj3 = objArr2[i4];
                            obj3.getClass();
                            if (!obj3.equals(sieveCache.get(obj2))) {
                                return false;
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 == 8) {
                        if (i != length) {
                            i++;
                        }
                    }
                } else if (i != length) {
                    i++;
                }
            }
        }
        return true;
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final void forEach(bm3<? super K, ? super V, j59> bm3Var) {
        bm3Var.getClass();
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
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
                        Object obj = objArr[i4];
                        obj.getClass();
                        Object obj2 = objArr2[i4];
                        obj2.getClass();
                        bm3Var.invoke(obj, obj2);
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

    public final void forEachIndexed(nl3<? super Integer, j59> nl3Var) {
        nl3Var.getClass();
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
                        qz0.f(i << 3, i3, nl3Var);
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

    public final void forEachKey(nl3<? super K, j59> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.keys;
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
                        Object obj = objArr[(i << 3) + i3];
                        obj.getClass();
                        nl3Var.invoke(obj);
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

    public final void forEachValue(nl3<? super V, j59> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.values;
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
                        Object obj = objArr[(i << 3) + i3];
                        obj.getClass();
                        nl3Var.invoke(obj);
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

    public final V get(K k) {
        k.getClass();
        int iFindKeyIndex = findKeyIndex(k);
        if (iFindKeyIndex >= 0) {
            long[] jArr = this.nodes;
            jArr[iFindKeyIndex] = (jArr[iFindKeyIndex] & 4611686018427387903L) | SieveCacheKt.NodeVisitedBit;
            return (V) this.values[iFindKeyIndex];
        }
        V vInvoke = this.createValueFromKey.invoke(k);
        if (vInvoke == null) {
            return null;
        }
        put(k, vInvoke);
        return vInvoke;
    }

    public final int getCapacity() {
        return this._capacity;
    }

    public final int getCount() {
        return this._count;
    }

    public final int getMaxSize() {
        return this._maxSize;
    }

    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return 0;
        }
        int i = 0;
        int iHashCode = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        Object obj = objArr[i4];
                        obj.getClass();
                        Object obj2 = objArr2[i4];
                        obj2.getClass();
                        iHashCode += obj2.hashCode() ^ obj.hashCode();
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return iHashCode;
                }
            }
            if (i == length) {
                return iHashCode;
            }
            i++;
        }
    }

    public final boolean isEmpty() {
        return this._count == 0;
    }

    public final boolean isNotEmpty() {
        return this._count != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(ScatterSet<K> scatterSet) {
        scatterSet.getClass();
        Object[] objArr = scatterSet.elements;
        long[] jArr = scatterSet.metadata;
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
                        remove(objArr[(i << 3) + i3]);
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

    public final boolean none() {
        return this._count == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(b36<? extends K, ? extends V> b36Var) {
        b36Var.getClass();
        put(b36Var.b, b36Var.c);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final V put(K k, V v) {
        k.getClass();
        v.getClass();
        int iFindInsertIndex = findInsertIndex(k);
        if (iFindInsertIndex < 0) {
            iFindInsertIndex = ~iFindInsertIndex;
        }
        Object[] objArr = this.values;
        V v2 = (V) objArr[iFindInsertIndex];
        objArr[iFindInsertIndex] = v;
        this.keys[iFindInsertIndex] = k;
        int iIntValue = this.sizeOf.invoke(k, v).intValue() + this._size;
        this._size = iIntValue;
        if (v2 != null) {
            this._size = iIntValue - ((Number) this.sizeOf.invoke(k, v2)).intValue();
            this.onEntryRemoved.invoke(k, v2, v, Boolean.FALSE);
            trimToSize(this._maxSize);
            return v2;
        }
        trimToSize(this._maxSize);
        long[] jArr = this.nodes;
        int i = this.head;
        jArr[iFindInsertIndex] = (((long) i) & SieveCacheKt.NodeLinkMask) | 4611686016279904256L;
        if (i != Integer.MAX_VALUE) {
            jArr[i] = (jArr[i] & SieveCacheKt.NodeMetaAndNextMask) | ((SieveCacheKt.NodeLinkMask & ((long) iFindInsertIndex)) << 31);
        }
        this.head = iFindInsertIndex;
        if (this.tail == Integer.MAX_VALUE) {
            this.tail = iFindInsertIndex;
        }
        return v2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void putAll(SieveCache<K, V> sieveCache) {
        sieveCache.getClass();
        Object[] objArr = sieveCache.keys;
        Object[] objArr2 = sieveCache.values;
        long[] jArr = sieveCache.metadata;
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
                        Object obj = objArr[i4];
                        obj.getClass();
                        Object obj2 = objArr2[i4];
                        obj2.getClass();
                        put(obj, obj2);
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

    public final boolean remove(K k, V v) {
        V vRemoveValueAt;
        k.getClass();
        v.getClass();
        int iFindKeyIndex = findKeyIndex(k);
        if (iFindKeyIndex < 0 || !aa4.e(this.values[iFindKeyIndex], v) || (vRemoveValueAt = removeValueAt(iFindKeyIndex)) == null) {
            return false;
        }
        this._size -= this.sizeOf.invoke(k, vRemoveValueAt).intValue();
        this.onEntryRemoved.invoke(k, vRemoveValueAt, null, Boolean.FALSE);
        return true;
    }

    public final void removeIf(bm3<? super K, ? super V, Boolean> bm3Var) {
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
                        Object obj = this.keys[i4];
                        obj.getClass();
                        Object obj2 = this.values[i4];
                        obj2.getClass();
                        if (bm3Var.invoke(obj, obj2).booleanValue()) {
                            V vRemoveValueAt = removeValueAt(i4);
                            if (vRemoveValueAt == null) {
                                return;
                            }
                            this._size -= this.sizeOf.invoke((K) obj, vRemoveValueAt).intValue();
                            this.onEntryRemoved.invoke((K) obj, vRemoveValueAt, null, Boolean.FALSE);
                        } else {
                            continue;
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

    public final void resize(int i) {
        this._maxSize = i;
        trimToSize(i);
    }

    public final void resizeStorage$collection(int i) {
        long[] jArr = this.metadata;
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr2 = this.nodes;
        int i2 = this._capacity;
        int[] iArr = new int[i2];
        initializeStorage(i);
        long[] jArr3 = this.metadata;
        Object[] objArr3 = this.keys;
        Object[] objArr4 = this.values;
        long[] jArr4 = this.nodes;
        int i3 = this._capacity;
        int i4 = 0;
        while (i4 < i2) {
            if (((jArr[i4 >> 3] >> ((i4 & 7) << 3)) & 255) < 128) {
                Object obj = objArr[i4];
                int iHashCode = (obj != null ? obj.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
                int i5 = iHashCode ^ (iHashCode << 16);
                int iFindFirstAvailableSlot = findFirstAvailableSlot(i5 >>> 7);
                long j = i5 & Trace.MAX_TRACE_LABEL_LENGTH;
                int i6 = iFindFirstAvailableSlot >> 3;
                int i7 = (iFindFirstAvailableSlot & 7) << 3;
                long j2 = (jArr3[i6] & (~(255 << i7))) | (j << i7);
                jArr3[i6] = j2;
                jArr3[(((iFindFirstAvailableSlot - 7) & i3) + (i3 & 7)) >> 3] = j2;
                objArr3[iFindFirstAvailableSlot] = obj;
                objArr4[iFindFirstAvailableSlot] = objArr2[i4];
                jArr4[iFindFirstAvailableSlot] = jArr2[i4];
                iArr[i4] = iFindFirstAvailableSlot;
            }
            i4++;
            jArr = jArr;
            objArr = objArr;
        }
        fixupNodes(iArr);
    }

    public final void set(K k, V v) {
        k.getClass();
        v.getClass();
        put(k, v);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SieveCache[maxSize=");
        sb.append(this._maxSize);
        sb.append(", size=");
        sb.append(this._size);
        sb.append(", capacity=");
        sb.append(this._capacity);
        sb.append(", count=");
        return rg.h(sb, this._count, ']');
    }

    public final void trimToSize(int i) {
        int iFindEvictionCandidate;
        while (this._size > i && getCount() != 0 && (iFindEvictionCandidate = findEvictionCandidate()) != Integer.MAX_VALUE) {
            Object obj = this.keys[iFindEvictionCandidate];
            obj.getClass();
            V vRemoveValueAt = removeValueAt(iFindEvictionCandidate);
            if (vRemoveValueAt != null) {
                this._size -= this.sizeOf.invoke((K) obj, vRemoveValueAt).intValue();
                this.onEntryRemoved.invoke((K) obj, vRemoveValueAt, null, Boolean.TRUE);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.collection.SieveCache$3, reason: invalid class name */
    public static final class AnonymousClass3 extends gh4 implements fm3<K, V, V, Boolean, j59> {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        public AnonymousClass3() {
            super(4);
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ j59 invoke(Object obj, Object obj2, Object obj3, Boolean bool) {
            invoke(obj, obj2, obj3, bool.booleanValue());
            return j59.a;
        }

        public final void invoke(K k, V v, V v2, boolean z) {
            k.getClass();
            v.getClass();
        }
    }

    public final void plusAssign(b36<? extends K, ? extends V>[] b36VarArr) {
        b36VarArr.getClass();
        putAll(b36VarArr);
    }

    public final void plusAssign(Iterable<? extends b36<? extends K, ? extends V>> iterable) {
        iterable.getClass();
        putAll(iterable);
    }

    public final void plusAssign(zo7<? extends b36<? extends K, ? extends V>> zo7Var) {
        zo7Var.getClass();
        putAll(zo7Var);
    }

    public final void plusAssign(Map<K, ? extends V> map) {
        map.getClass();
        putAll(map);
    }

    public final void plusAssign(ScatterMap<K, V> scatterMap) {
        scatterMap.getClass();
        putAll(scatterMap);
    }

    public final void plusAssign(SieveCache<K, V> sieveCache) {
        sieveCache.getClass();
        putAll(sieveCache);
    }

    public final V remove(K k) {
        V vRemoveValueAt;
        k.getClass();
        int iFindKeyIndex = findKeyIndex(k);
        if (iFindKeyIndex < 0 || (vRemoveValueAt = removeValueAt(iFindKeyIndex)) == null) {
            return null;
        }
        this._size -= this.sizeOf.invoke(k, vRemoveValueAt).intValue();
        this.onEntryRemoved.invoke(k, vRemoveValueAt, null, Boolean.FALSE);
        return vRemoveValueAt;
    }

    public /* synthetic */ SieveCache(int i, int i2, bm3 bm3Var, nl3 nl3Var, fm3 fm3Var, int i3, jh2 jh2Var) {
        this(i, (i3 & 2) != 0 ? 6 : i2, (i3 & 4) != 0 ? AnonymousClass1.INSTANCE : bm3Var, (i3 & 8) != 0 ? AnonymousClass2.INSTANCE : nl3Var, (i3 & 16) != 0 ? AnonymousClass3.INSTANCE : fm3Var);
    }

    public final void minusAssign(K[] kArr) {
        kArr.getClass();
        for (K k : kArr) {
            remove(k);
        }
    }

    public final void minusAssign(Iterable<? extends K> iterable) {
        iterable.getClass();
        Iterator<? extends K> it = iterable.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    public final void minusAssign(zo7<? extends K> zo7Var) {
        zo7Var.getClass();
        Iterator<? extends K> it = zo7Var.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    public final void minusAssign(K k) {
        k.getClass();
        remove(k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(ObjectList<K> objectList) {
        objectList.getClass();
        Object[] objArr = objectList.content;
        int i = objectList._size;
        for (int i2 = 0; i2 < i; i2++) {
            remove(objArr[i2]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void putAll(Iterable<? extends b36<? extends K, ? extends V>> iterable) {
        iterable.getClass();
        for (b36<? extends K, ? extends V> b36Var : iterable) {
            put(b36Var.b, b36Var.c);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void putAll(zo7<? extends b36<? extends K, ? extends V>> zo7Var) {
        zo7Var.getClass();
        for (b36<? extends K, ? extends V> b36Var : zo7Var) {
            put(b36Var.b, b36Var.c);
        }
    }

    private final void fixupNodes(int[] iArr) {
        long[] jArr = this.nodes;
        int length = jArr.length;
        int i = 0;
        while (true) {
            int i2 = Integer.MAX_VALUE;
            if (i >= length) {
                break;
            }
            long j = jArr[i];
            int i3 = (int) ((j >> 31) & SieveCacheKt.NodeLinkMask);
            int i4 = (int) (j & SieveCacheKt.NodeLinkMask);
            long j2 = ((j & SieveCacheKt.NodeMetaMask) | ((long) (i3 == Integer.MAX_VALUE ? Integer.MAX_VALUE : iArr[i3]))) << 31;
            if (i4 != Integer.MAX_VALUE) {
                i2 = iArr[i4];
            }
            jArr[i] = j2 | ((long) i2);
            i++;
        }
        int i5 = this.head;
        if (i5 != Integer.MAX_VALUE) {
            this.head = iArr[i5];
        }
        int i6 = this.tail;
        if (i6 != Integer.MAX_VALUE) {
            this.tail = iArr[i6];
        }
        int i7 = this.hand;
        if (i7 != Integer.MAX_VALUE) {
            this.hand = iArr[i7];
        }
    }

    public final void putAll(Map<K, ? extends V> map) {
        map.getClass();
        for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public final boolean any() {
        return this._count != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void putAll(ScatterMap<K, V> scatterMap) {
        scatterMap.getClass();
        Object[] objArr = scatterMap.keys;
        Object[] objArr2 = scatterMap.values;
        long[] jArr = scatterMap.metadata;
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
                        put(objArr[i4], objArr2[i4]);
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

    /* JADX WARN: Multi-variable type inference failed */
    public final void putAll(b36<? extends K, ? extends V>[] b36VarArr) {
        b36VarArr.getClass();
        for (b36<? extends K, ? extends V> b36Var : b36VarArr) {
            put(b36Var.b, b36Var.c);
        }
    }

    public final int count() {
        return getSize();
    }
}
