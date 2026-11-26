package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public class go7 {
    public static final /* synthetic */ AtomicLongFieldUpdater d;
    public static final /* synthetic */ AtomicLongFieldUpdater e;
    public static final /* synthetic */ AtomicIntegerFieldUpdater f;
    public static final /* synthetic */ long g;
    public static final /* synthetic */ long h;
    public static final /* synthetic */ long i;
    private volatile /* synthetic */ int _availablePermits$volatile;
    public final int b;
    public final fo7 c;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    public static final /* synthetic */ class a extends qm3 implements bm3<Long, ko7, ko7> {
        public static final a c = new a(2, jo7.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);

        @Override // defpackage.bm3
        public final ko7 invoke(Long l, ko7 ko7Var) {
            int i = jo7.a;
            return new ko7(l.longValue(), ko7Var, 0);
        }
    }

    static {
        Unsafe unsafe = pz0.a;
        h = unsafe.objectFieldOffset(go7.class.getDeclaredField("head$volatile"));
        d = AtomicLongFieldUpdater.newUpdater(go7.class, "deqIdx$volatile");
        i = unsafe.objectFieldOffset(go7.class.getDeclaredField("tail$volatile"));
        e = AtomicLongFieldUpdater.newUpdater(go7.class, "enqIdx$volatile");
        f = AtomicIntegerFieldUpdater.newUpdater(go7.class, "_availablePermits$volatile");
        g = unsafe.objectFieldOffset(go7.class.getDeclaredField("_availablePermits$volatile"));
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [fo7] */
    public go7(int i2) {
        this.b = i2;
        if (i2 <= 0) {
            c9.f(jh.b(i2, "Semaphore should have at least 1 permit, but had "));
            throw null;
        }
        if (i2 < 0) {
            c9.f(jh.b(i2, "The number of acquired permits should be in 0.."));
            throw null;
        }
        ko7 ko7Var = new ko7(0L, null, 2);
        this.head$volatile = ko7Var;
        this.tail$volatile = ko7Var;
        this._availablePermits$volatile = i2;
        this.c = new dm3() { // from class: fo7
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                this.b.release();
                return j59.a;
            }
        };
    }

    public final Object a(f02 f02Var) throws Throwable {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int andDecrement;
        int i2;
        do {
            atomicIntegerFieldUpdater = f;
            andDecrement = atomicIntegerFieldUpdater.getAndDecrement(this);
            i2 = this.b;
        } while (andDecrement > i2);
        if (andDecrement > 0) {
            return j59.a;
        }
        c31 c31VarC = e31.c(zya.b(f02Var));
        try {
            if (!c(c31VarC)) {
                while (true) {
                    int andDecrement2 = atomicIntegerFieldUpdater.getAndDecrement(this);
                    if (andDecrement2 <= i2) {
                        if (andDecrement2 > 0) {
                            c31VarC.q(j59.a, this.c);
                            break;
                        }
                        if (c(c31VarC)) {
                            break;
                        }
                    }
                }
            }
            Object objS = c31VarC.s();
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (objS != a32Var) {
                objS = j59.a;
            }
            return objS == a32Var ? objS : j59.a;
        } catch (Throwable th) {
            c31VarC.A();
            throw th;
        }
    }

    public final int b() {
        return Math.max(pz0.a.getIntVolatile(this, g), 0);
    }

    public final boolean c(lf9 lf9Var) {
        Object objA;
        Unsafe unsafe;
        go7 go7Var = this;
        Unsafe unsafe2 = pz0.a;
        long j = i;
        ko7 ko7Var = (ko7) unsafe2.getObjectVolatile(go7Var, j);
        long andIncrement = e.getAndIncrement(go7Var);
        a aVar = a.c;
        long j2 = andIncrement / ((long) jo7.f);
        loop0: while (true) {
            objA = oe0.a(ko7Var, j2, aVar);
            if (qc4.d(objA)) {
                break;
            }
            hl7 hl7VarC = qc4.c(objA);
            while (true) {
                hl7 hl7Var = (hl7) pz0.a.getObjectVolatile(go7Var, j);
                if (hl7Var.e >= hl7VarC.e) {
                    go7Var = this;
                    break loop0;
                }
                if (!hl7VarC.j()) {
                    break;
                }
                do {
                    unsafe = pz0.a;
                    go7Var = this;
                    if (unsafe.compareAndSwapObject(go7Var, i, hl7Var, hl7VarC)) {
                        if (!hl7Var.f()) {
                            break loop0;
                        }
                        hl7Var.e();
                        break loop0;
                    }
                } while (unsafe.getObjectVolatile(go7Var, j) == hl7Var);
                if (hl7VarC.f()) {
                    hl7VarC.e();
                }
            }
            go7Var = this;
        }
        ko7 ko7Var2 = (ko7) qc4.c(objA);
        AtomicReferenceArray atomicReferenceArray = ko7Var2.h;
        int i2 = (int) (andIncrement % ((long) jo7.f));
        while (!atomicReferenceArray.compareAndSet(i2, null, lf9Var)) {
            if (atomicReferenceArray.get(i2) != null) {
                bh8 bh8Var = jo7.b;
                bh8 bh8Var2 = jo7.c;
                while (!atomicReferenceArray.compareAndSet(i2, bh8Var, bh8Var2)) {
                    if (atomicReferenceArray.get(i2) != bh8Var) {
                        return false;
                    }
                }
                if (lf9Var instanceof a31) {
                    ((a31) lf9Var).q(j59.a, go7Var.c);
                    return true;
                }
                if (lf9Var instanceof bm7) {
                    ((bm7) lf9Var).d(j59.a);
                    return true;
                }
                vh.e(lf9Var, "unexpected: ");
                return false;
            }
        }
        lf9Var.a(ko7Var2, i2);
        return true;
    }

    public final void release() {
        Unsafe unsafe;
        long j;
        int intVolatile;
        int i2;
        Object objA;
        boolean zE;
        Unsafe unsafe2;
        do {
            int andIncrement = f.getAndIncrement(this);
            int i3 = this.b;
            if (andIncrement >= i3) {
                do {
                    unsafe = pz0.a;
                    j = g;
                    intVolatile = unsafe.getIntVolatile(this, j);
                    i2 = this.b;
                    if (intVolatile <= i2) {
                        break;
                    }
                } while (!unsafe.compareAndSwapInt(this, j, intVolatile, i2));
                ud.e(i3, "The number of released permits cannot be greater than ");
                return;
            }
            if (andIncrement >= 0) {
                return;
            }
            Unsafe unsafe3 = pz0.a;
            long j2 = h;
            ko7 ko7Var = (ko7) unsafe3.getObjectVolatile(this, j2);
            long andIncrement2 = d.getAndIncrement(this);
            long j3 = andIncrement2 / ((long) jo7.f);
            ho7 ho7Var = ho7.c;
            while (true) {
                objA = oe0.a(ko7Var, j3, ho7Var);
                if (!qc4.d(objA)) {
                    hl7 hl7VarC = qc4.c(objA);
                    while (true) {
                        hl7 hl7Var = (hl7) pz0.a.getObjectVolatile(this, j2);
                        if (hl7Var.e >= hl7VarC.e) {
                            break;
                        }
                        if (!hl7VarC.j()) {
                            break;
                        }
                        do {
                            unsafe2 = pz0.a;
                            if (unsafe2.compareAndSwapObject(this, h, hl7Var, hl7VarC)) {
                                if (!hl7Var.f()) {
                                    break;
                                }
                                hl7Var.e();
                                break;
                            }
                        } while (unsafe2.getObjectVolatile(this, j2) == hl7Var);
                        if (hl7VarC.f()) {
                            hl7VarC.e();
                        }
                    }
                } else {
                    break;
                }
            }
            ko7 ko7Var2 = (ko7) qc4.c(objA);
            AtomicReferenceArray atomicReferenceArray = ko7Var2.h;
            ko7Var2.a();
            zE = false;
            if (ko7Var2.e <= j3) {
                int i4 = (int) (andIncrement2 % ((long) jo7.f));
                Object andSet = atomicReferenceArray.getAndSet(i4, jo7.b);
                if (andSet == null) {
                    int i5 = jo7.a;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= i5) {
                            bh8 bh8Var = jo7.b;
                            bh8 bh8Var2 = jo7.d;
                            do {
                                if (atomicReferenceArray.compareAndSet(i4, bh8Var, bh8Var2)) {
                                    zE = true;
                                    break;
                                }
                            } while (atomicReferenceArray.get(i4) == bh8Var);
                            zE = !zE;
                            break;
                        }
                        if (atomicReferenceArray.get(i4) == jo7.c) {
                            zE = true;
                            break;
                        }
                        i6++;
                    }
                } else if (andSet != jo7.e) {
                    if (andSet instanceof a31) {
                        a31 a31Var = (a31) andSet;
                        bh8 bh8VarK = a31Var.k(j59.a, this.c);
                        if (bh8VarK != null) {
                            a31Var.j(bh8VarK);
                            zE = true;
                            break;
                            break;
                        }
                    } else {
                        if (!(andSet instanceof bm7)) {
                            ah.f(ad2.b(andSet, "unexpected: "));
                            return;
                        }
                        zE = ((bm7) andSet).e(this, j59.a);
                    }
                }
            }
        } while (!zE);
    }
}
