package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public final class ch5 extends go7 implements yg5 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(ch5.class, Object.class, "owner$volatile");
    public static final /* synthetic */ long l = pz0.a.objectFieldOffset(ch5.class.getDeclaredField("owner$volatile"));
    public final zg5 j;
    private volatile /* synthetic */ Object owner$volatile;

    public final class a implements a31<j59>, lf9 {
        public final c31<j59> b;
        public final Object c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(c31<? super j59> c31Var, Object obj) {
            this.b = c31Var;
            this.c = obj;
        }

        @Override // defpackage.lf9
        public final void a(hl7<?> hl7Var, int i) {
            this.b.a(hl7Var, i);
        }

        @Override // defpackage.a31
        public final boolean d(Throwable th) {
            return this.b.d(th);
        }

        @Override // defpackage.e02
        public final o22 getContext() {
            return this.b.f;
        }

        @Override // defpackage.a31
        public final boolean isActive() {
            return this.b.t() instanceof no5;
        }

        @Override // defpackage.a31
        public final void j(Object obj) {
            this.b.j(obj);
        }

        @Override // defpackage.a31
        public final bh8 k(Object obj, dm3 dm3Var) {
            ch5 ch5Var = ch5.this;
            bh5 bh5Var = new bh5(0, ch5Var, this);
            bh8 bh8VarF = this.b.F((j59) obj, bh5Var);
            if (bh8VarF != null) {
                ch5.k.set(ch5Var, this.c);
            }
            return bh8VarF;
        }

        @Override // defpackage.a31
        public final void n(nl3<? super Throwable, j59> nl3Var) {
            this.b.n(nl3Var);
        }

        @Override // defpackage.a31
        public final void q(Object obj, dm3 dm3Var) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = ch5.k;
            Object obj2 = this.c;
            ch5 ch5Var = ch5.this;
            atomicReferenceFieldUpdater.set(ch5Var, obj2);
            ps0 ps0Var = new ps0(1, ch5Var, this);
            this.b.B((j59) obj, ps0Var);
        }

        @Override // defpackage.e02
        public final void resumeWith(Object obj) {
            this.b.resumeWith(obj);
        }
    }

    public final class b<Q> implements cm7<Q> {
        public final cm7<Q> b;
        public final Object c;

        public b(cm7<Q> cm7Var, Object obj) {
            this.b = cm7Var;
            this.c = obj;
        }

        @Override // defpackage.lf9
        public final void a(hl7<?> hl7Var, int i) {
            this.b.a(hl7Var, i);
        }

        @Override // defpackage.bm7
        public final void c(hp2 hp2Var) {
            this.b.c(hp2Var);
        }

        @Override // defpackage.bm7
        public final void d(Object obj) {
            ch5.k.set(ch5.this, this.c);
            this.b.d(obj);
        }

        @Override // defpackage.bm7
        public final boolean e(Object obj, Object obj2) {
            boolean zE = this.b.e(obj, obj2);
            if (zE) {
                ch5.k.set(ch5.this, this.c);
            }
            return zE;
        }

        @Override // defpackage.bm7
        public final o22 getContext() {
            return this.b.getContext();
        }
    }

    public static final /* synthetic */ class c extends qm3 implements dm3<ch5, bm7<?>, Object, j59> {
        public static final c c = new c(3, ch5.class, "onLockRegFunction", "onLockRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

        @Override // defpackage.dm3
        public final j59 invoke(ch5 ch5Var, bm7<?> bm7Var, Object obj) {
            int andDecrement;
            ch5 ch5Var2 = ch5Var;
            bm7<?> bm7Var2 = bm7Var;
            if (obj != null) {
                if (ch5Var2.holdsLock(obj)) {
                    bm7Var2.d(dh5.c);
                }
                return j59.a;
            }
            ch5Var2.getClass();
            bm7Var2.getClass();
            b bVar = ch5Var2.new b((cm7) bm7Var2, obj);
            do {
                ch5Var2.getClass();
                do {
                    andDecrement = go7.f.getAndDecrement(ch5Var2);
                } while (andDecrement > ch5Var2.b);
                if (andDecrement > 0) {
                    bVar.d(j59.a);
                    break;
                }
            } while (!ch5Var2.c(bVar));
            return j59.a;
        }
    }

    public static final /* synthetic */ class d extends qm3 implements dm3<ch5, Object, Object, Object> {
        public static final d c = new d(3, ch5.class, "onLockProcessResult", "onLockProcessResult(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);

        @Override // defpackage.dm3
        public final Object invoke(ch5 ch5Var, Object obj, Object obj2) {
            ch5 ch5Var2 = ch5Var;
            ch5Var2.getClass();
            if (!aa4.e(obj2, dh5.c)) {
                return ch5Var2;
            }
            ah.f(ad2.b(obj, "This mutex is already locked by the specified owner: "));
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [zg5] */
    public ch5() {
        super(1);
        this.owner$volatile = dh5.b;
        this.j = new dm3() { // from class: zg5
            @Override // defpackage.dm3
            public final Object invoke(Object obj, final Object obj2, Object obj3) {
                final ch5 ch5Var = this.b;
                return new dm3() { // from class: ah5
                    @Override // defpackage.dm3
                    public final Object invoke(Object obj4, Object obj5, Object obj6) {
                        ch5Var.unlock(obj2);
                        return j59.a;
                    }
                };
            }
        };
    }

    @Override // defpackage.yg5
    public final xl7<Object, yg5> getOnLock() {
        c cVar = c.c;
        cVar.getClass();
        v39.c(3, cVar);
        d dVar = d.c;
        dVar.getClass();
        v39.c(3, dVar);
        return new q82(this, cVar, dVar, this.j);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x001e A[RETURN] */
    @Override // defpackage.yg5
    public final boolean holdsLock(Object obj) {
        char c2;
        while (isLocked()) {
            Object objectVolatile = pz0.a.getObjectVolatile(this, l);
            if (objectVolatile != dh5.b) {
                c2 = objectVolatile == obj ? (char) 1 : (char) 2;
                if (c2 == 1) {
                    return true;
                }
                return false;
            }
        }
        c2 = 0;
        if (c2 == 1) {
            return true;
        }
        return false;
    }

    @Override // defpackage.yg5
    public final boolean isLocked() {
        return b() == 0;
    }

    @Override // defpackage.yg5
    public final Object lock(Object obj, e02<? super j59> e02Var) throws Throwable {
        if (tryLock(obj)) {
            return j59.a;
        }
        c31 c31VarC = e31.c(zya.b(e02Var));
        try {
            a aVar = new a(c31VarC, obj);
            while (true) {
                int andDecrement = go7.f.getAndDecrement(this);
                if (andDecrement <= this.b) {
                    if (andDecrement > 0) {
                        aVar.q(j59.a, this.c);
                        break;
                    }
                    if (c(aVar)) {
                        break;
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

    public final String toString() {
        StringBuilder sb = new StringBuilder("Mutex@");
        sb.append(cd2.a(this));
        sb.append("[isLocked=");
        sb.append(isLocked());
        sb.append(",owner=");
        return vg.d(sb, pz0.a.getObjectVolatile(this, l), ']');
    }

    @Override // defpackage.yg5
    public final boolean tryLock(Object obj) {
        ch5 ch5Var;
        char c2;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = go7.g;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if (intVolatile > this.b) {
                while (true) {
                    Unsafe unsafe2 = pz0.a;
                    long j2 = go7.g;
                    int intVolatile2 = unsafe2.getIntVolatile(this, j2);
                    int i = this.b;
                    if (intVolatile2 <= i) {
                        ch5Var = this;
                        break;
                    }
                    ch5 ch5Var2 = this;
                    ch5Var = ch5Var2;
                    if (unsafe2.compareAndSwapInt(ch5Var2, j2, intVolatile2, i)) {
                        break;
                    }
                    this = ch5Var;
                }
            } else {
                ch5Var = this;
                long j3 = l;
                if (intVolatile <= 0) {
                    if (obj == null) {
                        break;
                    }
                    while (true) {
                        if (!ch5Var.isLocked()) {
                            c2 = 0;
                            break;
                        }
                        Object objectVolatile = pz0.a.getObjectVolatile(ch5Var, j3);
                        if (objectVolatile != dh5.b) {
                            if (objectVolatile != obj) {
                                c2 = 2;
                                break;
                            }
                            c2 = 1;
                            break;
                        }
                    }
                    if (c2 == 1) {
                        ah.f(ad2.b(obj, "This mutex is already locked by the specified owner: "));
                        return false;
                    }
                    if (c2 == 2) {
                        break;
                    }
                } else if (unsafe.compareAndSwapInt(ch5Var, j, intVolatile, intVolatile - 1)) {
                    unsafe.putObjectVolatile(ch5Var, j3, obj);
                    return true;
                }
            }
            this = ch5Var;
        }
        return false;
    }

    @Override // defpackage.yg5
    public final void unlock(Object obj) {
        while (this.isLocked()) {
            Unsafe unsafe = pz0.a;
            long j = l;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            bh8 bh8Var = dh5.b;
            if (objectVolatile != bh8Var) {
                if (objectVolatile != obj && obj != null) {
                    ug.h("This mutex is locked by ", objectVolatile, ", but ", obj, " is expected");
                    return;
                }
                while (true) {
                    ch5 ch5Var = this;
                    if (pz0.a.compareAndSwapObject(ch5Var, l, objectVolatile, bh8Var)) {
                        ch5Var.release();
                        return;
                    } else {
                        if (pz0.a.getObjectVolatile(ch5Var, j) != objectVolatile) {
                            this = ch5Var;
                            break;
                        }
                        this = ch5Var;
                    }
                }
            }
        }
        ah.f("This mutex is not locked");
    }
}
