package defpackage;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes5.dex */
public final class n68<T> implements hz7<T> {
    public static final int j = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();
    public static final Object k = new Object();
    public final AtomicLong b;
    public final int c;
    public long d;
    public final int e;
    public AtomicReferenceArray<Object> f;
    public final int g;
    public AtomicReferenceArray<Object> h;
    public final AtomicLong i;

    public n68(int i) {
        AtomicLong atomicLong = new AtomicLong();
        this.b = atomicLong;
        this.i = new AtomicLong();
        int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(Math.max(8, i) - 1));
        int i2 = iNumberOfLeadingZeros - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(iNumberOfLeadingZeros + 1);
        this.f = atomicReferenceArray;
        this.e = i2;
        this.c = Math.min(iNumberOfLeadingZeros / 4, j);
        this.h = atomicReferenceArray;
        this.g = i2;
        this.d = iNumberOfLeadingZeros - 2;
        atomicLong.lazySet(0L);
    }

    @Override // defpackage.iz7
    public final void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // defpackage.iz7
    public final boolean isEmpty() {
        return this.b.get() == this.i.get();
    }

    @Override // defpackage.iz7
    public final boolean offer(T t) {
        if (t == null) {
            o2.d("Null is not a valid element");
            return false;
        }
        AtomicReferenceArray<Object> atomicReferenceArray = this.f;
        AtomicLong atomicLong = this.b;
        long j2 = atomicLong.get();
        int i = this.e;
        int i2 = ((int) j2) & i;
        if (j2 < this.d) {
            atomicReferenceArray.lazySet(i2, t);
            atomicLong.lazySet(j2 + 1);
            return true;
        }
        long j3 = ((long) this.c) + j2;
        if (atomicReferenceArray.get(((int) j3) & i) == null) {
            this.d = j3 - 1;
            atomicReferenceArray.lazySet(i2, t);
            atomicLong.lazySet(j2 + 1);
            return true;
        }
        long j4 = j2 + 1;
        if (atomicReferenceArray.get(((int) j4) & i) == null) {
            atomicReferenceArray.lazySet(i2, t);
            atomicLong.lazySet(j4);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f = atomicReferenceArray2;
        this.d = (j2 + ((long) i)) - 1;
        atomicReferenceArray2.lazySet(i2, t);
        atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
        atomicReferenceArray.lazySet(i2, k);
        atomicLong.lazySet(j4);
        return true;
    }

    @Override // defpackage.iz7
    public final T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.h;
        AtomicLong atomicLong = this.i;
        long j2 = atomicLong.get();
        int i = this.g;
        int i2 = ((int) j2) & i;
        T t = (T) atomicReferenceArray.get(i2);
        boolean z = t == k;
        if (t != null && !z) {
            atomicReferenceArray.lazySet(i2, null);
            atomicLong.lazySet(j2 + 1);
            return t;
        }
        if (!z) {
            return null;
        }
        int i3 = i + 1;
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(i3);
        atomicReferenceArray.lazySet(i3, null);
        this.h = atomicReferenceArray2;
        T t2 = (T) atomicReferenceArray2.get(i2);
        if (t2 != null) {
            atomicReferenceArray2.lazySet(i2, null);
            atomicLong.lazySet(j2 + 1);
        }
        return t2;
    }
}
