package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import androidx.tracing.Trace;
import defpackage.ah;
import defpackage.bh;
import defpackage.bm3;
import defpackage.hm;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.n1;
import defpackage.nl3;
import defpackage.qz0;
import defpackage.rz0;

/* JADX INFO: loaded from: classes.dex */
public abstract class IntFloatMap {
    public int _capacity;
    public int _size;
    public int[] keys;
    public long[] metadata;
    public float[] values;

    private IntFloatMap() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.keys = IntSetKt.getEmptyIntArray();
        this.values = FloatSetKt.getEmptyFloatArray();
    }

    public static /* synthetic */ void getKeys$annotations() {
    }

    public static /* synthetic */ void getMetadata$annotations() {
    }

    public static /* synthetic */ void getValues$annotations() {
    }

    public static /* synthetic */ void get_capacity$collection$annotations() {
    }

    public static /* synthetic */ void get_size$collection$annotations() {
    }

    public static /* synthetic */ String joinToString$default(IntFloatMap intFloatMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, bm3 bm3Var, int i2, Object obj) {
        long[] jArr;
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: joinToString");
            return null;
        }
        CharSequence charSequence5 = (i2 & 1) != 0 ? ", " : charSequence;
        CharSequence charSequence6 = (i2 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence7 = (i2 & 4) == 0 ? charSequence3 : "";
        int i3 = (i2 & 8) != 0 ? -1 : i;
        CharSequence charSequence8 = (i2 & 16) != 0 ? "..." : charSequence4;
        StringBuilder sbC = hm.c(bm3Var, charSequence5, charSequence6, charSequence7, charSequence8);
        sbC.append(charSequence6);
        int[] iArr = intFloatMap.keys;
        float[] fArr = intFloatMap.values;
        long[] jArr2 = intFloatMap.metadata;
        int length = jArr2.length - 2;
        if (length < 0) {
            sbC.append(charSequence7);
            break;
        }
        int i4 = 0;
        int i5 = 0;
        loop0: while (true) {
            long j = jArr2[i4];
            int i6 = i4;
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i7 = 8;
                int i8 = 8 - ((~(i6 - length)) >>> 31);
                int i9 = 0;
                while (i9 < i8) {
                    if ((j & 255) < 128) {
                        int i10 = (i6 << 3) + i9;
                        int i11 = iArr[i10];
                        float f = fArr[i10];
                        if (i5 == i3) {
                            sbC.append(charSequence8);
                            break loop0;
                        }
                        if (i5 != 0) {
                            sbC.append(charSequence5);
                        }
                        sbC.append((CharSequence) bm3Var.invoke(Integer.valueOf(i11), Float.valueOf(f)));
                        i5++;
                    }
                    j >>= i7;
                    i9++;
                    i7 = i7;
                    jArr2 = jArr2;
                }
                jArr = jArr2;
                if (i8 == i7) {
                }
                sbC.append(charSequence7);
                break;
            }
            jArr = jArr2;
            if (i6 == length) {
                sbC.append(charSequence7);
                break;
            }
            i4 = i6 + 1;
            jArr2 = jArr;
        }
        return sbC.toString();
    }

    public final boolean all(bm3<? super Integer, ? super Float, Boolean> bm3Var) {
        bm3Var.getClass();
        int[] iArr = this.keys;
        float[] fArr = this.values;
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
                        if (!bm3Var.invoke(Integer.valueOf(iArr[i4]), Float.valueOf(fArr[i4])).booleanValue()) {
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

    /* JADX WARN: Code duplicated, block: B:17:0x0058 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x005a A[LOOP:0: B:5:0x0010->B:18:0x005a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x005d A[SYNTHETIC] */
    public final boolean any(bm3<? super Integer, ? super Float, Boolean> bm3Var) {
        bm3Var.getClass();
        int[] iArr = this.keys;
        float[] fArr = this.values;
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
                            if (bm3Var.invoke(Integer.valueOf(iArr[i4]), Float.valueOf(fArr[i4])).booleanValue()) {
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

    public final boolean contains(int i) {
        return containsKey(i);
    }

    public final boolean containsKey(int i) {
        return findKeyIndex(i) >= 0;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0041 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0043 A[LOOP:0: B:5:0x000b->B:18:0x0043, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x0046 A[SYNTHETIC] */
    public final boolean containsValue(float f) {
        float[] fArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128 && f == fArr[(i << 3) + i3]) {
                            return true;
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

    public final int count(bm3<? super Integer, ? super Float, Boolean> bm3Var) {
        bm3Var.getClass();
        int[] iArr = this.keys;
        float[] fArr = this.values;
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
                        if (bm3Var.invoke(Integer.valueOf(iArr[i5]), Float.valueOf(fArr[i5])).booleanValue()) {
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

    /* JADX WARN: Code duplicated, block: B:28:0x0069 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x006b A[LOOP:0: B:14:0x0027->B:29:0x006b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x006e A[SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof IntFloatMap)) {
            return false;
        }
        IntFloatMap intFloatMap = (IntFloatMap) obj;
        if (intFloatMap.getSize() != getSize()) {
            return false;
        }
        int[] iArr = this.keys;
        float[] fArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            loop0: while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            int i5 = iArr[i4];
                            float f = fArr[i4];
                            int iFindKeyIndex = intFloatMap.findKeyIndex(i5);
                            if (iFindKeyIndex < 0 || f != intFloatMap.values[iFindKeyIndex]) {
                                break loop0;
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
            return false;
        }
        return true;
    }

    public final int findKeyIndex(int i) {
        int iHashCode = Integer.hashCode(i) * ScatterMapKt.MurmurHashC1;
        int i2 = iHashCode ^ (iHashCode << 16);
        int i3 = i2 & Trace.MAX_TRACE_LABEL_LENGTH;
        int i4 = this._capacity;
        int i5 = (i2 >>> 7) & i4;
        int i6 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i7 = i5 >> 3;
            int i8 = (i5 & 7) << 3;
            long j = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j2 = (((long) i3) * ScatterMapKt.BitmaskLsb) ^ j;
            for (long j3 = (~j2) & (j2 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j3 != 0; j3 &= j3 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j3) >> 3) + i5) & i4;
                if (this.keys[iNumberOfTrailingZeros] == i) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((j & ((~j) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i6 += 8;
            i5 = (i5 + i6) & i4;
        }
    }

    public final void forEach(bm3<? super Integer, ? super Float, j59> bm3Var) {
        bm3Var.getClass();
        int[] iArr = this.keys;
        float[] fArr = this.values;
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
                        bm3Var.invoke(Integer.valueOf(iArr[i4]), Float.valueOf(fArr[i4]));
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

    public final void forEachKey(nl3<? super Integer, j59> nl3Var) {
        nl3Var.getClass();
        int[] iArr = this.keys;
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
                        nl3Var.invoke(Integer.valueOf(iArr[(i << 3) + i3]));
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

    public final void forEachValue(nl3<? super Float, j59> nl3Var) {
        nl3Var.getClass();
        float[] fArr = this.values;
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
                        nl3Var.invoke(Float.valueOf(fArr[(i << 3) + i3]));
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

    public final float get(int i) {
        int iFindKeyIndex = findKeyIndex(i);
        if (iFindKeyIndex < 0) {
            RuntimeHelpersKt.throwNoSuchElementException("Cannot find value for key " + i);
        }
        return this.values[iFindKeyIndex];
    }

    public final int getCapacity() {
        return this._capacity;
    }

    public final float getOrDefault(int i, float f) {
        int iFindKeyIndex = findKeyIndex(i);
        return iFindKeyIndex >= 0 ? this.values[iFindKeyIndex] : f;
    }

    public final float getOrElse(int i, ll3<Float> ll3Var) {
        ll3Var.getClass();
        int iFindKeyIndex = findKeyIndex(i);
        return iFindKeyIndex < 0 ? ll3Var.invoke().floatValue() : this.values[iFindKeyIndex];
    }

    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        int[] iArr = this.keys;
        float[] fArr = this.values;
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
                        int i5 = iArr[i4];
                        iHashCode += Float.hashCode(fArr[i4]) ^ Integer.hashCode(i5);
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
        return this._size == 0;
    }

    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, bm3<? super Integer, ? super Float, ? extends CharSequence> bm3Var) {
        long[] jArr;
        CharSequence charSequence5 = charSequence;
        StringBuilder sbC = hm.c(bm3Var, charSequence5, charSequence2, charSequence3, charSequence4);
        sbC.append(charSequence2);
        int[] iArr = this.keys;
        float[] fArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length < 0) {
            sbC.append(charSequence3);
            break;
        }
        int i2 = 0;
        int i3 = 0;
        loop0: while (true) {
            long j = jArr2[i2];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i4 = 8;
                int i5 = 8 - ((~(i2 - length)) >>> 31);
                int i6 = 0;
                while (i6 < i5) {
                    if ((j & 255) < 128) {
                        int i7 = (i2 << 3) + i6;
                        int i8 = iArr[i7];
                        float f = fArr[i7];
                        if (i3 == i) {
                            sbC.append(charSequence4);
                            break loop0;
                        }
                        if (i3 != 0) {
                            sbC.append(charSequence5);
                        }
                        sbC.append(bm3Var.invoke(Integer.valueOf(i8), Float.valueOf(f)));
                        i3++;
                    }
                    j >>= i4;
                    i6++;
                    charSequence5 = charSequence;
                    i4 = i4;
                    jArr2 = jArr2;
                }
                jArr = jArr2;
                if (i5 == i4) {
                }
                sbC.append(charSequence3);
                break;
            }
            jArr = jArr2;
            if (i2 == length) {
                sbC.append(charSequence3);
                break;
            }
            i2++;
            charSequence5 = charSequence;
            jArr2 = jArr;
        }
        return sbC.toString();
    }

    public final boolean none() {
        return this._size == 0;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0068 A[DONT_INVERT, PHI: r8
      0x0068: PHI (r8v2 int) = (r8v1 int), (r8v3 int) binds: [B:10:0x002e, B:19:0x0066] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:21:0x006a A[LOOP:0: B:9:0x0020->B:21:0x006a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x006d A[EDGE_INSN: B:25:0x006d->B:22:0x006d BREAK  A[LOOP:0: B:9:0x0020->B:21:0x006a], SYNTHETIC] */
    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder("{");
        int[] iArr = this.keys;
        float[] fArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            int i2 = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i != length) {
                        break;
                        break;
                    }
                    i++;
                } else {
                    int i3 = 8 - ((~(i - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j) < 128) {
                            int i5 = (i << 3) + i4;
                            int i6 = iArr[i5];
                            float f = fArr[i5];
                            sb.append(i6);
                            sb.append("=");
                            sb.append(f);
                            i2++;
                            if (i2 < this._size) {
                                sb.append(", ");
                            }
                        }
                        j >>= 8;
                    }
                    if (i3 != 8) {
                        break;
                    }
                    if (i != length) {
                        break;
                    }
                    i++;
                }
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public /* synthetic */ IntFloatMap(jh2 jh2Var) {
        this();
    }

    public final boolean any() {
        return this._size != 0;
    }

    public final int count() {
        return getSize();
    }

    public final String joinToString(CharSequence charSequence) {
        charSequence.getClass();
        return joinToString$default(this, charSequence, null, null, 0, null, 30, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2) {
        charSequence.getClass();
        charSequence2.getClass();
        return joinToString$default(this, charSequence, charSequence2, null, 0, null, 28, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        bh.c(charSequence, charSequence2, charSequence3);
        return joinToString$default(this, charSequence, charSequence2, charSequence3, 0, null, 24, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i) {
        bh.c(charSequence, charSequence2, charSequence3);
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i, null, 16, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, bm3<? super Integer, ? super Float, ? extends CharSequence> bm3Var) {
        long[] jArr;
        StringBuilder sbD = rz0.d(bm3Var, charSequence, charSequence2, charSequence3, charSequence2);
        int[] iArr = this.keys;
        float[] fArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length < 0) {
            sbD.append(charSequence3);
            break;
        }
        int i2 = 0;
        int i3 = 0;
        loop0: while (true) {
            long j = jArr2[i2];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i4 = 8;
                int i5 = 8 - ((~(i2 - length)) >>> 31);
                int i6 = 0;
                while (i6 < i5) {
                    if ((j & 255) < 128) {
                        int i7 = (i2 << 3) + i6;
                        int i8 = iArr[i7];
                        float f = fArr[i7];
                        if (i3 == i) {
                            sbD.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i3 != 0) {
                            sbD.append(charSequence);
                        }
                        sbD.append(bm3Var.invoke(Integer.valueOf(i8), Float.valueOf(f)));
                        i3++;
                    }
                    j >>= i4;
                    i6++;
                    i4 = i4;
                    jArr2 = jArr2;
                }
                jArr = jArr2;
                if (i5 == i4) {
                }
                sbD.append(charSequence3);
                break;
            }
            jArr = jArr2;
            if (i2 == length) {
                sbD.append(charSequence3);
                break;
            }
            i2++;
            jArr2 = jArr;
        }
        return sbD.toString();
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4) {
        long[] jArr;
        StringBuilder sbE = ah.e(charSequence, charSequence2, charSequence3, charSequence4, charSequence2);
        int[] iArr = this.keys;
        float[] fArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length < 0) {
            sbE.append(charSequence3);
            break;
        }
        int i2 = 0;
        int i3 = 0;
        loop0: while (true) {
            long j = jArr2[i2];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i4 = 8;
                int i5 = 8 - ((~(i2 - length)) >>> 31);
                int i6 = 0;
                while (i6 < i5) {
                    if ((j & 255) < 128) {
                        int i7 = (i2 << 3) + i6;
                        int i8 = iArr[i7];
                        float f = fArr[i7];
                        if (i3 == i) {
                            sbE.append(charSequence4);
                            break loop0;
                        }
                        if (i3 != 0) {
                            sbE.append(charSequence);
                        }
                        sbE.append(i8);
                        sbE.append('=');
                        sbE.append(f);
                        i3++;
                    }
                    j >>= i4;
                    i6++;
                    i4 = i4;
                    jArr2 = jArr2;
                }
                jArr = jArr2;
                if (i5 == i4) {
                }
                sbE.append(charSequence3);
                break;
            }
            jArr = jArr2;
            if (i2 == length) {
                sbE.append(charSequence3);
                break;
            }
            i2++;
            jArr2 = jArr;
        }
        return sbE.toString();
    }

    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, 31, null);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0079 A[DONT_INVERT, PHI: r10
      0x0079: PHI (r10v2 int) = (r10v1 int), (r10v3 int) binds: [B:6:0x0029, B:20:0x0077] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:22:0x007b A[LOOP:0: B:5:0x001b->B:22:0x007b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x007e A[SYNTHETIC] */
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, bm3<? super Integer, ? super Float, ? extends CharSequence> bm3Var) {
        StringBuilder sbD = rz0.d(bm3Var, charSequence, charSequence2, charSequence3, charSequence2);
        int[] iArr = this.keys;
        float[] fArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sbD.append(charSequence3);
            break;
        }
        int i = 0;
        int i2 = 0;
        loop0: while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                if (i == length) {
                    sbD.append(charSequence3);
                    break;
                }
                i++;
            } else {
                int i3 = 8;
                int i4 = 8 - ((~(i - length)) >>> 31);
                int i5 = 0;
                while (i5 < i4) {
                    if ((j & 255) < 128) {
                        int i6 = (i << 3) + i5;
                        int i7 = iArr[i6];
                        float f = fArr[i6];
                        if (i2 == -1) {
                            sbD.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i2 != 0) {
                            sbD.append(charSequence);
                        }
                        sbD.append(bm3Var.invoke(Integer.valueOf(i7), Float.valueOf(f)));
                        i2++;
                    }
                    j >>= i3;
                    i5++;
                    i3 = i3;
                }
                if (i4 == i3) {
                    if (i == length) {
                        i++;
                    }
                }
                sbD.append(charSequence3);
                break;
            }
        }
        return sbD.toString();
    }

    public static /* synthetic */ String joinToString$default(IntFloatMap intFloatMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: joinToString");
            return null;
        }
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i2 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i2 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence5 = charSequence4;
        CharSequence charSequence6 = charSequence3;
        return intFloatMap.joinToString(charSequence, charSequence2, charSequence6, i, charSequence5);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, bm3<? super Integer, ? super Float, ? extends CharSequence> bm3Var) {
        charSequence.getClass();
        charSequence2.getClass();
        bm3Var.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        int[] iArr = this.keys;
        float[] fArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sb.append((CharSequence) "");
            break;
        }
        int i = 0;
        int i2 = 0;
        loop0: while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j) < 128) {
                        int i5 = (i << 3) + i4;
                        int i6 = iArr[i5];
                        float f = fArr[i5];
                        if (i2 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i2 != 0) {
                            sb.append(charSequence);
                        }
                        sb.append(bm3Var.invoke(Integer.valueOf(i6), Float.valueOf(f)));
                        i2++;
                    }
                    j >>= 8;
                }
                if (i3 == 8) {
                }
                sb.append((CharSequence) "");
                break;
            }
            if (i == length) {
                sb.append((CharSequence) "");
                break;
            }
            i++;
        }
        return sb.toString();
    }

    public final String joinToString(CharSequence charSequence, bm3<? super Integer, ? super Float, ? extends CharSequence> bm3Var) {
        charSequence.getClass();
        bm3Var.getClass();
        StringBuilder sb = new StringBuilder("");
        int[] iArr = this.keys;
        float[] fArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sb.append((CharSequence) "");
            break;
        }
        int i = 0;
        int i2 = 0;
        loop0: while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8;
                int i4 = 8 - ((~(i - length)) >>> 31);
                int i5 = 0;
                while (i5 < i4) {
                    if ((255 & j) < 128) {
                        int i6 = (i << 3) + i5;
                        int i7 = iArr[i6];
                        float f = fArr[i6];
                        if (i2 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i2 != 0) {
                            sb.append(charSequence);
                        }
                        sb.append(bm3Var.invoke(Integer.valueOf(i7), Float.valueOf(f)));
                        i2++;
                    }
                    j >>= i3;
                    i5++;
                    i3 = i3;
                }
                if (i4 == i3) {
                }
                sb.append((CharSequence) "");
                break;
            }
            if (i == length) {
                sb.append((CharSequence) "");
                break;
            }
            i++;
        }
        return sb.toString();
    }

    public final String joinToString(bm3<? super Integer, ? super Float, ? extends CharSequence> bm3Var) {
        bm3Var.getClass();
        StringBuilder sb = new StringBuilder("");
        int[] iArr = this.keys;
        float[] fArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sb.append((CharSequence) "");
            break;
        }
        int i = 0;
        int i2 = 0;
        loop0: while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j) < 128) {
                        int i5 = (i << 3) + i4;
                        int i6 = iArr[i5];
                        float f = fArr[i5];
                        if (i2 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i2 != 0) {
                            sb.append((CharSequence) ", ");
                        }
                        sb.append(bm3Var.invoke(Integer.valueOf(i6), Float.valueOf(f)));
                        i2++;
                    }
                    j >>= 8;
                }
                if (i3 == 8) {
                }
                sb.append((CharSequence) "");
                break;
            }
            if (i == length) {
                sb.append((CharSequence) "");
                break;
            }
            i++;
        }
        return sb.toString();
    }
}
