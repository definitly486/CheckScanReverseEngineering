package defpackage;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public final class x22 implements Executor, Closeable {
    public static final /* synthetic */ AtomicLongFieldUpdater i = AtomicLongFieldUpdater.newUpdater(x22.class, "parkedWorkersStack$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater j = AtomicLongFieldUpdater.newUpdater(x22.class, "controlState$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater k = AtomicIntegerFieldUpdater.newUpdater(x22.class, "_isTerminated$volatile");
    public static final bh8 l = new bh8("NOT_IN_STACK");
    private volatile /* synthetic */ int _isTerminated$volatile;
    public final int b;
    public final int c;
    private volatile /* synthetic */ long controlState$volatile;
    public final long d;
    public final String e;
    public final er3 f;
    public final er3 g;
    public final y37<b> h;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[c.values().length];
            try {
                iArr[c.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[c.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[c.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[c.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[c.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
        }
    }

    public final class b extends Thread {
        public static final /* synthetic */ AtomicIntegerFieldUpdater j = AtomicIntegerFieldUpdater.newUpdater(b.class, "workerCtl$volatile");
        public static final /* synthetic */ long k = pz0.a.objectFieldOffset(b.class.getDeclaredField("workerCtl$volatile"));
        public final ok9 b;
        public final r07<ll8> c;
        public c d;
        public long e;
        public long f;
        public int g;
        public boolean h;
        private volatile int indexInArray;
        private volatile Object nextParkedWorker;
        private volatile /* synthetic */ int workerCtl$volatile;

        public b() {
            throw null;
        }

        public b(int i) {
            setDaemon(true);
            setContextClassLoader(x22.class.getClassLoader());
            this.b = new ok9();
            this.c = new r07<>();
            this.d = c.DORMANT;
            this.nextParkedWorker = x22.l;
            int iNanoTime = (int) System.nanoTime();
            this.g = iNanoTime == 0 ? 42 : iNanoTime;
            f(i);
        }

        public final ll8 a(boolean z) {
            ll8 ll8VarE;
            ll8 ll8VarE2;
            long j2;
            Unsafe unsafe;
            c cVar = this.d;
            c cVar2 = c.CPU_ACQUIRED;
            x22 x22Var = x22.this;
            ll8 ll8Var = null;
            ok9 ok9Var = this.b;
            if (cVar != cVar2) {
                AtomicLongFieldUpdater atomicLongFieldUpdater = x22.j;
                do {
                    j2 = atomicLongFieldUpdater.get(x22Var);
                    if (((int) ((9223367638808264704L & j2) >> 42)) == 0) {
                        ok9Var.getClass();
                        long j3 = ok9.f;
                        loop1: while (true) {
                            Unsafe unsafe2 = pz0.a;
                            ll8 ll8Var2 = (ll8) unsafe2.getObjectVolatile(ok9Var, j3);
                            if (ll8Var2 == null || !ll8Var2.c) {
                                int intVolatile = unsafe2.getIntVolatile(ok9Var, ok9.e);
                                int intVolatile2 = unsafe2.getIntVolatile(ok9Var, ok9.g);
                                while (intVolatile != intVolatile2 && pz0.a.getIntVolatile(ok9Var, ok9.d) != 0) {
                                    intVolatile2--;
                                    ll8 ll8VarD = ok9Var.d(intVolatile2, true);
                                    if (ll8VarD != null) {
                                        ll8Var = ll8VarD;
                                        break;
                                    }
                                }
                                break;
                            }
                            do {
                                unsafe = pz0.a;
                                if (unsafe.compareAndSwapObject(ok9Var, ok9.f, ll8Var2, (Object) null)) {
                                    ll8Var = ll8Var2;
                                    break loop1;
                                }
                            } while (unsafe.getObjectVolatile(ok9Var, j3) == ll8Var2);
                        }
                        if (ll8Var != null) {
                            return ll8Var;
                        }
                        ll8 ll8VarD2 = x22Var.g.d();
                        return ll8VarD2 == null ? i(1) : ll8VarD2;
                    }
                } while (!x22.j.compareAndSet(x22Var, j2, j2 - 4398046511104L));
                this.d = c.CPU_ACQUIRED;
            }
            if (z) {
                boolean z2 = d(x22Var.b * 2) == 0;
                if (z2 && (ll8VarE2 = e()) != null) {
                    return ll8VarE2;
                }
                ok9Var.getClass();
                ll8 ll8VarC = (ll8) pz0.a.getAndSetObject(ok9Var, ok9.f, (Object) null);
                if (ll8VarC == null) {
                    ll8VarC = ok9Var.c();
                }
                if (ll8VarC != null) {
                    return ll8VarC;
                }
                if (!z2 && (ll8VarE = e()) != null) {
                    return ll8VarE;
                }
            } else {
                ll8 ll8VarE3 = e();
                if (ll8VarE3 != null) {
                    return ll8VarE3;
                }
            }
            return i(3);
        }

        public final int b() {
            return this.indexInArray;
        }

        public final Object c() {
            return this.nextParkedWorker;
        }

        public final int d(int i) {
            int i2 = this.g;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.g = i5;
            int i6 = i - 1;
            return (i6 & i) == 0 ? i6 & i5 : (Integer.MAX_VALUE & i5) % i;
        }

        public final ll8 e() {
            int iD = d(2);
            x22 x22Var = x22.this;
            if (iD == 0) {
                ll8 ll8VarD = x22Var.f.d();
                return ll8VarD != null ? ll8VarD : x22Var.g.d();
            }
            ll8 ll8VarD2 = x22Var.g.d();
            return ll8VarD2 != null ? ll8VarD2 : x22Var.f.d();
        }

        public final void f(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(x22.this.e);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        public final void g(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean h(c cVar) {
            c cVar2 = this.d;
            boolean z = cVar2 == c.CPU_ACQUIRED;
            if (z) {
                x22.j.addAndGet(x22.this, 4398046511104L);
            }
            if (cVar2 != cVar) {
                this.d = cVar;
            }
            return z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v9, types: [T, java.lang.Object, ll8] */
        public final ll8 i(int i) {
            int i2;
            long j2;
            T tC;
            long j3;
            long j4;
            Unsafe unsafe;
            AtomicLongFieldUpdater atomicLongFieldUpdater = x22.j;
            x22 x22Var = x22.this;
            int i3 = (int) (atomicLongFieldUpdater.get(x22Var) & 2097151);
            Object obj = null;
            if (i3 < 2) {
                return null;
            }
            int iD = d(i3);
            int i4 = 0;
            long jMin = Long.MAX_VALUE;
            while (i4 < i3) {
                iD++;
                if (iD > i3) {
                    iD = 1;
                }
                b bVarB = x22Var.h.b(iD);
                if (bVarB == null || bVarB == this) {
                    i2 = i3;
                } else {
                    ok9 ok9Var = bVarB.b;
                    ok9Var.getClass();
                    if (i != 3) {
                        boolean z = i == 1;
                        Unsafe unsafe2 = pz0.a;
                        j2 = 0;
                        int intVolatile = unsafe2.getIntVolatile(ok9Var, ok9.e);
                        int intVolatile2 = unsafe2.getIntVolatile(ok9Var, ok9.g);
                        while (true) {
                            if (intVolatile != intVolatile2) {
                                if (z) {
                                    i2 = i3;
                                    if (pz0.a.getIntVolatile(ok9Var, ok9.d) == 0) {
                                    }
                                } else {
                                    i2 = i3;
                                }
                                int i5 = intVolatile + 1;
                                ll8 ll8VarD = ok9Var.d(intVolatile, z);
                                if (ll8VarD != null) {
                                    tC = ll8VarD;
                                    break;
                                }
                                intVolatile = i5;
                                i3 = i2;
                            } else {
                                i2 = i3;
                            }
                            tC = obj;
                            break;
                        }
                    } else {
                        i2 = i3;
                        j2 = 0;
                        tC = ok9Var.c();
                    }
                    r07<ll8> r07Var = this.c;
                    if (tC == 0) {
                        j3 = -1;
                        long j5 = ok9.f;
                        while (true) {
                            ?? r7 = (ll8) pz0.a.getObjectVolatile(ok9Var, j5);
                            if (r7 != 0) {
                                if (((r7.c ? 1 : 2) & i) != 0) {
                                    xo8.f.getClass();
                                    ok9 ok9Var2 = ok9Var;
                                    long jNanoTime = System.nanoTime() - r7.b;
                                    long j6 = xo8.b;
                                    if (jNanoTime < j6) {
                                        j4 = j6 - jNanoTime;
                                        break;
                                    }
                                    do {
                                        unsafe = pz0.a;
                                        if (unsafe.compareAndSwapObject(ok9Var2, ok9.f, (Object) r7, (Object) null)) {
                                            r07Var.b = r7;
                                            j4 = -1;
                                            break;
                                        }
                                    } while (unsafe.getObjectVolatile(ok9Var2, j5) == r7);
                                    ok9Var = ok9Var2;
                                }
                            }
                            j4 = -2;
                            break;
                        }
                    } else {
                        r07Var.b = tC;
                        j4 = -1;
                        j3 = -1;
                    }
                    if (j4 == j3) {
                        ll8 ll8Var = r07Var.b;
                        r07Var.b = null;
                        return ll8Var;
                    }
                    if (j4 > j2) {
                        jMin = Math.min(jMin, j4);
                    }
                }
                i4++;
                i3 = i2;
                obj = null;
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.f = jMin;
            return null;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            loop0: while (true) {
                boolean z = false;
                while (true) {
                    x22 x22Var = x22.this;
                    x22Var.getClass();
                    if (x22.k.get(x22Var) != 1) {
                        c cVar = this.d;
                        c cVar2 = c.TERMINATED;
                        if (cVar == cVar2) {
                            break loop0;
                        }
                        ll8 ll8VarA = a(this.h);
                        if (ll8VarA != null) {
                            this.f = 0L;
                            x22 x22Var2 = x22.this;
                            this.e = 0L;
                            if (this.d == c.PARKING) {
                                this.d = c.BLOCKING;
                            }
                            if (!ll8VarA.c) {
                                x22Var2.getClass();
                                try {
                                    ll8VarA.run();
                                    break;
                                } catch (Throwable th) {
                                    Thread threadCurrentThread = Thread.currentThread();
                                    threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                                    break;
                                }
                            }
                            if (h(c.BLOCKING) && !x22Var2.y() && !x22Var2.v(x22.j.get(x22Var2))) {
                                x22Var2.y();
                            }
                            x22Var2.getClass();
                            try {
                                ll8VarA.run();
                            } catch (Throwable th2) {
                                Thread threadCurrentThread2 = Thread.currentThread();
                                threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th2);
                            }
                            x22.j.addAndGet(x22Var2, -2097152L);
                            if (this.d == cVar2) {
                                break;
                            }
                            this.d = c.DORMANT;
                            break;
                        }
                        this.h = false;
                        if (this.f == 0) {
                            Object obj = this.nextParkedWorker;
                            bh8 bh8Var = x22.l;
                            if (obj != bh8Var) {
                                int i = -1;
                                pz0.a.putIntVolatile(this, k, -1);
                                while (this.nextParkedWorker != x22.l) {
                                    Unsafe unsafe = pz0.a;
                                    long j2 = k;
                                    if (unsafe.getIntVolatile(this, j2) != i) {
                                        break;
                                    }
                                    x22 x22Var3 = x22.this;
                                    x22Var3.getClass();
                                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = x22.k;
                                    if (atomicIntegerFieldUpdater.get(x22Var3) == 1) {
                                        break;
                                    }
                                    c cVar3 = this.d;
                                    c cVar4 = c.TERMINATED;
                                    if (cVar3 == cVar4) {
                                        break;
                                    }
                                    h(c.PARKING);
                                    Thread.interrupted();
                                    if (this.e == 0) {
                                        this.e = System.nanoTime() + x22.this.d;
                                    }
                                    LockSupport.parkNanos(x22.this.d);
                                    if (System.nanoTime() - this.e >= 0) {
                                        this.e = 0L;
                                        x22 x22Var4 = x22.this;
                                        synchronized (x22Var4.h) {
                                            try {
                                                if (!(atomicIntegerFieldUpdater.get(x22Var4) == 1)) {
                                                    AtomicLongFieldUpdater atomicLongFieldUpdater = x22.j;
                                                    if (((int) (atomicLongFieldUpdater.get(x22Var4) & 2097151)) > x22Var4.b && unsafe.compareAndSwapInt(this, j2, -1, 1)) {
                                                        int i2 = this.indexInArray;
                                                        f(0);
                                                        x22Var4.p(this, i2, 0);
                                                        int andDecrement = (int) (atomicLongFieldUpdater.getAndDecrement(x22Var4) & 2097151);
                                                        if (andDecrement != i2) {
                                                            b bVarB = x22Var4.h.b(andDecrement);
                                                            bVarB.getClass();
                                                            b bVar = bVarB;
                                                            x22Var4.h.c(i2, bVar);
                                                            bVar.f(i2);
                                                            x22Var4.p(bVar, andDecrement, i2);
                                                        }
                                                        x22Var4.h.c(andDecrement, null);
                                                        j59 j59Var = j59.a;
                                                        this.d = cVar4;
                                                    }
                                                }
                                            } catch (Throwable th3) {
                                                throw th3;
                                            }
                                        }
                                    }
                                    i = -1;
                                }
                            } else {
                                x22 x22Var5 = x22.this;
                                x22Var5.getClass();
                                AtomicLongFieldUpdater atomicLongFieldUpdater2 = x22.i;
                                if (this.nextParkedWorker == bh8Var) {
                                    while (true) {
                                        long j3 = atomicLongFieldUpdater2.get(x22Var5);
                                        int i3 = this.indexInArray;
                                        this.nextParkedWorker = x22Var5.h.b((int) (j3 & 2097151));
                                        x22 x22Var6 = x22Var5;
                                        AtomicLongFieldUpdater atomicLongFieldUpdater3 = atomicLongFieldUpdater2;
                                        if (atomicLongFieldUpdater3.compareAndSet(x22Var6, j3, ((j3 + 2097152) & (-2097152)) | ((long) i3))) {
                                            break;
                                        }
                                        atomicLongFieldUpdater2 = atomicLongFieldUpdater3;
                                        x22Var5 = x22Var6;
                                    }
                                }
                            }
                        } else {
                            if (z) {
                                h(c.PARKING);
                                Thread.interrupted();
                                LockSupport.parkNanos(this.f);
                                this.f = 0L;
                                break;
                            }
                            z = true;
                        }
                    } else {
                        break loop0;
                    }
                }
            }
            h(c.TERMINATED);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class c {
        private static final /* synthetic */ g03 $ENTRIES;
        private static final /* synthetic */ c[] $VALUES;
        public static final c BLOCKING;
        public static final c CPU_ACQUIRED;
        public static final c DORMANT;
        public static final c PARKING;
        public static final c TERMINATED;

        static {
            c cVar = new c("CPU_ACQUIRED", 0);
            CPU_ACQUIRED = cVar;
            c cVar2 = new c("BLOCKING", 1);
            BLOCKING = cVar2;
            c cVar3 = new c("PARKING", 2);
            PARKING = cVar3;
            c cVar4 = new c("DORMANT", 3);
            DORMANT = cVar4;
            c cVar5 = new c("TERMINATED", 4);
            TERMINATED = cVar5;
            c[] cVarArr = {cVar, cVar2, cVar3, cVar4, cVar5};
            $VALUES = cVarArr;
            $ENTRIES = new i03(cVarArr);
        }

        public c() {
            throw null;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) $VALUES.clone();
        }
    }

    public x22(int i2, int i3, long j2, String str) {
        this.b = i2;
        this.c = i3;
        this.d = j2;
        this.e = str;
        if (i2 < 1) {
            c9.f(kv2.b(i2, "Core pool size ", " should be at least 1"));
            throw null;
        }
        if (i3 < i2) {
            c9.f(rz0.c(i3, i2, "Max pool size ", " should be greater than or equals to core pool size "));
            throw null;
        }
        if (i3 > 2097150) {
            c9.f(kv2.b(i3, "Max pool size ", " should not exceed maximal supported number of threads 2097150"));
            throw null;
        }
        if (j2 <= 0) {
            c9.f(bg.d(j2, "Idle worker keep alive time ", " must be positive"));
            throw null;
        }
        this.f = new er3();
        this.g = new er3();
        this.h = new y37<>((i2 + 1) * 2);
        this.controlState$volatile = ((long) i2) << 42;
    }

    public static /* synthetic */ void o(x22 x22Var, Runnable runnable, int i2) {
        x22Var.n(runnable, false, (i2 & 4) == 0);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x008c  */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws InterruptedException {
        int i2;
        ll8 ll8VarD;
        if (k.compareAndSet(this, 0, 1)) {
            Thread threadCurrentThread = Thread.currentThread();
            b bVar = threadCurrentThread instanceof b ? (b) threadCurrentThread : null;
            if (bVar == null || !aa4.e(x22.this, this)) {
                bVar = null;
            }
            synchronized (this.h) {
                i2 = (int) (j.get(this) & 2097151);
            }
            if (1 <= i2) {
                int i3 = 1;
                while (true) {
                    b bVarB = this.h.b(i3);
                    bVarB.getClass();
                    b bVar2 = bVarB;
                    if (bVar2 != bVar) {
                        while (bVar2.getState() != Thread.State.TERMINATED) {
                            LockSupport.unpark(bVar2);
                            bVar2.join(10000L);
                        }
                        ok9 ok9Var = bVar2.b;
                        er3 er3Var = this.g;
                        ok9Var.getClass();
                        ll8 ll8Var = (ll8) pz0.a.getAndSetObject(ok9Var, ok9.f, (Object) null);
                        if (ll8Var != null) {
                            er3Var.a(ll8Var);
                        }
                        while (true) {
                            ll8 ll8VarC = ok9Var.c();
                            if (ll8VarC == null) {
                                break;
                            } else {
                                er3Var.a(ll8VarC);
                            }
                        }
                    }
                    if (i3 == i2) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            this.g.b();
            this.f.b();
            while (true) {
                if (bVar != null) {
                    ll8VarD = bVar.a(true);
                    if (ll8VarD == null) {
                        ll8VarD = this.f.d();
                        if (ll8VarD == null) {
                            break;
                            break;
                        }
                    }
                } else {
                    ll8VarD = this.f.d();
                    if (ll8VarD == null && (ll8VarD = this.g.d()) == null) {
                        break;
                    }
                }
                try {
                    ll8VarD.run();
                } catch (Throwable th) {
                    Thread threadCurrentThread2 = Thread.currentThread();
                    threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
                }
            }
            if (bVar != null) {
                bVar.h(c.TERMINATED);
            }
            i.set(this, 0L);
            j.set(this, 0L);
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        o(this, runnable, 6);
    }

    public final int m() {
        synchronized (this.h) {
            try {
                if (k.get(this) == 1) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = j;
                long j2 = atomicLongFieldUpdater.get(this);
                int i2 = (int) (j2 & 2097151);
                int i3 = i2 - ((int) ((j2 & 4398044413952L) >> 21));
                if (i3 < 0) {
                    i3 = 0;
                }
                if (i3 >= this.b) {
                    return 0;
                }
                if (i2 >= this.c) {
                    return 0;
                }
                int i4 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i4 <= 0 || this.h.b(i4) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                b bVar = new b(i4);
                this.h.c(i4, bVar);
                if (i4 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i5 = i3 + 1;
                bVar.start();
                return i5;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n(Runnable runnable, boolean z, boolean z2) {
        ll8 ln8Var;
        c cVar;
        xo8.f.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof ll8) {
            ln8Var = (ll8) runnable;
            ln8Var.b = jNanoTime;
            ln8Var.c = z;
        } else {
            ln8Var = new ln8(runnable, jNanoTime, z);
        }
        boolean z3 = ln8Var.c;
        AtomicLongFieldUpdater atomicLongFieldUpdater = j;
        long jAddAndGet = z3 ? atomicLongFieldUpdater.addAndGet(this, 2097152L) : 0L;
        Thread threadCurrentThread = Thread.currentThread();
        b bVar = threadCurrentThread instanceof b ? (b) threadCurrentThread : null;
        if (bVar == null || !aa4.e(x22.this, this)) {
            bVar = null;
        }
        if (bVar != null && (cVar = bVar.d) != c.TERMINATED && (ln8Var.c || cVar != c.BLOCKING)) {
            bVar.h = true;
            ok9 ok9Var = bVar.b;
            if (z2) {
                ln8Var = ok9Var.a(ln8Var);
            } else {
                ok9Var.getClass();
                ll8 ll8Var = (ll8) pz0.a.getAndSetObject(ok9Var, ok9.f, ln8Var);
                ln8Var = ll8Var == null ? null : ok9Var.a(ll8Var);
            }
        }
        if (ln8Var != null) {
            if (!(ln8Var.c ? this.g.a(ln8Var) : this.f.a(ln8Var))) {
                throw new RejectedExecutionException(me0.d(new StringBuilder(), this.e, " was terminated"));
            }
        }
        if (z3) {
            if (y() || v(jAddAndGet)) {
                return;
            }
            y();
            return;
        }
        if (y() || v(atomicLongFieldUpdater.get(this))) {
            return;
        }
        y();
    }

    public final void p(b bVar, int i2, int i3) {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = i;
            long j2 = atomicLongFieldUpdater.get(this);
            int i4 = (int) (2097151 & j2);
            long j3 = (2097152 + j2) & (-2097152);
            if (i4 == i2) {
                if (i3 == 0) {
                    Object objC = bVar.c();
                    while (true) {
                        if (objC == l) {
                            i4 = -1;
                            break;
                        }
                        if (objC == null) {
                            i4 = 0;
                            break;
                        }
                        b bVar2 = (b) objC;
                        int iB = bVar2.b();
                        if (iB != 0) {
                            i4 = iB;
                            break;
                        }
                        objC = bVar2.c();
                    }
                } else {
                    i4 = i3;
                }
            }
            if (i4 >= 0) {
                long j4 = j3 | ((long) i4);
                x22 x22Var = this;
                if (atomicLongFieldUpdater.compareAndSet(x22Var, j2, j4)) {
                    return;
                } else {
                    this = x22Var;
                }
            }
        }
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        y37<b> y37Var = this.h;
        int iA = y37Var.a();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 1; i7 < iA; i7++) {
            b bVarB = y37Var.b(i7);
            if (bVarB != null) {
                ok9 ok9Var = bVarB.b;
                ok9Var.getClass();
                Object objectVolatile = pz0.a.getObjectVolatile(ok9Var, ok9.f);
                int iB = ok9Var.b();
                if (objectVolatile != null) {
                    iB++;
                }
                int i8 = a.a[bVarB.d.ordinal()];
                if (i8 == 1) {
                    i4++;
                } else if (i8 == 2) {
                    i3++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(iB);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i8 == 3) {
                    i2++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(iB);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i8 == 4) {
                    i5++;
                    if (iB > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(iB);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else {
                    if (i8 != 5) {
                        me0.e();
                        return null;
                    }
                    i6++;
                }
            }
        }
        long j2 = j.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.e);
        sb4.append('@');
        sb4.append(cd2.a(this));
        sb4.append("[Pool Size {core = ");
        int i9 = this.b;
        sb4.append(i9);
        sb4.append(", max = ");
        gg.e(sb4, this.c, "}, Worker States {CPU = ", i2, ", blocking = ");
        gg.e(sb4, i3, ", parked = ", i4, ", dormant = ");
        gg.e(sb4, i5, ", terminated = ", i6, "}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.f.c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.g.c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j2));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j2) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i9 - ((int) ((j2 & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }

    public final boolean v(long j2) {
        int i2 = ((int) (2097151 & j2)) - ((int) ((j2 & 4398044413952L) >> 21));
        if (i2 < 0) {
            i2 = 0;
        }
        int i3 = this.b;
        if (i2 < i3) {
            int iM = m();
            if (iM == 1 && i3 > 1) {
                m();
            }
            if (iM > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean y() {
        x22 x22Var;
        bh8 bh8Var;
        int iB;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = i;
            long j2 = atomicLongFieldUpdater.get(this);
            b bVarB = this.h.b((int) (2097151 & j2));
            if (bVarB == null) {
                bVarB = null;
                x22Var = this;
            } else {
                long j3 = (2097152 + j2) & (-2097152);
                Object objC = bVarB.c();
                while (true) {
                    bh8Var = l;
                    if (objC == bh8Var) {
                        iB = -1;
                        break;
                    }
                    if (objC == null) {
                        iB = 0;
                        break;
                    }
                    b bVar = (b) objC;
                    iB = bVar.b();
                    if (iB != 0) {
                        break;
                    }
                    objC = bVar.c();
                    atomicLongFieldUpdater = atomicLongFieldUpdater;
                    this = this;
                }
                if (iB >= 0) {
                    x22 x22Var2 = this;
                    boolean zCompareAndSet = atomicLongFieldUpdater.compareAndSet(x22Var2, j2, j3 | ((long) iB));
                    x22Var = x22Var2;
                    if (zCompareAndSet) {
                        bVarB.g(bh8Var);
                    }
                    this = x22Var;
                } else {
                    continue;
                }
            }
            if (bVarB == null) {
                return false;
            }
            if (b.j.compareAndSet(bVarB, -1, 0)) {
                LockSupport.unpark(bVarB);
                return true;
            }
            this = x22Var;
        }
    }
}
