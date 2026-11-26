package defpackage;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes5.dex */
public final class m68<E> extends AtomicReferenceArray<E> implements hz7<E> {
    public static final Integer g = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
    public final int b;
    public final AtomicLong c;
    public long d;
    public final AtomicLong e;
    public final int f;

    public m68(int i) {
        super(1 << (32 - Integer.numberOfLeadingZeros(i - 1)));
        this.b = length() - 1;
        this.c = new AtomicLong();
        this.e = new AtomicLong();
        this.f = Math.min(i / 4, g.intValue());
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
        return this.c.get() == this.e.get();
    }

    @Override // defpackage.iz7
    public final boolean offer(E e) {
        if (e == null) {
            o2.d("Null is not a valid element");
            return false;
        }
        AtomicLong atomicLong = this.c;
        long j = atomicLong.get();
        int i = this.b;
        int i2 = ((int) j) & i;
        if (j >= this.d) {
            long j2 = ((long) this.f) + j;
            if (get(i & ((int) j2)) == null) {
                this.d = j2;
            } else if (get(i2) != null) {
                return false;
            }
        }
        lazySet(i2, e);
        atomicLong.lazySet(j + 1);
        return true;
    }

    @Override // defpackage.iz7
    public final E poll() {
        AtomicLong atomicLong = this.e;
        long j = atomicLong.get();
        int i = ((int) j) & this.b;
        E e = get(i);
        if (e == null) {
            return null;
        }
        atomicLong.lazySet(j + 1);
        lazySet(i, null);
        return e;
    }
}
