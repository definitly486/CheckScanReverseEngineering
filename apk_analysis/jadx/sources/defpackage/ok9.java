package defpackage;

import androidx.tracing.Trace;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public final class ok9 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater b;
    public static final /* synthetic */ AtomicIntegerFieldUpdater c;
    public static final /* synthetic */ long d;
    public static final /* synthetic */ long e;
    public static final /* synthetic */ long f;
    public static final /* synthetic */ long g;
    public final AtomicReferenceArray<ll8> a = new AtomicReferenceArray<>(128);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    static {
        Unsafe unsafe = pz0.a;
        f = unsafe.objectFieldOffset(ok9.class.getDeclaredField("lastScheduledTask$volatile"));
        b = AtomicIntegerFieldUpdater.newUpdater(ok9.class, "producerIndex$volatile");
        g = unsafe.objectFieldOffset(ok9.class.getDeclaredField("producerIndex$volatile"));
        e = unsafe.objectFieldOffset(ok9.class.getDeclaredField("consumerIndex$volatile"));
        c = AtomicIntegerFieldUpdater.newUpdater(ok9.class, "blockingTasksInBuffer$volatile");
        d = unsafe.objectFieldOffset(ok9.class.getDeclaredField("blockingTasksInBuffer$volatile"));
    }

    public final ll8 a(ll8 ll8Var) {
        if (b() == 127) {
            return ll8Var;
        }
        if (ll8Var.c) {
            c.incrementAndGet(this);
        }
        int intVolatile = pz0.a.getIntVolatile(this, g) & Trace.MAX_TRACE_LABEL_LENGTH;
        while (true) {
            AtomicReferenceArray<ll8> atomicReferenceArray = this.a;
            if (atomicReferenceArray.get(intVolatile) == null) {
                atomicReferenceArray.lazySet(intVolatile, ll8Var);
                b.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }

    public final int b() {
        return pz0.a.getIntVolatile(this, g) - pz0.a.getIntVolatile(this, e);
    }

    public final ll8 c() {
        ll8 andSet;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = e;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if (intVolatile - unsafe.getIntVolatile(this, g) == 0) {
                return null;
            }
            int i = intVolatile & Trace.MAX_TRACE_LABEL_LENGTH;
            ok9 ok9Var = this;
            if (unsafe.compareAndSwapInt(ok9Var, j, intVolatile, intVolatile + 1) && (andSet = ok9Var.a.getAndSet(i, null)) != null) {
                if (andSet.c) {
                    c.decrementAndGet(ok9Var);
                }
                return andSet;
            }
            this = ok9Var;
        }
    }

    public final ll8 d(int i, boolean z) {
        int i2 = i & Trace.MAX_TRACE_LABEL_LENGTH;
        AtomicReferenceArray<ll8> atomicReferenceArray = this.a;
        ll8 ll8Var = atomicReferenceArray.get(i2);
        if (ll8Var != null && ll8Var.c == z) {
            while (!atomicReferenceArray.compareAndSet(i2, ll8Var, null)) {
                if (atomicReferenceArray.get(i2) != ll8Var) {
                }
            }
            if (z) {
                c.decrementAndGet(this);
            }
            return ll8Var;
        }
        return null;
    }
}
