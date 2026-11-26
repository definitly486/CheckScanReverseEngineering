package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.collection.internal.RuntimeHelpersKt;
import androidx.tracing.Trace;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bh;
import defpackage.gh4;
import defpackage.h8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.n1;
import defpackage.nl3;
import defpackage.qz0;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class OrderedScatterSet<E> {
    public int _capacity;
    public int _size;
    public Object[] elements;
    public int head;
    public long[] metadata;
    public long[] nodes;
    public int tail;

    /* JADX INFO: renamed from: androidx.collection.OrderedScatterSet$toString$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<E, CharSequence> {
        final /* synthetic */ OrderedScatterSet<E> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(OrderedScatterSet<E> orderedScatterSet) {
            super(1);
            this.this$0 = orderedScatterSet;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.nl3
        public final CharSequence invoke(E e) {
            return e == this.this$0 ? "(this)" : String.valueOf(e);
        }
    }

    private OrderedScatterSet() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.elements = ContainerHelpersKt.EMPTY_OBJECTS;
        this.nodes = SieveCacheKt.getEmptyNodes();
        this.head = Integer.MAX_VALUE;
        this.tail = Integer.MAX_VALUE;
    }

    public static /* synthetic */ void getElements$annotations() {
    }

    public static /* synthetic */ void getHead$annotations() {
    }

    public static /* synthetic */ void getMetadata$annotations() {
    }

    public static /* synthetic */ void getNodes$annotations() {
    }

    public static /* synthetic */ void getTail$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String joinToString$default(OrderedScatterSet orderedScatterSet, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3 nl3Var, int i2, Object obj) {
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
        if ((i2 & 32) != 0) {
            nl3Var = null;
        }
        CharSequence charSequence5 = charSequence4;
        nl3 nl3Var2 = nl3Var;
        return orderedScatterSet.joinToString(charSequence, charSequence2, charSequence3, i, charSequence5, nl3Var2);
    }

    public final boolean all(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.elements;
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
                    if ((255 & j) < 128 && !nl3Var.invoke(objArr[(i << 3) + i3]).booleanValue()) {
                        return false;
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

    /* JADX WARN: Code duplicated, block: B:17:0x004c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x004e A[LOOP:0: B:5:0x000e->B:18:0x004e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x0051 A[SYNTHETIC] */
    public final boolean any(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128 && nl3Var.invoke(objArr[(i << 3) + i3]).booleanValue()) {
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

    public final Set<E> asSet() {
        return new OrderedSetWrapper(this);
    }

    public final boolean contains(E e) {
        int iNumberOfTrailingZeros;
        int iHashCode = (e != null ? e.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
        int i = iHashCode ^ (iHashCode << 16);
        int i2 = i & Trace.MAX_TRACE_LABEL_LENGTH;
        int i3 = this._capacity;
        int i4 = (i >>> 7) & i3;
        int i5 = 0;
        loop0: while (true) {
            long[] jArr = this.metadata;
            int i6 = i4 >> 3;
            int i7 = (i4 & 7) << 3;
            long j = ((jArr[i6 + 1] << (64 - i7)) & ((-i7) >> 63)) | (jArr[i6] >>> i7);
            long j2 = (((long) i2) * ScatterMapKt.BitmaskLsb) ^ j;
            for (long j3 = (~j2) & (j2 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j3 != 0; j3 &= j3 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j3) >> 3) + i4) & i3;
                if (aa4.e(this.elements[iNumberOfTrailingZeros], e)) {
                    break loop0;
                }
            }
            if ((j & ((~j) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i5 += 8;
            i4 = (i4 + i5) & i3;
        }
        return iNumberOfTrailingZeros >= 0;
    }

    public final int count(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.elements;
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
                    if ((255 & j) < 128 && nl3Var.invoke(objArr[(i << 3) + i4]).booleanValue()) {
                        i2++;
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

    /* JADX WARN: Code duplicated, block: B:25:0x0058 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x005a A[LOOP:0: B:14:0x0021->B:26:0x005a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x005d A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OrderedScatterSet)) {
            return false;
        }
        OrderedScatterSet orderedScatterSet = (OrderedScatterSet) obj;
        if (orderedScatterSet.getSize() != getSize()) {
            return false;
        }
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128 && !orderedScatterSet.contains(objArr[(i << 3) + i3])) {
                            return false;
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

    public final int findElementIndex$collection(E e) {
        int i = 0;
        int iHashCode = (e != null ? e.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
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
                if (aa4.e(this.elements[iNumberOfTrailingZeros], e)) {
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

    /* JADX WARN: Type inference failed for: r6v5, types: [E, java.lang.Object] */
    public final E first(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i = this.tail;
        while (i != Integer.MAX_VALUE) {
            int i2 = (int) ((jArr[i] >> 31) & SieveCacheKt.NodeLinkMask);
            ?? r6 = (Object) objArr[i];
            if (nl3Var.invoke(r6).booleanValue()) {
                return r6;
            }
            i = i2;
        }
        RuntimeHelpersKt.throwNoSuchElementExceptionForInline("Could not find a match");
        h8.d();
        return null;
    }

    /* JADX WARN: Type inference failed for: r6v4, types: [E, java.lang.Object] */
    public final E firstOrNull(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i = this.tail;
        while (i != Integer.MAX_VALUE) {
            int i2 = (int) ((jArr[i] >> 31) & SieveCacheKt.NodeLinkMask);
            ?? r6 = (Object) objArr[i];
            if (nl3Var.invoke(r6).booleanValue()) {
                return r6;
            }
            i = i2;
        }
        return null;
    }

    public final void forEach(nl3<? super E, j59> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i = this.tail;
        while (i != Integer.MAX_VALUE) {
            int i2 = (int) ((jArr[i] >> 31) & SieveCacheKt.NodeLinkMask);
            nl3Var.invoke(objArr[i]);
            i = i2;
        }
    }

    public final void forEachIndex$collection(nl3<? super Integer, j59> nl3Var) {
        nl3Var.getClass();
        long[] jArr = this.nodes;
        int i = this.tail;
        while (i != Integer.MAX_VALUE) {
            int i2 = (int) ((jArr[i] >> 31) & SieveCacheKt.NodeLinkMask);
            nl3Var.invoke(Integer.valueOf(i));
            i = i2;
        }
    }

    public final void forEachReverse(nl3<? super E, j59> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i = this.head;
        while (i != Integer.MAX_VALUE) {
            int i2 = (int) (jArr[i] & SieveCacheKt.NodeLinkMask);
            nl3Var.invoke(objArr[i]);
            i = i2;
        }
    }

    public final int getCapacity() {
        return this._capacity;
    }

    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        int iHashCode = (this._capacity * 31) + this._size;
        Object[] objArr = this.elements;
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
                            if (!aa4.e(obj, this)) {
                                iHashCode += obj != null ? obj.hashCode() : 0;
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return iHashCode;
                    }
                }
                if (i != length) {
                    i++;
                }
            }
        }
        return iHashCode;
    }

    public final boolean isEmpty() {
        return this._size == 0;
    }

    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3<? super E, ? extends CharSequence> nl3Var) {
        StringBuilder sbE = ah.e(charSequence, charSequence2, charSequence3, charSequence4, charSequence2);
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i2 = this.tail;
        int i3 = 0;
        while (i2 != Integer.MAX_VALUE) {
            int i4 = (int) ((jArr[i2] >> 31) & SieveCacheKt.NodeLinkMask);
            Object obj = objArr[i2];
            if (i3 == i) {
                sbE.append(charSequence4);
                return sbE.toString();
            }
            if (i3 != 0) {
                sbE.append(charSequence);
            }
            if (nl3Var == null) {
                sbE.append(obj);
            } else {
                sbE.append(nl3Var.invoke(obj));
            }
            i3++;
            i2 = i4;
        }
        sbE.append(charSequence3);
        return sbE.toString();
    }

    /* JADX WARN: Type inference failed for: r6v5, types: [E, java.lang.Object] */
    public final E last(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i = this.head;
        while (i != Integer.MAX_VALUE) {
            int i2 = (int) (jArr[i] & SieveCacheKt.NodeLinkMask);
            ?? r6 = (Object) objArr[i];
            if (nl3Var.invoke(r6).booleanValue()) {
                return r6;
            }
            i = i2;
        }
        RuntimeHelpersKt.throwNoSuchElementExceptionForInline("Could not find a match");
        h8.d();
        return null;
    }

    /* JADX WARN: Type inference failed for: r6v4, types: [E, java.lang.Object] */
    public final E lastOrNull(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i = this.head;
        while (i != Integer.MAX_VALUE) {
            int i2 = (int) (jArr[i] & SieveCacheKt.NodeLinkMask);
            ?? r6 = (Object) objArr[i];
            if (nl3Var.invoke(r6).booleanValue()) {
                return r6;
            }
            i = i2;
        }
        return null;
    }

    public final boolean none() {
        return this._size == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final List<E> toList() {
        ArrayList arrayList = new ArrayList(getSize());
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i = this.tail;
        while (i != Integer.MAX_VALUE) {
            int i2 = (int) ((jArr[i] >> 31) & SieveCacheKt.NodeLinkMask);
            arrayList.add(objArr[i]);
            i = i2;
        }
        return arrayList;
    }

    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, new AnonymousClass1(this), 25, null);
    }

    public final void unorderedForEach(nl3<? super E, j59> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.elements;
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
                        nl3Var.invoke(objArr[(i << 3) + i3]);
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

    public final void unorderedForEachIndex(nl3<? super Integer, j59> nl3Var) {
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

    public /* synthetic */ OrderedScatterSet(jh2 jh2Var) {
        this();
    }

    public final E last() {
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i = this.head;
        if (i != Integer.MAX_VALUE) {
            long j = jArr[i];
            return (E) objArr[i];
        }
        RuntimeHelpersKt.throwNoSuchElementExceptionForInline("The OrderedScatterSet is empty");
        h8.d();
        return null;
    }

    public final E first() {
        Object[] objArr = this.elements;
        long[] jArr = this.nodes;
        int i = this.tail;
        if (i != Integer.MAX_VALUE) {
            long j = jArr[i];
            return (E) objArr[i];
        }
        RuntimeHelpersKt.throwNoSuchElementExceptionForInline("The OrderedScatterSet is empty");
        h8.d();
        return null;
    }

    public final String joinToString(CharSequence charSequence) {
        charSequence.getClass();
        return joinToString$default(this, charSequence, null, null, 0, null, null, 62, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2) {
        charSequence.getClass();
        charSequence2.getClass();
        return joinToString$default(this, charSequence, charSequence2, null, 0, null, null, 60, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        bh.c(charSequence, charSequence2, charSequence3);
        return joinToString$default(this, charSequence, charSequence2, charSequence3, 0, null, null, 56, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i) {
        bh.c(charSequence, charSequence2, charSequence3);
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i, null, null, 48, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        charSequence4.getClass();
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i, charSequence4, null, 32, null);
    }

    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, null, 63, null);
    }

    public final boolean any() {
        return this._size != 0;
    }

    public final int count() {
        return getSize();
    }
}
