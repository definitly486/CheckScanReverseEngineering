package defpackage;

import java.util.concurrent.locks.LockSupport;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c13 extends d13 implements wk2 {
    public static final /* synthetic */ long g;
    public static final /* synthetic */ long h;
    public static final /* synthetic */ long i;
    public static final /* synthetic */ int j = 0;
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile;
    private volatile /* synthetic */ Object _queue$volatile;

    public final class a extends c {
        public final c31 d;

        public a(long j, c31 c31Var) {
            super(j);
            this.d = c31Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.d.D(c13.this, j59.a);
        }

        @Override // c13.c
        public final String toString() {
            return super.toString() + this.d;
        }
    }

    public static final class b extends c {
        public final Runnable d;

        public b(long j, Runnable runnable) {
            super(j);
            this.d = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.d.run();
        }

        @Override // c13.c
        public final String toString() {
            return super.toString() + this.d;
        }
    }

    public static abstract class c implements Runnable, Comparable<c>, hp2, st8 {
        private volatile Object _heap;
        public long b;
        public int c = -1;

        public c(long j) {
            this.b = j;
        }

        @Override // defpackage.st8
        public final void c(d dVar) {
            if (this._heap != e13.a) {
                this._heap = dVar;
            } else {
                fg.c("Failed requirement.");
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(c cVar) {
            long j = this.b - cVar.b;
            if (j > 0) {
                return 1;
            }
            return j < 0 ? -1 : 0;
        }

        public final int d(long j, d dVar, c13 c13Var) {
            synchronized (this) {
                if (this._heap == e13.a) {
                    return 2;
                }
                synchronized (dVar) {
                    try {
                        Object[] objArr = dVar.a;
                        c cVar = (c) (objArr != null ? objArr[0] : null);
                        int i = c13.j;
                        if (pz0.a.getIntVolatile(c13Var, c13.h) == 1) {
                            return 1;
                        }
                        if (cVar == null) {
                            dVar.c = j;
                        } else {
                            long j2 = cVar.b;
                            if (j2 - j < 0) {
                                j = j2;
                            }
                            long j3 = dVar.c;
                            if (j - j3 > 0) {
                                dVar.c = j;
                            } else {
                                j = j3;
                            }
                        }
                        if (this.b - j < 0) {
                            this.b = j;
                        }
                        dVar.a(this);
                        return 0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // defpackage.hp2
        public final void dispose() {
            synchronized (this) {
                try {
                    Object obj = this._heap;
                    bh8 bh8Var = e13.a;
                    if (obj == bh8Var) {
                        return;
                    }
                    d dVar = obj instanceof d ? (d) obj : null;
                    if (dVar != null) {
                        synchronized (dVar) {
                            Object obj2 = this._heap;
                            if ((obj2 instanceof rt8 ? (rt8) obj2 : null) != null) {
                                dVar.c(this.c);
                            }
                        }
                    }
                    this._heap = bh8Var;
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // defpackage.st8
        public final void setIndex(int i) {
            this.c = i;
        }

        public String toString() {
            return lg.f(new StringBuilder("Delayed[nanos="), this.b, ']');
        }
    }

    public static final class d extends rt8<c> {
        public long c;
    }

    static {
        Unsafe unsafe = pz0.a;
        i = unsafe.objectFieldOffset(c13.class.getDeclaredField("_queue$volatile"));
        g = unsafe.objectFieldOffset(c13.class.getDeclaredField("_delayed$volatile"));
        h = unsafe.objectFieldOffset(c13.class.getDeclaredField("_isCompleted$volatile"));
    }

    public final void A0() {
        c cVarC;
        d dVar = (d) pz0.a.getObjectVolatile(this, g);
        if (dVar == null || dVar.b() == 0) {
            return;
        }
        long jNanoTime = System.nanoTime();
        do {
            synchronized (dVar) {
                try {
                    Object[] objArr = dVar.a;
                    cVarC = null;
                    Object obj = objArr != null ? objArr[0] : null;
                    if (obj != null) {
                        c cVar = (c) obj;
                        if (jNanoTime - cVar.b >= 0 ? B0(cVar) : false) {
                            cVarC = dVar.c(0);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } while (cVarC != null);
    }

    public final boolean B0(Runnable runnable) {
        Unsafe unsafe;
        Unsafe unsafe2;
        Unsafe unsafe3;
        while (true) {
            Unsafe unsafe4 = pz0.a;
            long j2 = i;
            Object objectVolatile = unsafe4.getObjectVolatile(this, j2);
            if (unsafe4.getIntVolatile(this, h) == 1) {
                return false;
            }
            if (objectVolatile == null) {
                do {
                    unsafe = pz0.a;
                    if (unsafe.compareAndSwapObject(this, i, (Object) null, runnable)) {
                        return true;
                    }
                } while (unsafe.getObjectVolatile(this, j2) == null);
            } else if (objectVolatile instanceof ru4) {
                ru4 ru4Var = (ru4) objectVolatile;
                int iA = ru4Var.a(runnable);
                if (iA == 0) {
                    return true;
                }
                if (iA == 1) {
                    ru4 ru4VarC = ru4Var.c();
                    do {
                        unsafe2 = pz0.a;
                        if (unsafe2.compareAndSwapObject(this, i, objectVolatile, ru4VarC)) {
                            break;
                        }
                    } while (unsafe2.getObjectVolatile(this, j2) == objectVolatile);
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (objectVolatile == e13.b) {
                    return false;
                }
                ru4 ru4Var2 = new ru4(8, true);
                ru4Var2.a((Runnable) objectVolatile);
                ru4Var2.a(runnable);
                do {
                    unsafe3 = pz0.a;
                    if (unsafe3.compareAndSwapObject(this, i, objectVolatile, ru4Var2)) {
                        return true;
                    }
                } while (unsafe3.getObjectVolatile(this, j2) == objectVolatile);
            }
        }
    }

    public final boolean C0() {
        fr<io2<?>> frVar = this.e;
        if (frVar != null ? frVar.isEmpty() : true) {
            Unsafe unsafe = pz0.a;
            d dVar = (d) unsafe.getObjectVolatile(this, g);
            if (dVar != null && dVar.b() != 0) {
                return false;
            }
            Object objectVolatile = unsafe.getObjectVolatile(this, i);
            if (objectVolatile != null) {
                if (objectVolatile instanceof ru4) {
                    long longVolatile = unsafe.getLongVolatile((ru4) objectVolatile, ru4.g);
                    return ((int) (1073741823 & longVolatile)) == ((int) ((longVolatile & 1152921503533105152L) >> 30));
                }
                if (objectVolatile == e13.b) {
                }
            }
            return true;
        }
        return false;
    }

    public final void D0(long j2, c cVar) {
        c13 c13Var;
        int iD;
        Unsafe unsafe;
        Thread threadX0;
        long j3 = g;
        Unsafe unsafe2 = pz0.a;
        if (unsafe2.getIntVolatile(this, h) == 1) {
            c13Var = this;
            iD = 1;
        } else {
            d dVar = (d) unsafe2.getObjectVolatile(this, j3);
            if (dVar == null) {
                d dVar2 = new d();
                dVar2.c = j2;
                while (true) {
                    unsafe = pz0.a;
                    c13Var = this;
                    if (unsafe.compareAndSwapObject(c13Var, g, (Object) null, dVar2) || unsafe.getObjectVolatile(c13Var, j3) != null) {
                        break;
                    } else {
                        this = c13Var;
                    }
                }
                Object objectVolatile = unsafe.getObjectVolatile(c13Var, j3);
                objectVolatile.getClass();
                dVar = (d) objectVolatile;
                unsafe2 = unsafe;
            } else {
                c13Var = this;
            }
            iD = cVar.d(j2, dVar, c13Var);
        }
        if (iD != 0) {
            if (iD == 1) {
                c13Var.y0(j2, cVar);
                return;
            } else {
                if (iD == 2) {
                    return;
                }
                ah.f("unexpected result");
                return;
            }
        }
        d dVar3 = (d) unsafe2.getObjectVolatile(c13Var, j3);
        st8 st8Var = null;
        if (dVar3 != null) {
            synchronized (dVar3) {
                st8[] st8VarArr = dVar3.a;
                st8Var = st8VarArr != null ? st8VarArr[0] : null;
            }
            st8Var = (c) st8Var;
        }
        if (st8Var != cVar || Thread.currentThread() == (threadX0 = c13Var.x0())) {
            return;
        }
        LockSupport.unpark(threadX0);
    }

    @Override // defpackage.wk2
    public final void b(long j2, c31 c31Var) {
        long j3 = 0;
        if (j2 > 0) {
            j3 = j2 >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j2;
        }
        if (j3 < 4611686018427387903L) {
            long jNanoTime = System.nanoTime();
            a aVar = new a(j3 + jNanoTime, c31Var);
            D0(jNanoTime, aVar);
            c31Var.w(new kp2(aVar));
        }
    }

    @Override // defpackage.r22
    public final void dispatch(o22 o22Var, Runnable runnable) {
        z0(runnable);
    }

    @Override // defpackage.b13
    public final long r0() {
        Unsafe unsafe;
        c13 c13Var;
        Unsafe unsafe2;
        Runnable runnable;
        Object obj;
        bh8 bh8Var = e13.b;
        long j2 = i;
        if (!u0()) {
            A0();
            loop0: while (true) {
                unsafe = pz0.a;
                Object objectVolatile = unsafe.getObjectVolatile(this, j2);
                if (objectVolatile == null) {
                    c13Var = this;
                } else if (objectVolatile instanceof ru4) {
                    ru4 ru4Var = (ru4) objectVolatile;
                    Object objD = ru4Var.d();
                    if (objD != ru4.e) {
                        Runnable runnable2 = (Runnable) objD;
                        c13Var = this;
                        runnable = runnable2;
                        unsafe2 = unsafe;
                        break;
                    }
                    ru4 ru4VarC = ru4Var.c();
                    while (true) {
                        Unsafe unsafe3 = pz0.a;
                        c13Var = this;
                        if (unsafe3.compareAndSwapObject(c13Var, i, objectVolatile, ru4VarC) || unsafe3.getObjectVolatile(c13Var, j2) != objectVolatile) {
                            break;
                        }
                        this = c13Var;
                    }
                    this = c13Var;
                } else {
                    c13Var = this;
                    if (objectVolatile != bh8Var) {
                        do {
                            unsafe2 = pz0.a;
                            if (unsafe2.compareAndSwapObject(c13Var, i, objectVolatile, (Object) null)) {
                                runnable = (Runnable) objectVolatile;
                                unsafe = unsafe2;
                                break loop0;
                            }
                        } while (unsafe2.getObjectVolatile(c13Var, j2) == objectVolatile);
                        this = c13Var;
                    }
                }
                unsafe2 = unsafe;
                runnable = null;
                break;
            }
            if (runnable != null) {
                runnable.run();
                return 0L;
            }
            fr<io2<?>> frVar = c13Var.e;
            if (((frVar == null || frVar.isEmpty()) ? Long.MAX_VALUE : 0L) != 0) {
                Object objectVolatile2 = unsafe.getObjectVolatile(c13Var, j2);
                if (objectVolatile2 != null) {
                    if (objectVolatile2 instanceof ru4) {
                        long longVolatile = unsafe2.getLongVolatile((ru4) objectVolatile2, ru4.g);
                        if (((int) (1073741823 & longVolatile)) != ((int) ((longVolatile & 1152921503533105152L) >> 30))) {
                            return 0L;
                        }
                    } else if (objectVolatile2 == bh8Var) {
                        return Long.MAX_VALUE;
                    }
                }
                d dVar = (d) unsafe.getObjectVolatile(c13Var, g);
                if (dVar != null) {
                    synchronized (dVar) {
                        Object[] objArr = dVar.a;
                        obj = objArr != null ? objArr[0] : null;
                    }
                    c cVar = (c) obj;
                    if (cVar != null) {
                        long jNanoTime = cVar.b - System.nanoTime();
                        if (jNanoTime >= 0) {
                            return jNanoTime;
                        }
                    }
                }
                return Long.MAX_VALUE;
            }
        }
        return 0L;
    }

    @Override // defpackage.b13
    public void shutdown() {
        bh8 bh8Var;
        Unsafe unsafe;
        c cVarC;
        pt8.a.set(null);
        pz0.a.putIntVolatile(this, h, 1);
        bh8 bh8Var2 = e13.b;
        long j2 = i;
        loop0: while (true) {
            Object objectVolatile = pz0.a.getObjectVolatile(this, j2);
            if (objectVolatile == null) {
                while (true) {
                    Unsafe unsafe2 = pz0.a;
                    bh8Var = bh8Var2;
                    if (unsafe2.compareAndSwapObject(this, i, (Object) null, bh8Var2)) {
                        break loop0;
                    } else if (unsafe2.getObjectVolatile(this, j2) != null) {
                        break;
                    } else {
                        bh8Var2 = bh8Var;
                    }
                }
                bh8Var2 = bh8Var;
            } else {
                bh8Var = bh8Var2;
                if (objectVolatile instanceof ru4) {
                    ((ru4) objectVolatile).b();
                    break;
                }
                if (objectVolatile == bh8Var) {
                    break;
                }
                ru4 ru4Var = new ru4(8, true);
                ru4Var.a((Runnable) objectVolatile);
                do {
                    unsafe = pz0.a;
                    if (unsafe.compareAndSwapObject(this, i, objectVolatile, ru4Var)) {
                        break loop0;
                    }
                } while (unsafe.getObjectVolatile(this, j2) == objectVolatile);
                bh8Var2 = bh8Var;
            }
        }
        while (r0() <= 0) {
        }
        long jNanoTime = System.nanoTime();
        while (true) {
            d dVar = (d) pz0.a.getObjectVolatile(this, g);
            if (dVar == null) {
                return;
            }
            synchronized (dVar) {
                cVarC = dVar.b() > 0 ? dVar.c(0) : null;
            }
            c cVar = cVarC;
            if (cVar == null) {
                return;
            } else {
                y0(jNanoTime, cVar);
            }
        }
    }

    public void z0(Runnable runnable) {
        A0();
        if (!B0(runnable)) {
            kh2.k.z0(runnable);
            return;
        }
        Thread threadX0 = x0();
        if (Thread.currentThread() != threadX0) {
            LockSupport.unpark(threadX0);
        }
    }
}
