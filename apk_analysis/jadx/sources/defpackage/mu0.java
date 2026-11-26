package defpackage;

import androidx.collection.SieveCacheKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.channels.ClosedReceiveChannelException;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import kotlinx.coroutines.internal.UndeliveredElementException;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public class mu0<E> implements x81<E> {
    public static final /* synthetic */ AtomicLongFieldUpdater e = AtomicLongFieldUpdater.newUpdater(mu0.class, "sendersAndCloseStatus$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater f;
    public static final /* synthetic */ AtomicLongFieldUpdater g;
    public static final /* synthetic */ AtomicLongFieldUpdater h;
    public static final /* synthetic */ AtomicReferenceFieldUpdater i;
    public static final /* synthetic */ AtomicReferenceFieldUpdater j;
    public static final /* synthetic */ long k;
    public static final /* synthetic */ long l;
    public static final /* synthetic */ long m;
    public static final /* synthetic */ long n;
    public static final /* synthetic */ long o;
    public static final /* synthetic */ long p;
    public static final /* synthetic */ long q;
    public static final /* synthetic */ long r;
    public static final /* synthetic */ long s;
    private volatile /* synthetic */ Object _closeCause$volatile;
    public final int b;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    public final nl3<E, j59> c;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    public final ju0 d;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    public final class a implements k91<E>, lf9 {
        public Object b = su0.p;
        public c31<? super Boolean> c;

        public a() {
        }

        @Override // defpackage.lf9
        public final void a(hl7<?> hl7Var, int i) {
            c31<? super Boolean> c31Var = this.c;
            if (c31Var != null) {
                c31Var.a(hl7Var, i);
            }
        }

        @Override // defpackage.k91
        public final Object b(f02 f02Var) throws Throwable {
            q91<E> q91Var;
            Boolean bool;
            q91<E> q91Var2;
            Object obj = this.b;
            boolean z = true;
            if (obj == su0.p || obj == su0.l) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = mu0.j;
                mu0<E> mu0Var = mu0.this;
                q91<E> q91Var3 = (q91) atomicReferenceFieldUpdater.get(mu0Var);
                while (!mu0Var.w()) {
                    long andIncrement = mu0.f.getAndIncrement(mu0Var);
                    long j = su0.b;
                    long j2 = andIncrement / j;
                    int i = (int) (andIncrement % j);
                    if (q91Var3.e != j2) {
                        q91<E> q91VarJ = mu0Var.j(j2, q91Var3);
                        if (q91VarJ == null) {
                            continue;
                        } else {
                            q91Var = q91VarJ;
                        }
                    } else {
                        q91Var = q91Var3;
                    }
                    Object objJ = mu0Var.J(q91Var, i, andIncrement, null);
                    bh8 bh8Var = su0.m;
                    ku0 ku0Var = null;
                    if (objJ == bh8Var) {
                        ah.f("unreachable");
                        return null;
                    }
                    bh8 bh8Var2 = su0.o;
                    if (objJ == bh8Var2) {
                        if (andIncrement < mu0Var.s()) {
                            q91Var.a();
                        }
                        q91Var3 = q91Var;
                    } else {
                        if (objJ == su0.n) {
                            c31<? super Boolean> c31VarC = e31.c(zya.b(f02Var));
                            try {
                                this.c = c31VarC;
                                Object objJ2 = mu0Var.J(q91Var, i, andIncrement, this);
                                nl3<E, j59> nl3Var = mu0Var.c;
                                if (objJ2 != bh8Var) {
                                    if (objJ2 == bh8Var2) {
                                        if (andIncrement < mu0Var.s()) {
                                            q91Var.a();
                                        }
                                        q91<E> q91Var4 = (q91) mu0.j.get(mu0Var);
                                        while (true) {
                                            if (mu0Var.w()) {
                                                c31<? super Boolean> c31Var = this.c;
                                                c31Var.getClass();
                                                this.c = null;
                                                this.b = su0.l;
                                                Throwable thN = mu0Var.n();
                                                if (thN != null) {
                                                    c31Var.resumeWith(new k57.a(thN));
                                                    break;
                                                }
                                                c31Var.resumeWith(Boolean.FALSE);
                                                break;
                                            }
                                            long andIncrement2 = mu0.f.getAndIncrement(mu0Var);
                                            long j3 = su0.b;
                                            long j4 = andIncrement2 / j3;
                                            int i2 = (int) (andIncrement2 % j3);
                                            if (q91Var4.e != j4) {
                                                q91<E> q91VarJ2 = mu0Var.j(j4, q91Var4);
                                                if (q91VarJ2 != null) {
                                                    q91Var2 = q91VarJ2;
                                                }
                                            } else {
                                                q91Var2 = q91Var4;
                                            }
                                            Object objJ3 = mu0Var.J(q91Var2, i2, andIncrement2, this);
                                            q91<E> q91Var5 = q91Var2;
                                            if (objJ3 == su0.m) {
                                                a(q91Var5, i2);
                                                break;
                                            }
                                            if (objJ3 == su0.o) {
                                                if (andIncrement2 < mu0Var.s()) {
                                                    q91Var5.a();
                                                }
                                                q91Var4 = q91Var5;
                                            } else {
                                                if (objJ3 == su0.n) {
                                                    throw new IllegalStateException("unexpected");
                                                }
                                                q91Var5.a();
                                                this.b = objJ3;
                                                this.c = null;
                                                bool = Boolean.TRUE;
                                                if (nl3Var != null) {
                                                    ku0Var = new ku0(nl3Var, objJ3);
                                                }
                                            }
                                        }
                                    } else {
                                        q91Var.a();
                                        this.b = objJ2;
                                        this.c = null;
                                        bool = Boolean.TRUE;
                                        if (nl3Var != null) {
                                            ku0Var = new ku0(nl3Var, objJ2);
                                        }
                                    }
                                    c31VarC.q(bool, ku0Var);
                                    break;
                                }
                                a(q91Var, i);
                                Object objS = c31VarC.s();
                                a32 a32Var = a32.COROUTINE_SUSPENDED;
                                return objS;
                            } catch (Throwable th) {
                                c31VarC.A();
                                throw th;
                            }
                        }
                        q91Var.a();
                        this.b = objJ;
                    }
                }
                this.b = su0.l;
                Throwable thN2 = mu0Var.n();
                if (thN2 != null) {
                    int i3 = p68.a;
                    throw thN2;
                }
                z = false;
            }
            return Boolean.valueOf(z);
        }

        @Override // defpackage.k91
        public final E next() throws Throwable {
            E e = (E) this.b;
            bh8 bh8Var = su0.p;
            if (e == bh8Var) {
                ah.f("`hasNext()` has not been invoked");
                return null;
            }
            this.b = bh8Var;
            if (e != su0.l) {
                return e;
            }
            AtomicLongFieldUpdater atomicLongFieldUpdater = mu0.e;
            Throwable thO = mu0.this.o();
            int i = p68.a;
            throw thO;
        }
    }

    public static final class b implements lf9 {
    }

    public static final /* synthetic */ class c extends qm3 implements dm3<mu0<?>, bm7<?>, Object, j59> {
        public static final c c = new c(3, mu0.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

        @Override // defpackage.dm3
        public final j59 invoke(mu0<?> mu0Var, bm7<?> bm7Var, Object obj) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = mu0.e;
            mu0Var.E(bm7Var);
            return j59.a;
        }
    }

    public static final /* synthetic */ class d extends qm3 implements dm3<mu0<?>, Object, Object, Object> {
        public static final d c = new d(3, mu0.class, "processResultSelectReceive", "processResultSelectReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);

        @Override // defpackage.dm3
        public final Object invoke(mu0<?> mu0Var, Object obj, Object obj2) throws Throwable {
            mu0<?> mu0Var2 = mu0Var;
            AtomicLongFieldUpdater atomicLongFieldUpdater = mu0.e;
            mu0Var2.getClass();
            if (obj2 != su0.l) {
                return obj2;
            }
            throw mu0Var2.o();
        }
    }

    public static final /* synthetic */ class e extends qm3 implements dm3<mu0<?>, bm7<?>, Object, j59> {
        public static final e c = new e(3, mu0.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

        @Override // defpackage.dm3
        public final j59 invoke(mu0<?> mu0Var, bm7<?> bm7Var, Object obj) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = mu0.e;
            mu0Var.E(bm7Var);
            return j59.a;
        }
    }

    public static final /* synthetic */ class f extends qm3 implements dm3<mu0<?>, Object, Object, Object> {
        public static final f c = new f(3, mu0.class, "processResultSelectReceiveCatching", "processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);

        @Override // defpackage.dm3
        public final Object invoke(mu0<?> mu0Var, Object obj, Object obj2) {
            mu0<?> mu0Var2 = mu0Var;
            AtomicLongFieldUpdater atomicLongFieldUpdater = mu0.e;
            mu0Var2.getClass();
            if (obj2 == su0.l) {
                obj2 = new p91.a(mu0Var2.n());
            }
            return new p91(obj2);
        }
    }

    public static final /* synthetic */ class g extends qm3 implements dm3<mu0<?>, bm7<?>, Object, j59> {
        public static final g c = new g(3, mu0.class, "registerSelectForSend", "registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

        @Override // defpackage.dm3
        public final j59 invoke(mu0<?> mu0Var, bm7<?> bm7Var, Object obj) {
            mu0Var.F(bm7Var, obj);
            return j59.a;
        }
    }

    public static final /* synthetic */ class h extends qm3 implements dm3<mu0<?>, Object, Object, Object> {
        public static final h c = new h(3, mu0.class, "processResultSelectSend", "processResultSelectSend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);

        @Override // defpackage.dm3
        public final Object invoke(mu0<?> mu0Var, Object obj, Object obj2) throws Throwable {
            mu0<?> mu0Var2 = mu0Var;
            AtomicLongFieldUpdater atomicLongFieldUpdater = mu0.e;
            mu0Var2.getClass();
            if (obj2 != su0.l) {
                return mu0Var2;
            }
            throw mu0Var2.q();
        }
    }

    static {
        Unsafe unsafe = pz0.a;
        s = unsafe.objectFieldOffset(mu0.class.getDeclaredField("sendersAndCloseStatus$volatile"));
        f = AtomicLongFieldUpdater.newUpdater(mu0.class, "receivers$volatile");
        q = unsafe.objectFieldOffset(mu0.class.getDeclaredField("receivers$volatile"));
        g = AtomicLongFieldUpdater.newUpdater(mu0.class, "bufferEnd$volatile");
        l = unsafe.objectFieldOffset(mu0.class.getDeclaredField("bufferEnd$volatile"));
        h = AtomicLongFieldUpdater.newUpdater(mu0.class, "completedExpandBuffersAndPauseFlag$volatile");
        o = unsafe.objectFieldOffset(mu0.class.getDeclaredField("completedExpandBuffersAndPauseFlag$volatile"));
        i = AtomicReferenceFieldUpdater.newUpdater(mu0.class, Object.class, "sendSegment$volatile");
        r = unsafe.objectFieldOffset(mu0.class.getDeclaredField("sendSegment$volatile"));
        j = AtomicReferenceFieldUpdater.newUpdater(mu0.class, Object.class, "receiveSegment$volatile");
        p = unsafe.objectFieldOffset(mu0.class.getDeclaredField("receiveSegment$volatile"));
        m = unsafe.objectFieldOffset(mu0.class.getDeclaredField("bufferEndSegment$volatile"));
        k = unsafe.objectFieldOffset(mu0.class.getDeclaredField("_closeCause$volatile"));
        n = unsafe.objectFieldOffset(mu0.class.getDeclaredField("closeHandler$volatile"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public mu0(int i2, nl3<? super E, j59> nl3Var) {
        long j2;
        this.b = i2;
        this.c = nl3Var;
        if (i2 < 0) {
            c9.f(kv2.b(i2, "Invalid channel capacity: ", ", should be >=0"));
            throw null;
        }
        q91<Object> q91Var = su0.a;
        if (i2 != 0) {
            j2 = i2 != Integer.MAX_VALUE ? i2 : Long.MAX_VALUE;
        } else {
            j2 = 0;
        }
        this.bufferEnd$volatile = j2;
        this.completedExpandBuffersAndPauseFlag$volatile = m();
        q91<Object> q91Var2 = new q91<>(0L, null, this, 3);
        this.sendSegment$volatile = q91Var2;
        this.receiveSegment$volatile = q91Var2;
        if (y()) {
            q91Var2 = su0.a;
            q91Var2.getClass();
        }
        this.bufferEndSegment$volatile = q91Var2;
        this.d = nl3Var != 0 ? new dm3() { // from class: ju0
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, final Object obj3) {
                final bm7 bm7Var = (bm7) obj;
                final mu0 mu0Var = this.b;
                return new dm3() { // from class: lu0
                    @Override // defpackage.dm3
                    public final Object invoke(Object obj4, Object obj5, Object obj6) {
                        bh8 bh8Var = su0.l;
                        Object obj7 = obj3;
                        if (obj7 != bh8Var) {
                            rq3.a(mu0Var.c, obj7, bm7Var.getContext());
                        }
                        return j59.a;
                    }
                };
            }
        } : 0;
        this._closeCause$volatile = su0.s;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static Object C(mu0 mu0Var, f02 f02Var) {
        pu0 pu0Var;
        q91<E> q91Var;
        if (f02Var instanceof pu0) {
            pu0Var = (pu0) f02Var;
            int i2 = pu0Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pu0Var.n = i2 - Integer.MIN_VALUE;
            } else {
                pu0Var = new pu0(mu0Var, f02Var);
            }
        } else {
            pu0Var = new pu0(mu0Var, f02Var);
        }
        pu0 pu0Var2 = pu0Var;
        Object obj = pu0Var2.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = pu0Var2.n;
        if (i3 != 0) {
            if (i3 == 1) {
                r57.b(obj);
                return ((p91) obj).a;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        q91<E> q91Var2 = (q91) pz0.a.getObjectVolatile(mu0Var, p);
        while (!mu0Var.w()) {
            long andIncrement = f.getAndIncrement(mu0Var);
            long j2 = su0.b;
            long j3 = andIncrement / j2;
            int i4 = (int) (andIncrement % j2);
            if (q91Var2.e != j3) {
                q91<E> q91VarJ = mu0Var.j(j3, q91Var2);
                if (q91VarJ == null) {
                    continue;
                } else {
                    q91Var = q91VarJ;
                }
            } else {
                q91Var = q91Var2;
            }
            mu0 mu0Var2 = mu0Var;
            Object objJ = mu0Var2.J(q91Var, i4, andIncrement, null);
            if (objJ == su0.m) {
                ah.f("unexpected");
                return null;
            }
            if (objJ != su0.o) {
                if (objJ != su0.n) {
                    q91Var.a();
                    return objJ;
                }
                pu0Var2.n = 1;
                Object objD = mu0Var2.D(q91Var, i4, andIncrement, pu0Var2);
                return objD == a32Var ? a32Var : objD;
            }
            if (andIncrement < mu0Var2.s()) {
                q91Var.a();
            }
            mu0Var = mu0Var2;
            q91Var2 = q91Var;
        }
        return new p91.a(mu0Var.n());
    }

    public final Object A(e02 e02Var, Object obj) throws Throwable {
        UndeliveredElementException undeliveredElementExceptionB;
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        nl3<E, j59> nl3Var = this.c;
        if (nl3Var == null || (undeliveredElementExceptionB = rq3.b(nl3Var, obj, null)) == null) {
            c31Var.resumeWith(new k57.a(q()));
        } else {
            sj0.c(undeliveredElementExceptionB, q());
            c31Var.resumeWith(new k57.a(undeliveredElementExceptionB));
        }
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    public final void B(Object obj, c31 c31Var) {
        nl3<E, j59> nl3Var = this.c;
        if (nl3Var != null) {
            rq3.a(nl3Var, obj, c31Var.f);
        }
        c31Var.resumeWith(new k57.a(q()));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object D(q91 q91Var, int i2, long j2, f02 f02Var) {
        qu0 qu0Var;
        p91 p91Var;
        q91<E> q91Var2;
        if (f02Var instanceof qu0) {
            qu0Var = (qu0) f02Var;
            int i3 = qu0Var.n;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                qu0Var.n = i3 - Integer.MIN_VALUE;
            } else {
                qu0Var = new qu0(this, f02Var);
            }
        } else {
            qu0Var = new qu0(this, f02Var);
        }
        Object objS = qu0Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = qu0Var.n;
        ou0 ou0Var = null;
        if (i4 == 0) {
            r57.b(objS);
            qu0Var.n = 1;
            c31 c31VarC = e31.c(zya.b(qu0Var));
            try {
                pz6 pz6Var = new pz6(c31VarC);
                Object objJ = J(q91Var, i2, j2, pz6Var);
                if (objJ != su0.m) {
                    bh8 bh8Var = su0.o;
                    nl3<E, j59> nl3Var = this.c;
                    if (objJ == bh8Var) {
                        if (j2 < s()) {
                            q91Var.a();
                        }
                        q91<E> q91Var3 = (q91) pz0.a.getObjectVolatile(this, p);
                        while (true) {
                            if (w()) {
                                c31VarC.resumeWith(new p91(new p91.a(n())));
                                break;
                            }
                            long andIncrement = f.getAndIncrement(this);
                            long j3 = su0.b;
                            long j4 = andIncrement / j3;
                            int i5 = (int) (andIncrement % j3);
                            if (q91Var3.e != j4) {
                                q91<E> q91VarJ = j(j4, q91Var3);
                                if (q91VarJ != null) {
                                    q91Var2 = q91VarJ;
                                }
                            } else {
                                q91Var2 = q91Var3;
                            }
                            Object objJ2 = J(q91Var2, i5, andIncrement, pz6Var);
                            q91<E> q91Var4 = q91Var2;
                            if (objJ2 == su0.m) {
                                pz6Var.a(q91Var4, i5);
                                break;
                            }
                            if (objJ2 == su0.o) {
                                if (andIncrement < s()) {
                                    q91Var4.a();
                                }
                                q91Var3 = q91Var4;
                            } else {
                                if (objJ2 == su0.n) {
                                    throw new IllegalStateException("unexpected");
                                }
                                q91Var4.a();
                                p91Var = new p91(objJ2);
                                if (nl3Var != null) {
                                    ou0Var = new ou0(this);
                                }
                            }
                        }
                    } else {
                        q91Var.a();
                        p91Var = new p91(objJ);
                        if (nl3Var != null) {
                            ou0Var = new ou0(this);
                        }
                    }
                    c31VarC.q(p91Var, ou0Var);
                    break;
                }
                pz6Var.a(q91Var, i2);
                objS = c31VarC.s();
                a32 a32Var2 = a32.COROUTINE_SUSPENDED;
                if (objS == a32Var) {
                    return a32Var;
                }
            } catch (Throwable th) {
                c31VarC.A();
                throw th;
            }
        } else {
            if (i4 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objS);
        }
        return ((p91) objS).a;
    }

    public final void E(bm7 bm7Var) {
        q91<E> q91Var;
        q91<E> q91Var2 = (q91) pz0.a.getObjectVolatile(this, p);
        while (!this.w()) {
            long andIncrement = f.getAndIncrement(this);
            long j2 = su0.b;
            long j3 = andIncrement / j2;
            int i2 = (int) (andIncrement % j2);
            if (q91Var2.e != j3) {
                q91<E> q91VarJ = this.j(j3, q91Var2);
                if (q91VarJ == null) {
                    continue;
                } else {
                    q91Var = q91VarJ;
                }
            } else {
                q91Var = q91Var2;
            }
            Object objJ = this.J(q91Var, i2, andIncrement, bm7Var);
            q91Var2 = q91Var;
            if (objJ == su0.m) {
                lf9 lf9Var = bm7Var instanceof lf9 ? (lf9) bm7Var : null;
                if (lf9Var != null) {
                    lf9Var.a(q91Var2, i2);
                    return;
                }
                return;
            }
            if (objJ != su0.o) {
                if (objJ == su0.n) {
                    ah.f("unexpected");
                    return;
                } else {
                    q91Var2.a();
                    bm7Var.d(objJ);
                    return;
                }
            }
            if (andIncrement < this.s()) {
                q91Var2.a();
            }
            this = this;
            bm7Var = bm7Var;
        }
        bm7Var.d(su0.l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void F(bm7<?> bm7Var, Object obj) {
        q91<E> q91Var;
        q91<E> q91Var2 = (q91) pz0.a.getObjectVolatile(this, r);
        while (true) {
            long andIncrement = e.getAndIncrement(this);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zV = this.v(andIncrement, false);
            int i2 = su0.b;
            long j3 = i2;
            long j4 = j2 / j3;
            int i3 = (int) (j2 % j3);
            long j5 = q91Var2.e;
            nl3<E, j59> nl3Var = this.c;
            if (j5 != j4) {
                q91<E> q91VarK = this.k(j4, q91Var2);
                if (q91VarK != null) {
                    q91Var = q91VarK;
                } else if (zV) {
                    if (nl3Var != null) {
                        rq3.a(nl3Var, obj, bm7Var.getContext());
                    }
                    bm7Var.d(su0.l);
                    return;
                }
            } else {
                q91Var = q91Var2;
            }
            mu0 mu0Var = this;
            bm7<?> bm7Var2 = bm7Var;
            Object obj2 = obj;
            int iK = mu0Var.K(q91Var, i3, obj2, j2, bm7Var2, zV);
            q91Var2 = q91Var;
            if (iK == 0) {
                q91Var2.a();
                bm7Var2.d(j59.a);
                return;
            }
            if (iK == 1) {
                bm7Var2.d(j59.a);
                return;
            }
            if (iK == 2) {
                if (zV) {
                    q91Var2.i();
                    if (nl3Var != null) {
                        rq3.a(nl3Var, obj2, bm7Var2.getContext());
                    }
                    bm7Var2.d(su0.l);
                    return;
                }
                lf9 lf9Var = bm7Var2 instanceof lf9 ? (lf9) bm7Var2 : null;
                if (lf9Var != null) {
                    lf9Var.a(q91Var2, i3 + i2);
                    return;
                }
                return;
            }
            if (iK == 3) {
                ah.f("unexpected");
                return;
            }
            if (iK == 4) {
                if (j2 < mu0Var.p()) {
                    q91Var2.a();
                }
                if (nl3Var != null) {
                    rq3.a(nl3Var, obj2, bm7Var2.getContext());
                }
                bm7Var2.d(su0.l);
                return;
            }
            if (iK == 5) {
                q91Var2.a();
            }
            this = (mu0<E>) mu0Var;
            obj = obj2;
            bm7Var = bm7Var2;
        }
    }

    public final void G(lf9 lf9Var, boolean z) {
        if (lf9Var instanceof b) {
            throw null;
        }
        if (lf9Var instanceof a31) {
            ((e02) lf9Var).resumeWith(new k57.a(z ? o() : q()));
            return;
        }
        if (lf9Var instanceof pz6) {
            ((pz6) lf9Var).b.resumeWith(new p91(new p91.a(n())));
            return;
        }
        if (!(lf9Var instanceof a)) {
            if (lf9Var instanceof bm7) {
                ((bm7) lf9Var).e(this, su0.l);
                return;
            } else {
                og.e(lf9Var, "Unexpected waiter: ");
                return;
            }
        }
        a aVar = (a) lf9Var;
        c31<? super Boolean> c31Var = aVar.c;
        c31Var.getClass();
        aVar.c = null;
        aVar.b = su0.l;
        Throwable thN = mu0.this.n();
        if (thN == null) {
            c31Var.resumeWith(Boolean.FALSE);
        } else {
            c31Var.resumeWith(new k57.a(thN));
        }
    }

    public final boolean H(Object obj, E e2) {
        dm3 nu0Var;
        if (obj instanceof bm7) {
            return ((bm7) obj).e(this, e2);
        }
        boolean z = obj instanceof pz6;
        nl3<E, j59> nl3Var = this.c;
        if (z) {
            c31<p91<? extends E>> c31Var = ((pz6) obj).b;
            p91 p91Var = new p91(e2);
            nu0Var = nl3Var != null ? new ou0(this) : null;
            q91<Object> q91Var = su0.a;
            bh8 bh8VarK = c31Var.k(p91Var, nu0Var);
            if (bh8VarK == null) {
                return false;
            }
            c31Var.j(bh8VarK);
            return true;
        }
        if (!(obj instanceof a)) {
            if (!(obj instanceof a31)) {
                ah.f(ad2.b(obj, "Unexpected receiver type: "));
                return false;
            }
            a31 a31Var = (a31) obj;
            nu0Var = nl3Var != null ? new nu0(this) : null;
            q91<Object> q91Var2 = su0.a;
            bh8 bh8VarK2 = a31Var.k(e2, nu0Var);
            if (bh8VarK2 == null) {
                return false;
            }
            a31Var.j(bh8VarK2);
            return true;
        }
        a aVar = (a) obj;
        c31<? super Boolean> c31Var2 = aVar.c;
        c31Var2.getClass();
        aVar.c = null;
        aVar.b = e2;
        Boolean bool = Boolean.TRUE;
        nl3<E, j59> nl3Var2 = mu0.this.c;
        nu0Var = nl3Var2 != null ? new ku0(nl3Var2, e2) : null;
        q91<Object> q91Var3 = su0.a;
        bh8 bh8VarK3 = c31Var2.k(bool, nu0Var);
        if (bh8VarK3 == null) {
            return false;
        }
        c31Var2.j(bh8VarK3);
        return true;
    }

    public final boolean I(Object obj, q91<E> q91Var, int i2) {
        p39 p39Var;
        if (obj instanceof a31) {
            a31 a31Var = (a31) obj;
            j59 j59Var = j59.a;
            q91<Object> q91Var2 = su0.a;
            bh8 bh8VarK = a31Var.k(j59Var, null);
            if (bh8VarK == null) {
                return false;
            }
            a31Var.j(bh8VarK);
            return true;
        }
        if (!(obj instanceof bm7)) {
            if (obj instanceof b) {
                q91<Object> q91Var3 = su0.a;
                throw null;
            }
            ah.f(ad2.b(obj, "Unexpected waiter: "));
            return false;
        }
        int iM = ((zl7) obj).m(this, j59.a);
        if (iM == 0) {
            p39Var = p39.SUCCESSFUL;
        } else if (iM == 1) {
            p39Var = p39.REREGISTER;
        } else if (iM == 2) {
            p39Var = p39.CANCELLED;
        } else {
            if (iM != 3) {
                ud.e(iM, "Unexpected internal result: ");
                return false;
            }
            p39Var = p39.ALREADY_SELECTED;
        }
        if (p39Var == p39.REREGISTER) {
            q91Var.n(i2, null);
        }
        return p39Var == p39.SUCCESSFUL;
    }

    public final Object J(q91<E> q91Var, int i2, long j2, Object obj) {
        Object objL = q91Var.l(i2);
        AtomicReferenceArray atomicReferenceArray = q91Var.i;
        long j3 = s;
        if (objL == null) {
            if (j2 >= (pz0.a.getLongVolatile(this, j3) & 1152921504606846975L)) {
                if (obj == null) {
                    return su0.n;
                }
                if (q91Var.k(i2, objL, obj)) {
                    g();
                    return su0.m;
                }
            }
        } else if (objL == su0.d && q91Var.k(i2, objL, su0.i)) {
            g();
            Object obj2 = atomicReferenceArray.get(i2 * 2);
            q91Var.n(i2, null);
            return obj2;
        }
        while (true) {
            Object objL2 = q91Var.l(i2);
            if (objL2 == null || objL2 == su0.e) {
                if (j2 < (pz0.a.getLongVolatile(this, j3) & 1152921504606846975L)) {
                    if (q91Var.k(i2, objL2, su0.h)) {
                        g();
                        return su0.o;
                    }
                } else {
                    if (obj == null) {
                        return su0.n;
                    }
                    if (q91Var.k(i2, objL2, obj)) {
                        g();
                        return su0.m;
                    }
                }
            } else {
                if (objL2 != su0.d) {
                    bh8 bh8Var = su0.j;
                    if (objL2 != bh8Var && objL2 != su0.h) {
                        if (objL2 == su0.l) {
                            g();
                            return su0.o;
                        }
                        if (objL2 != su0.g && q91Var.k(i2, objL2, su0.f)) {
                            boolean z = objL2 instanceof mf9;
                            if (z) {
                                objL2 = ((mf9) objL2).a;
                            }
                            if (I(objL2, q91Var, i2)) {
                                q91Var.o(i2, su0.i);
                                g();
                                Object obj3 = atomicReferenceArray.get(i2 * 2);
                                q91Var.n(i2, null);
                                return obj3;
                            }
                            q91Var.o(i2, bh8Var);
                            q91Var.i();
                            if (z) {
                                g();
                            }
                            return su0.o;
                        }
                    }
                    return su0.o;
                }
                if (q91Var.k(i2, objL2, su0.i)) {
                    g();
                    Object obj4 = atomicReferenceArray.get(i2 * 2);
                    q91Var.n(i2, null);
                    return obj4;
                }
            }
        }
    }

    public final int K(q91<E> q91Var, int i2, E e2, long j2, Object obj, boolean z) {
        q91Var.n(i2, e2);
        if (z) {
            return L(q91Var, i2, e2, j2, obj, z);
        }
        Object objL = q91Var.l(i2);
        if (objL == null) {
            if (a(j2)) {
                if (q91Var.k(i2, null, su0.d)) {
                    return 1;
                }
            } else {
                if (obj == null) {
                    return 3;
                }
                if (q91Var.k(i2, null, obj)) {
                    return 2;
                }
            }
        } else if (objL instanceof lf9) {
            q91Var.n(i2, null);
            if (H(objL, e2)) {
                q91Var.o(i2, su0.i);
                return 0;
            }
            bh8 bh8Var = su0.k;
            if (q91Var.i.getAndSet((i2 * 2) + 1, bh8Var) == bh8Var) {
                return 5;
            }
            q91Var.m(i2, true);
            return 5;
        }
        return L(q91Var, i2, e2, j2, obj, z);
    }

    public final int L(q91<E> q91Var, int i2, E e2, long j2, Object obj, boolean z) {
        while (true) {
            Object objL = q91Var.l(i2);
            if (objL == null) {
                if (!a(j2) || z) {
                    if (z) {
                        if (q91Var.k(i2, null, su0.j)) {
                            q91Var.i();
                            return 4;
                        }
                    } else {
                        if (obj == null) {
                            return 3;
                        }
                        if (q91Var.k(i2, null, obj)) {
                            return 2;
                        }
                    }
                } else if (q91Var.k(i2, null, su0.d)) {
                    break;
                }
            } else {
                if (objL != su0.e) {
                    bh8 bh8Var = su0.k;
                    if (objL == bh8Var) {
                        q91Var.n(i2, null);
                        return 5;
                    }
                    if (objL == su0.h) {
                        q91Var.n(i2, null);
                        return 5;
                    }
                    if (objL == su0.l) {
                        q91Var.n(i2, null);
                        isClosedForSend();
                        return 4;
                    }
                    q91Var.n(i2, null);
                    if (objL instanceof mf9) {
                        objL = ((mf9) objL).a;
                    }
                    if (H(objL, e2)) {
                        q91Var.o(i2, su0.i);
                        return 0;
                    }
                    if (q91Var.i.getAndSet((i2 * 2) + 1, bh8Var) != bh8Var) {
                        q91Var.m(i2, true);
                    }
                    return 5;
                }
                if (q91Var.k(i2, objL, su0.d)) {
                    break;
                }
            }
        }
        return 1;
    }

    public final void M(long j2) {
        mu0<E> mu0Var = this;
        if (mu0Var.y()) {
            return;
        }
        while (mu0Var.m() <= j2) {
            mu0Var = this;
        }
        int i2 = su0.c;
        int i3 = 0;
        while (true) {
            long j3 = o;
            if (i3 < i2) {
                long jM = mu0Var.m();
                if (jM == (pz0.a.getLongVolatile(mu0Var, j3) & 4611686018427387903L) && jM == mu0Var.m()) {
                    return;
                } else {
                    i3++;
                }
            } else {
                while (true) {
                    Unsafe unsafe = pz0.a;
                    long longVolatile = unsafe.getLongVolatile(mu0Var, j3);
                    if (unsafe.compareAndSwapLong(mu0Var, o, longVolatile, SieveCacheKt.NodeVisitedBit + (longVolatile & 4611686018427387903L))) {
                        break;
                    } else {
                        mu0Var = this;
                    }
                }
                while (true) {
                    long jM2 = mu0Var.m();
                    Unsafe unsafe2 = pz0.a;
                    long longVolatile2 = unsafe2.getLongVolatile(mu0Var, j3);
                    long j4 = longVolatile2 & 4611686018427387903L;
                    boolean z = (longVolatile2 & SieveCacheKt.NodeVisitedBit) != 0;
                    if (jM2 == j4 && jM2 == mu0Var.m()) {
                        break;
                    }
                    if (z) {
                        mu0Var = this;
                    } else {
                        mu0Var = this;
                        unsafe2.compareAndSwapLong(mu0Var, o, longVolatile2, j4 + SieveCacheKt.NodeVisitedBit);
                    }
                }
                while (true) {
                    Unsafe unsafe3 = pz0.a;
                    long longVolatile3 = unsafe3.getLongVolatile(mu0Var, j3);
                    if (unsafe3.compareAndSwapLong(mu0Var, o, longVolatile3, longVolatile3 & 4611686018427387903L)) {
                        return;
                    } else {
                        mu0Var = this;
                    }
                }
            }
        }
    }

    public final boolean a(long j2) {
        return j2 < m() || j2 < p() + ((long) this.b);
    }

    @Override // defpackage.qz6
    public final Object b(e02<? super E> e02Var) throws Throwable {
        q91<E> q91Var;
        Throwable th;
        q91<E> q91Var2;
        Unsafe unsafe = pz0.a;
        long j2 = p;
        q91<E> q91Var3 = (q91) unsafe.getObjectVolatile(this, j2);
        while (!this.w()) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j3 = su0.b;
            long j4 = andIncrement / j3;
            int i2 = (int) (andIncrement % j3);
            if (q91Var3.e != j4) {
                q91<E> q91VarJ = this.j(j4, q91Var3);
                if (q91VarJ == null) {
                    continue;
                } else {
                    q91Var = q91VarJ;
                }
            } else {
                q91Var = q91Var3;
            }
            mu0<E> mu0Var = this;
            Object objJ = mu0Var.J(q91Var, i2, andIncrement, null);
            bh8 bh8Var = su0.m;
            nu0 nu0Var = null;
            if (objJ == bh8Var) {
                ah.f("unexpected");
                return null;
            }
            bh8 bh8Var2 = su0.o;
            if (objJ == bh8Var2) {
                if (andIncrement < mu0Var.s()) {
                    q91Var.a();
                }
                this = mu0Var;
                q91Var3 = q91Var;
            } else {
                if (objJ != su0.n) {
                    q91Var.a();
                    return objJ;
                }
                c31 c31VarC = e31.c(zya.b(e02Var));
                try {
                    Object objJ2 = mu0Var.J(q91Var, i2, andIncrement, c31VarC);
                    if (objJ2 != bh8Var) {
                        nl3<E, j59> nl3Var = mu0Var.c;
                        if (objJ2 == bh8Var2) {
                            if (andIncrement < mu0Var.s()) {
                                q91Var.a();
                            }
                            q91<E> q91Var4 = (q91) pz0.a.getObjectVolatile(mu0Var, j2);
                            while (true) {
                                if (mu0Var.w()) {
                                    c31VarC.resumeWith(new k57.a(mu0Var.o()));
                                    break;
                                }
                                c31 c31Var = c31VarC;
                                try {
                                    long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(mu0Var);
                                    long j5 = su0.b;
                                    long j6 = andIncrement2 / j5;
                                    int i3 = (int) (andIncrement2 % j5);
                                    if (q91Var4.e != j6) {
                                        try {
                                            q91<E> q91VarJ2 = mu0Var.j(j6, q91Var4);
                                            if (q91VarJ2 == null) {
                                                c31VarC = c31Var;
                                            } else {
                                                q91Var2 = q91VarJ2;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            c31VarC = c31Var;
                                            c31VarC.A();
                                            throw th;
                                        }
                                    } else {
                                        q91Var2 = q91Var4;
                                    }
                                    mu0<E> mu0Var2 = mu0Var;
                                    objJ2 = mu0Var2.J(q91Var2, i3, andIncrement2, c31Var);
                                    mu0Var = mu0Var2;
                                    q91<E> q91Var5 = q91Var2;
                                    c31VarC = c31Var;
                                    if (objJ2 == su0.m) {
                                        c31VarC.a(q91Var5, i3);
                                        break;
                                    }
                                    if (objJ2 == su0.o) {
                                        if (andIncrement2 < mu0Var.s()) {
                                            q91Var5.a();
                                        }
                                        q91Var4 = q91Var5;
                                    } else {
                                        if (objJ2 == su0.n) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        q91Var5.a();
                                        if (nl3Var != null) {
                                            nu0Var = new nu0(mu0Var);
                                        }
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    c31VarC = c31Var;
                                    th = th;
                                    c31VarC.A();
                                    throw th;
                                }
                            }
                        } else {
                            q91Var.a();
                            if (nl3Var != null) {
                                nu0Var = new nu0(mu0Var);
                            }
                        }
                        c31VarC.q(objJ2, nu0Var);
                        break;
                    }
                    c31VarC.a(q91Var, i2);
                    Object objS = c31VarC.s();
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    return objS;
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        }
        Throwable thO = this.o();
        int i4 = p68.a;
        throw thO;
    }

    @Override // defpackage.qz6
    public final Object c(co1 co1Var) {
        return C(this, co1Var);
    }

    @Override // defpackage.qz6
    public final void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        d(cancellationException, true);
    }

    @Override // defpackage.no7
    public final boolean close(Throwable th) {
        return d(th, false);
    }

    public final boolean d(Throwable th, boolean z) {
        boolean z2;
        Unsafe unsafe;
        long j2;
        long longVolatile;
        long j3;
        Object objectVolatile;
        Unsafe unsafe2;
        Unsafe unsafe3;
        long j4;
        long longVolatile2;
        Unsafe unsafe4;
        long j5;
        long longVolatile3;
        if (z) {
            do {
                unsafe4 = pz0.a;
                j5 = s;
                longVolatile3 = unsafe4.getLongVolatile(this, j5);
                if (((int) (longVolatile3 >> 60)) != 0) {
                    break;
                }
                q91<Object> q91Var = su0.a;
            } while (!unsafe4.compareAndSwapLong(this, j5, longVolatile3, (longVolatile3 & 1152921504606846975L) + 1152921504606846976L));
        }
        bh8 bh8Var = su0.s;
        while (true) {
            Unsafe unsafe5 = pz0.a;
            long j6 = k;
            if (unsafe5.compareAndSwapObject(this, j6, bh8Var, th)) {
                z2 = true;
                break;
            }
            if (unsafe5.getObjectVolatile(this, j6) != bh8Var) {
                z2 = false;
                break;
            }
        }
        if (z) {
            do {
                unsafe3 = pz0.a;
                j4 = s;
                longVolatile2 = unsafe3.getLongVolatile(this, j4);
            } while (!unsafe3.compareAndSwapLong(this, j4, longVolatile2, (longVolatile2 & 1152921504606846975L) + 3458764513820540928L));
        } else {
            do {
                unsafe = pz0.a;
                j2 = s;
                longVolatile = unsafe.getLongVolatile(this, j2);
                int i2 = (int) (longVolatile >> 60);
                if (i2 == 0) {
                    j3 = (longVolatile & 1152921504606846975L) + 2305843009213693952L;
                } else {
                    if (i2 != 1) {
                        break;
                    }
                    j3 = (longVolatile & 1152921504606846975L) + 3458764513820540928L;
                }
            } while (!unsafe.compareAndSwapLong(this, j2, longVolatile, j3));
        }
        isClosedForSend();
        if (z2) {
            loop3: while (true) {
                Unsafe unsafe6 = pz0.a;
                long j7 = n;
                objectVolatile = unsafe6.getObjectVolatile(this, j7);
                bh8 bh8Var2 = objectVolatile == null ? su0.q : su0.r;
                do {
                    unsafe2 = pz0.a;
                    if (unsafe2.compareAndSwapObject(this, n, objectVolatile, bh8Var2)) {
                        break loop3;
                    }
                } while (unsafe2.getObjectVolatile(this, j7) == objectVolatile);
            }
            if (objectVolatile != null) {
                v39.c(1, objectVolatile);
                ((nl3) objectVolatile).invoke(n());
                return z2;
            }
        }
        return z2;
    }

    public final q91<E> e(long j2) {
        dv1 dv1Var;
        long j3;
        Unsafe unsafe;
        long j4;
        Unsafe unsafe2 = pz0.a;
        Object objectVolatile = unsafe2.getObjectVolatile(this, m);
        q91 q91Var = (q91) unsafe2.getObjectVolatile(this, r);
        if (q91Var.e > ((q91) objectVolatile).e) {
            objectVolatile = q91Var;
        }
        q91 q91Var2 = (q91) unsafe2.getObjectVolatile(this, p);
        if (q91Var2.e > ((q91) objectVolatile).e) {
            objectVolatile = q91Var2;
        }
        dv1 dv1Var2 = (dv1) objectVolatile;
        loop0: while (true) {
            dv1Var = dv1Var2;
            while (true) {
                int i2 = dv1.d;
                dv1Var.getClass();
                Object objectVolatile2 = pz0.a.getObjectVolatile(dv1Var, dv1.b);
                bh8 bh8Var = oe0.f;
                if (objectVolatile2 == bh8Var) {
                    break loop0;
                }
                dv1Var2 = (dv1) objectVolatile2;
                if (dv1Var2 == null) {
                    do {
                        unsafe = pz0.a;
                        j4 = dv1.b;
                        if (unsafe.compareAndSwapObject(dv1Var, j4, (Object) null, bh8Var)) {
                            break loop0;
                        }
                    } while (unsafe.getObjectVolatile(dv1Var, j4) == null);
                }
            }
        }
        q91<E> q91Var3 = (q91) dv1Var;
        if (x()) {
            q91<E> q91Var4 = q91Var3;
            loop3: while (true) {
                int i3 = su0.b - 1;
                while (true) {
                    if (-1 < i3) {
                        j3 = (q91Var4.e * ((long) su0.b)) + ((long) i3);
                        if (j3 >= p()) {
                            while (true) {
                                Object objL = q91Var4.l(i3);
                                if (objL != null && objL != su0.e) {
                                    if (objL != su0.d) {
                                        break;
                                    }
                                    break loop3;
                                }
                                if (q91Var4.k(i3, objL, su0.l)) {
                                    q91Var4.i();
                                    break;
                                }
                            }
                            i3--;
                        }
                    } else {
                        q91Var4 = (q91) ((dv1) pz0.a.getObjectVolatile(q91Var4, dv1.c));
                        if (q91Var4 == null) {
                        }
                    }
                    j3 = -1;
                    break;
                }
            }
            if (j3 != -1) {
                f(j3);
            }
        }
        Object objB = null;
        loop6: for (q91<E> q91Var5 = q91Var3; q91Var5 != null; q91Var5 = (q91) ((dv1) pz0.a.getObjectVolatile(q91Var5, dv1.c))) {
            for (int i4 = su0.b - 1; -1 < i4; i4--) {
                if ((q91Var5.e * ((long) su0.b)) + ((long) i4) < j2) {
                    break loop6;
                }
                while (true) {
                    Object objL2 = q91Var5.l(i4);
                    if (objL2 != null && objL2 != su0.e) {
                        if (!(objL2 instanceof mf9)) {
                            if (!(objL2 instanceof lf9)) {
                                break;
                            }
                            if (q91Var5.k(i4, objL2, su0.l)) {
                                objB = vp2.b(objB, objL2);
                                q91Var5.m(i4, true);
                                break;
                            }
                        } else {
                            if (q91Var5.k(i4, objL2, su0.l)) {
                                objB = vp2.b(objB, ((mf9) objL2).a);
                                q91Var5.m(i4, true);
                                break;
                            }
                        }
                    } else {
                        if (q91Var5.k(i4, objL2, su0.l)) {
                            q91Var5.i();
                            break;
                        }
                    }
                }
            }
        }
        if (objB != null) {
            if (!(objB instanceof ArrayList)) {
                G((lf9) objB, true);
                return q91Var3;
            }
            ArrayList arrayList = (ArrayList) objB;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                G((lf9) arrayList.get(size), true);
            }
        }
        return q91Var3;
    }

    public final void f(long j2) {
        UndeliveredElementException undeliveredElementExceptionB;
        q91<E> q91Var = (q91) pz0.a.getObjectVolatile(this, p);
        while (true) {
            Unsafe unsafe = pz0.a;
            long j3 = q;
            long longVolatile = unsafe.getLongVolatile(this, j3);
            if (j2 < Math.max(((long) this.b) + longVolatile, this.m())) {
                return;
            }
            this = this;
            if (unsafe.compareAndSwapLong(this, j3, longVolatile, 1 + longVolatile)) {
                long j4 = su0.b;
                long j5 = longVolatile / j4;
                int i2 = (int) (longVolatile % j4);
                if (q91Var.e != j5) {
                    q91<E> q91VarJ = this.j(j5, q91Var);
                    if (q91VarJ != null) {
                        q91Var = q91VarJ;
                    }
                }
                q91<E> q91Var2 = q91Var;
                Object objJ = this.J(q91Var2, i2, longVolatile, null);
                if (objJ != su0.o) {
                    q91Var2.a();
                    nl3<E, j59> nl3Var = this.c;
                    if (nl3Var != null && (undeliveredElementExceptionB = rq3.b(nl3Var, objJ, null)) != null) {
                        throw undeliveredElementExceptionB;
                    }
                } else if (longVolatile < this.s()) {
                    q91Var2.a();
                }
                q91Var = q91Var2;
            }
        }
    }

    public final void g() {
        Object objA;
        Unsafe unsafe;
        if (y()) {
            return;
        }
        Unsafe unsafe2 = pz0.a;
        long j2 = m;
        q91<E> q91Var = (q91) unsafe2.getObjectVolatile(this, j2);
        while (true) {
            long andIncrement = g.getAndIncrement(this);
            long j3 = andIncrement / ((long) su0.b);
            if (s() <= andIncrement) {
                if (q91Var.e < j3 && q91Var.c() != 0) {
                    z(j3, q91Var);
                }
                t(1L);
                return;
            }
            if (q91Var.e != j3) {
                ru0 ru0Var = ru0.c;
                while (true) {
                    objA = oe0.a(q91Var, j3, ru0Var);
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
                                unsafe = pz0.a;
                                if (unsafe.compareAndSwapObject(this, m, hl7Var, hl7VarC)) {
                                    if (!hl7Var.f()) {
                                        break;
                                    }
                                    hl7Var.e();
                                    break;
                                }
                            } while (unsafe.getObjectVolatile(this, j2) == hl7Var);
                            if (hl7VarC.f()) {
                                hl7VarC.e();
                            }
                        }
                    } else {
                        break;
                    }
                }
                q91<E> q91Var2 = null;
                if (qc4.d(objA)) {
                    isClosedForSend();
                    z(j3, q91Var);
                    t(1L);
                } else {
                    q91<E> q91Var3 = (q91) qc4.c(objA);
                    long j4 = q91Var3.e;
                    if (j4 > j3) {
                        long j5 = ((long) su0.b) * j4;
                        if (pz0.a.compareAndSwapLong(this, l, 1 + andIncrement, j5)) {
                            t(j5 - andIncrement);
                        } else {
                            t(1L);
                        }
                    } else {
                        q91Var2 = q91Var3;
                    }
                }
                if (q91Var2 == null) {
                    continue;
                } else {
                    q91Var = q91Var2;
                }
            }
            int i2 = (int) (andIncrement % ((long) su0.b));
            Object objL = q91Var.l(i2);
            boolean z = objL instanceof lf9;
            long j6 = q;
            if (!z || andIncrement < pz0.a.getLongVolatile(this, j6) || !q91Var.k(i2, objL, su0.g)) {
                while (true) {
                    Object objL2 = q91Var.l(i2);
                    if (objL2 instanceof lf9) {
                        if (andIncrement < pz0.a.getLongVolatile(this, j6)) {
                            if (q91Var.k(i2, objL2, new mf9((lf9) objL2))) {
                                t(1L);
                                return;
                            }
                        } else if (q91Var.k(i2, objL2, su0.g)) {
                            if (!I(objL2, q91Var, i2)) {
                                q91Var.o(i2, su0.j);
                                q91Var.i();
                                break;
                            } else {
                                q91Var.o(i2, su0.d);
                                t(1L);
                                return;
                            }
                        }
                    } else {
                        if (objL2 == su0.j) {
                            break;
                        }
                        if (objL2 == null) {
                            if (q91Var.k(i2, objL2, su0.e)) {
                                t(1L);
                                return;
                            }
                        } else if (objL2 == su0.d || objL2 == su0.h || objL2 == su0.i || objL2 == su0.k || objL2 == su0.l) {
                            t(1L);
                            return;
                        } else if (objL2 != su0.f) {
                            ah.f(ad2.b(objL2, "Unexpected cell state: "));
                            return;
                        }
                    }
                }
                t(1L);
            } else if (I(objL, q91Var, i2)) {
                q91Var.o(i2, su0.d);
                t(1L);
                return;
            } else {
                q91Var.o(i2, su0.j);
                q91Var.i();
                t(1L);
            }
        }
    }

    @Override // defpackage.no7
    public final xl7<E, mu0<E>> getOnSend() {
        g gVar = g.c;
        gVar.getClass();
        v39.c(3, gVar);
        h hVar = h.c;
        hVar.getClass();
        v39.c(3, hVar);
        return new q82(this, gVar, hVar, null);
    }

    @Override // defpackage.qz6
    public final wl7 h() {
        e eVar = e.c;
        eVar.getClass();
        v39.c(3, eVar);
        f fVar = f.c;
        fVar.getClass();
        v39.c(3, fVar);
        return new wl7(this, eVar, fVar, this.d);
    }

    @Override // defpackage.qz6
    public final Object i() {
        q91<E> q91Var;
        Unsafe unsafe = pz0.a;
        long longVolatile = unsafe.getLongVolatile(this, q);
        long longVolatile2 = unsafe.getLongVolatile(this, s);
        if (v(longVolatile2, true)) {
            return new p91.a(n());
        }
        long j2 = longVolatile2 & 1152921504606846975L;
        p91.b bVar = p91.b;
        if (longVolatile >= j2) {
            return bVar;
        }
        Object obj = su0.k;
        q91<E> q91Var2 = (q91) unsafe.getObjectVolatile(this, p);
        while (!this.w()) {
            long andIncrement = f.getAndIncrement(this);
            long j3 = su0.b;
            long j4 = andIncrement / j3;
            int i2 = (int) (andIncrement % j3);
            if (q91Var2.e != j4) {
                q91<E> q91VarJ = this.j(j4, q91Var2);
                if (q91VarJ == null) {
                    continue;
                } else {
                    q91Var = q91VarJ;
                }
            } else {
                q91Var = q91Var2;
            }
            mu0<E> mu0Var = this;
            Object objJ = mu0Var.J(q91Var, i2, andIncrement, obj);
            q91Var2 = q91Var;
            if (objJ == su0.m) {
                lf9 lf9Var = obj instanceof lf9 ? (lf9) obj : null;
                if (lf9Var != null) {
                    lf9Var.a(q91Var2, i2);
                }
                mu0Var.M(andIncrement);
                q91Var2.i();
                return bVar;
            }
            if (objJ != su0.o) {
                if (objJ != su0.n) {
                    q91Var2.a();
                    return objJ;
                }
                ah.f("unexpected");
                return null;
            }
            if (andIncrement < mu0Var.s()) {
                q91Var2.a();
            }
            this = mu0Var;
        }
        return new p91.a(this.n());
    }

    @Override // defpackage.no7
    public final void invokeOnClose(nl3<? super Throwable, j59> nl3Var) {
        while (true) {
            mu0<E> mu0Var = this;
            if (pz0.a.compareAndSwapObject(mu0Var, n, (Object) null, nl3Var)) {
                return;
            }
            Unsafe unsafe = pz0.a;
            long j2 = n;
            if (unsafe.getObjectVolatile(mu0Var, j2) != null) {
                while (true) {
                    Object objectVolatile = pz0.a.getObjectVolatile(mu0Var, j2);
                    bh8 bh8Var = su0.q;
                    if (objectVolatile != bh8Var) {
                        if (objectVolatile == su0.r) {
                            ah.f("Another handler was already registered and successfully invoked");
                            return;
                        } else {
                            ah.f(ad2.b(objectVolatile, "Another handler is already registered: "));
                            return;
                        }
                    }
                    bh8 bh8Var2 = su0.r;
                    do {
                        if (pz0.a.compareAndSwapObject(mu0Var, n, bh8Var, bh8Var2)) {
                            nl3Var.invoke(mu0Var.n());
                            return;
                        }
                    } while (pz0.a.getObjectVolatile(mu0Var, j2) == bh8Var);
                }
            } else {
                this = mu0Var;
            }
        }
    }

    @Override // defpackage.no7
    public final boolean isClosedForSend() {
        return v(pz0.a.getLongVolatile(this, s), false);
    }

    @Override // defpackage.qz6
    public final k91<E> iterator() {
        return new a();
    }

    public final q91<E> j(long j2, q91<E> q91Var) {
        Object objA;
        q91<E> q91Var2;
        Unsafe unsafe;
        long j3;
        long longVolatile;
        Unsafe unsafe2;
        q91<Object> q91Var3 = su0.a;
        ru0 ru0Var = ru0.c;
        loop0: while (true) {
            objA = oe0.a(q91Var, j2, ru0Var);
            if (!qc4.d(objA)) {
                hl7 hl7VarC = qc4.c(objA);
                while (true) {
                    Unsafe unsafe3 = pz0.a;
                    long j4 = p;
                    hl7 hl7Var = (hl7) unsafe3.getObjectVolatile(this, j4);
                    if (hl7Var.e >= hl7VarC.e) {
                        break loop0;
                    }
                    if (!hl7VarC.j()) {
                        break;
                    }
                    do {
                        unsafe2 = pz0.a;
                        if (unsafe2.compareAndSwapObject(this, p, hl7Var, hl7VarC)) {
                            if (!hl7Var.f()) {
                                break loop0;
                            }
                            hl7Var.e();
                            break loop0;
                        }
                    } while (unsafe2.getObjectVolatile(this, j4) == hl7Var);
                    if (hl7VarC.f()) {
                        hl7VarC.e();
                    }
                }
            } else {
                break;
            }
        }
        if (qc4.d(objA)) {
            isClosedForSend();
            if (q91Var.e * ((long) su0.b) < s()) {
                q91Var.a();
                return null;
            }
        } else {
            q91<E> q91Var4 = (q91) qc4.c(objA);
            long j5 = q91Var4.e;
            if (y() || j2 > m() / ((long) su0.b)) {
                q91Var2 = q91Var4;
                break;
            }
            loop3: while (true) {
                Unsafe unsafe4 = pz0.a;
                long j6 = m;
                hl7 hl7Var2 = (hl7) unsafe4.getObjectVolatile(this, j6);
                if (hl7Var2.e >= j5 || !q91Var4.j()) {
                    q91Var2 = q91Var4;
                    break;
                }
                while (true) {
                    Unsafe unsafe5 = pz0.a;
                    q91Var2 = q91Var4;
                    if (unsafe5.compareAndSwapObject(this, m, hl7Var2, q91Var4)) {
                        if (!hl7Var2.f()) {
                            break loop3;
                        }
                        hl7Var2.e();
                        break loop3;
                    }
                    if (unsafe5.getObjectVolatile(this, j6) != hl7Var2) {
                        break;
                    }
                    q91Var4 = q91Var2;
                }
                if (q91Var2.f()) {
                    q91Var2.e();
                }
                q91Var4 = q91Var2;
            }
            if (j5 <= j2) {
                return q91Var2;
            }
            long j7 = j5 * ((long) su0.b);
            do {
                unsafe = pz0.a;
                j3 = q;
                longVolatile = unsafe.getLongVolatile(this, j3);
                if (longVolatile >= j7) {
                    break;
                }
            } while (!unsafe.compareAndSwapLong(this, j3, longVolatile, j7));
            if (j5 * ((long) su0.b) < s()) {
                q91Var2.a();
            }
        }
        return null;
    }

    public final q91<E> k(long j2, q91<E> q91Var) {
        Object objA;
        q91<E> q91Var2;
        long j3;
        Unsafe unsafe;
        mu0<E> mu0Var = this;
        q91<Object> q91Var3 = su0.a;
        ru0 ru0Var = ru0.c;
        loop0: while (true) {
            objA = oe0.a(q91Var, j2, ru0Var);
            if (!qc4.d(objA)) {
                hl7 hl7VarC = qc4.c(objA);
                while (true) {
                    Unsafe unsafe2 = pz0.a;
                    long j4 = r;
                    hl7 hl7Var = (hl7) unsafe2.getObjectVolatile(mu0Var, j4);
                    if (hl7Var.e >= hl7VarC.e) {
                        break loop0;
                    }
                    if (!hl7VarC.j()) {
                        break;
                    }
                    do {
                        unsafe = pz0.a;
                        if (unsafe.compareAndSwapObject(mu0Var, r, hl7Var, hl7VarC)) {
                            if (!hl7Var.f()) {
                                break loop0;
                            }
                            hl7Var.e();
                            break loop0;
                        }
                    } while (unsafe.getObjectVolatile(mu0Var, j4) == hl7Var);
                    if (hl7VarC.f()) {
                        hl7VarC.e();
                    }
                }
            } else {
                break;
            }
        }
        q91<E> q91Var4 = null;
        if (qc4.d(objA)) {
            mu0Var.isClosedForSend();
            if (q91Var.e * ((long) su0.b) >= mu0Var.p()) {
                return null;
            }
            q91Var.a();
            return null;
        }
        q91<E> q91Var5 = (q91) qc4.c(objA);
        long j5 = q91Var5.e;
        if (j5 <= j2) {
            return q91Var5;
        }
        long j6 = j5 * ((long) su0.b);
        while (true) {
            Unsafe unsafe3 = pz0.a;
            long j7 = s;
            long longVolatile = unsafe3.getLongVolatile(mu0Var, j7);
            long j8 = 1152921504606846975L & longVolatile;
            if (j8 >= j6) {
                q91Var2 = q91Var4;
                j3 = j5;
                break;
            }
            q91Var2 = q91Var4;
            j3 = j5;
            if (unsafe3.compareAndSwapLong(mu0Var, j7, longVolatile, j8 + (((long) ((int) (longVolatile >> 60))) << 60))) {
                break;
            }
            mu0Var = this;
            q91Var4 = q91Var2;
            j5 = j3;
        }
        if (j3 * ((long) su0.b) >= p()) {
            return q91Var2;
        }
        q91Var5.a();
        return q91Var2;
    }

    @Override // defpackage.qz6
    public final wl7 l() {
        c cVar = c.c;
        cVar.getClass();
        v39.c(3, cVar);
        d dVar = d.c;
        dVar.getClass();
        v39.c(3, dVar);
        return new wl7(this, cVar, dVar, this.d);
    }

    public final long m() {
        return pz0.a.getLongVolatile(this, l);
    }

    public final Throwable n() {
        return (Throwable) pz0.a.getObjectVolatile(this, k);
    }

    public final Throwable o() {
        Throwable thN = n();
        return thN == null ? new ClosedReceiveChannelException("Channel was closed") : thN;
    }

    public final long p() {
        return pz0.a.getLongVolatile(this, q);
    }

    public final Throwable q() {
        Throwable thN = n();
        return thN == null ? new ClosedSendChannelException("Channel was closed") : thN;
    }

    public final long s() {
        return pz0.a.getLongVolatile(this, s) & 1152921504606846975L;
    }

    /* JADX WARN: Code duplicated, block: B:86:0x014c  */
    /* JADX WARN: Code duplicated, block: B:88:0x0150 A[RETURN] */
    @Override // defpackage.no7
    public Object send(E e2, e02<? super j59> e02Var) throws Throwable {
        Object objS;
        a32 a32Var;
        Unsafe unsafe = pz0.a;
        long j2 = r;
        q91<E> q91Var = (q91) unsafe.getObjectVolatile(this, j2);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = e;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j3 = andIncrement & 1152921504606846975L;
            boolean zV = v(andIncrement, false);
            int i2 = su0.b;
            long j4 = i2;
            long j5 = j3 / j4;
            int i3 = (int) (j3 % j4);
            if (q91Var.e != j5) {
                q91<E> q91VarK = k(j5, q91Var);
                if (q91VarK != null) {
                    q91Var = q91VarK;
                } else if (zV) {
                    Object objA = A(e02Var, e2);
                    if (objA != a32.COROUTINE_SUSPENDED) {
                        break;
                    }
                    return objA;
                }
            }
            int iK = K(q91Var, i3, e2, j3, null, zV);
            if (iK == 0) {
                q91Var.a();
                break;
            }
            if (iK != 1) {
                if (iK == 2) {
                    if (!zV) {
                        break;
                    }
                    q91Var.i();
                    Object objA2 = A(e02Var, e2);
                    if (objA2 != a32.COROUTINE_SUSPENDED) {
                        break;
                    }
                    return objA2;
                }
                if (iK == 3) {
                    c31 c31VarC = e31.c(zya.b(e02Var));
                    try {
                        int iK2 = K(q91Var, i3, e2, j3, c31VarC, false);
                        if (iK2 != 0) {
                            if (iK2 != 1) {
                                if (iK2 != 2) {
                                    if (iK2 != 4) {
                                        String str = "unexpected";
                                        if (iK2 != 5) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        q91Var.a();
                                        q91<E> q91Var2 = (q91) pz0.a.getObjectVolatile(this, j2);
                                        while (true) {
                                            long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(this);
                                            long j6 = andIncrement2 & 1152921504606846975L;
                                            boolean zV2 = v(andIncrement2, false);
                                            int i4 = su0.b;
                                            long j7 = i4;
                                            long j8 = j6 / j7;
                                            int i5 = (int) (j6 % j7);
                                            if (q91Var2.e != j8) {
                                                q91<E> q91VarK2 = k(j8, q91Var2);
                                                if (q91VarK2 != null) {
                                                    q91Var2 = q91VarK2;
                                                } else if (zV2) {
                                                }
                                            }
                                            String str2 = str;
                                            int iK3 = K(q91Var2, i5, e2, j6, c31VarC, zV2);
                                            if (iK3 == 0) {
                                                q91Var2.a();
                                            } else if (iK3 != 1) {
                                                if (iK3 == 2) {
                                                    if (!zV2) {
                                                        c31VarC.a(q91Var2, i5 + i4);
                                                        break;
                                                    }
                                                    q91Var2.i();
                                                } else {
                                                    if (iK3 == 3) {
                                                        throw new IllegalStateException(str2);
                                                    }
                                                    if (iK3 != 4) {
                                                        if (iK3 == 5) {
                                                            q91Var2.a();
                                                        }
                                                        str = str2;
                                                    } else if (j6 < p()) {
                                                        q91Var2.a();
                                                    }
                                                }
                                            }
                                        }
                                    } else if (j3 < p()) {
                                        q91Var.a();
                                    }
                                    B(e2, c31VarC);
                                    break;
                                } else {
                                    c31VarC.a(q91Var, i3 + i2);
                                }
                            }
                            objS = c31VarC.s();
                            a32Var = a32.COROUTINE_SUSPENDED;
                            if (objS != a32Var) {
                                objS = j59.a;
                            }
                            if (objS == a32Var) {
                                break;
                            }
                            return objS;
                        }
                        q91Var.a();
                        c31VarC.resumeWith(j59.a);
                        objS = c31VarC.s();
                        a32Var = a32.COROUTINE_SUSPENDED;
                        if (objS != a32Var) {
                            objS = j59.a;
                        }
                        if (objS == a32Var) {
                            break;
                        }
                        return objS;
                    } catch (Throwable th) {
                        c31VarC.A();
                        throw th;
                    }
                }
                if (iK == 4) {
                    if (j3 < p()) {
                        q91Var.a();
                    }
                    Object objA3 = A(e02Var, e2);
                    if (objA3 != a32.COROUTINE_SUSPENDED) {
                        break;
                    }
                    return objA3;
                }
                if (iK == 5) {
                    q91Var.a();
                }
            } else {
                break;
            }
        }
        return j59.a;
    }

    public final void t(long j2) {
        if ((h.addAndGet(this, j2) & SieveCacheKt.NodeVisitedBit) != 0) {
            while ((pz0.a.getLongVolatile(this, o) & SieveCacheKt.NodeVisitedBit) != 0) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String string;
        StringBuilder sb = new StringBuilder();
        Unsafe unsafe = pz0.a;
        int longVolatile = (int) (unsafe.getLongVolatile(this, s) >> 60);
        if (longVolatile == 2) {
            sb.append("closed,");
        } else if (longVolatile == 3) {
            sb.append("cancelled,");
        }
        sb.append("capacity=" + this.b + ',');
        sb.append("data=[");
        int i2 = 0;
        List listI = u96.i(unsafe.getObjectVolatile(this, p), unsafe.getObjectVolatile(this, r), unsafe.getObjectVolatile(this, m));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listI) {
            if (((q91) obj) != su0.a) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            qz0.e();
            return null;
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j2 = ((q91) next).e;
            do {
                Object next2 = it.next();
                long j3 = ((q91) next2).e;
                if (j2 > j3) {
                    next = next2;
                    j2 = j3;
                }
            } while (it.hasNext());
        }
        q91 q91Var = (q91) next;
        long jP = p();
        long jS = s();
        loop2: while (true) {
            int i3 = su0.b;
            for (int i4 = i2; i4 < i3; i4++) {
                long j4 = (q91Var.e * ((long) su0.b)) + ((long) i4);
                if (j4 >= jS && j4 >= jP) {
                    break loop2;
                }
                Object objL = q91Var.l(i4);
                Object obj2 = q91Var.i.get(i4 * 2);
                if (objL instanceof a31) {
                    string = (jS > j4 || j4 >= jP) ? (jP > j4 || j4 >= jS) ? "cont" : "send" : "receive";
                } else if (objL instanceof bm7) {
                    string = (jS > j4 || j4 >= jP) ? (jP > j4 || j4 >= jS) ? "select" : "onSend" : "onReceive";
                } else if (objL instanceof pz6) {
                    string = "receiveCatching";
                } else if (objL instanceof b) {
                    string = "sendBroadcast";
                } else if (objL instanceof mf9) {
                    string = "EB(" + objL + ')';
                } else if (aa4.e(objL, su0.f) || aa4.e(objL, su0.g)) {
                    string = "resuming_sender";
                } else {
                    if (objL != null && !objL.equals(su0.e) && !objL.equals(su0.i) && !objL.equals(su0.h) && !objL.equals(su0.k) && !objL.equals(su0.j) && !objL.equals(su0.l)) {
                        string = objL.toString();
                    }
                }
                if (obj2 != null) {
                    sb.append("(" + string + ',' + obj2 + "),");
                } else {
                    sb.append(string + ',');
                }
            }
            q91Var = (q91) q91Var.c();
            if (q91Var == null) {
                break;
            }
            i2 = 0;
        }
        if (ua8.k0(sb) == ',') {
            sb.deleteCharAt(sb.length() - 1).getClass();
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // defpackage.no7
    /* JADX INFO: renamed from: trySend-JP2dKIU */
    public Object mo0trySendJP2dKIU(E e2) {
        mu0<E> mu0Var = this;
        Unsafe unsafe = pz0.a;
        long longVolatile = unsafe.getLongVolatile(mu0Var, s);
        long j2 = 1152921504606846975L;
        boolean z = mu0Var.v(longVolatile, false) ? false : !mu0Var.a(longVolatile & 1152921504606846975L);
        p91.b bVar = p91.b;
        if (z) {
            return bVar;
        }
        Object obj = su0.j;
        q91<E> q91Var = (q91) unsafe.getObjectVolatile(mu0Var, r);
        while (true) {
            long andIncrement = e.getAndIncrement(mu0Var);
            long j3 = andIncrement & j2;
            boolean zV = mu0Var.v(andIncrement, false);
            int i2 = su0.b;
            long j4 = i2;
            long j5 = j3 / j4;
            int i3 = (int) (j3 % j4);
            if (q91Var.e != j5) {
                q91<E> q91VarK = mu0Var.k(j5, q91Var);
                if (q91VarK != null) {
                    q91Var = q91VarK;
                } else {
                    if (zV) {
                        return new p91.a(mu0Var.q());
                    }
                    j2 = 1152921504606846975L;
                }
            }
            int iK = mu0Var.K(q91Var, i3, e2, j3, obj, zV);
            if (iK == 0) {
                q91Var.a();
                return j59.a;
            }
            if (iK == 1) {
                return j59.a;
            }
            if (iK == 2) {
                if (zV) {
                    q91Var.i();
                    return new p91.a(q());
                }
                lf9 lf9Var = obj instanceof lf9 ? (lf9) obj : null;
                if (lf9Var != null) {
                    lf9Var.a(q91Var, i3 + i2);
                }
                q91Var.i();
                return bVar;
            }
            if (iK == 3) {
                ah.f("unexpected");
                return null;
            }
            if (iK == 4) {
                if (j3 < p()) {
                    q91Var.a();
                }
                return new p91.a(q());
            }
            if (iK == 5) {
                q91Var.a();
            }
            j2 = 1152921504606846975L;
            mu0Var = this;
        }
    }

    public final boolean v(long j2, boolean z) {
        mu0<E> mu0Var = this;
        int i2 = (int) (j2 >> 60);
        if (i2 != 0 && i2 != 1) {
            if (i2 == 2) {
                mu0Var.e(j2 & 1152921504606846975L);
                if (z) {
                    while (true) {
                        Unsafe unsafe = pz0.a;
                        long j3 = p;
                        q91<E> q91VarJ = (q91) unsafe.getObjectVolatile(mu0Var, j3);
                        long jP = mu0Var.p();
                        if (mu0Var.s() <= jP) {
                            break;
                        }
                        long j4 = su0.b;
                        long j5 = jP / j4;
                        if (q91VarJ.e != j5 && (q91VarJ = mu0Var.j(j5, q91VarJ)) == null) {
                            if (((q91) unsafe.getObjectVolatile(mu0Var, j3)).e < j5) {
                                break;
                            }
                        } else {
                            q91VarJ.a();
                            int i3 = (int) (jP % j4);
                            while (true) {
                                Object objL = q91VarJ.l(i3);
                                if (objL != null && objL != su0.e) {
                                    if (objL != su0.d && (objL == su0.j || objL == su0.l || objL == su0.i || objL == su0.h || (objL != su0.g && (objL == su0.f || jP != mu0Var.p())))) {
                                        break;
                                        break;
                                        break;
                                        break;
                                        break;
                                        break;
                                    }
                                } else {
                                    if (q91VarJ.k(i3, objL, su0.h)) {
                                        mu0Var.g();
                                        break;
                                    }
                                    mu0Var = this;
                                }
                            }
                            pz0.a.compareAndSwapLong(mu0Var, q, jP, 1 + jP);
                            mu0Var = this;
                        }
                    }
                }
            } else {
                if (i2 != 3) {
                    j2.d(jh.b(i2, "unexpected close status: "));
                    return false;
                }
                q91<E> q91VarE = mu0Var.e(j2 & 1152921504606846975L);
                UndeliveredElementException undeliveredElementExceptionB = null;
                Object objB = null;
                loop0: do {
                    AtomicReferenceArray atomicReferenceArray = q91VarE.i;
                    for (int i4 = su0.b - 1; -1 < i4; i4--) {
                        long j6 = (q91VarE.e * ((long) su0.b)) + ((long) i4);
                        while (true) {
                            Object objL2 = q91VarE.l(i4);
                            if (objL2 == su0.i) {
                                break loop0;
                            }
                            bh8 bh8Var = su0.d;
                            nl3<E, j59> nl3Var = mu0Var.c;
                            if (objL2 != bh8Var) {
                                if (objL2 != su0.e && objL2 != null) {
                                    if (!(objL2 instanceof lf9) && !(objL2 instanceof mf9)) {
                                        bh8 bh8Var2 = su0.g;
                                        if (objL2 == bh8Var2 || objL2 == su0.f) {
                                            break loop0;
                                        }
                                        if (objL2 != bh8Var2) {
                                            break;
                                        }
                                    } else {
                                        if (j6 < mu0Var.p()) {
                                            break loop0;
                                        }
                                        lf9 lf9Var = objL2 instanceof mf9 ? ((mf9) objL2).a : (lf9) objL2;
                                        if (q91VarE.k(i4, objL2, su0.l)) {
                                            if (nl3Var != null) {
                                                undeliveredElementExceptionB = rq3.b(nl3Var, atomicReferenceArray.get(i4 * 2), undeliveredElementExceptionB);
                                            }
                                            objB = vp2.b(objB, lf9Var);
                                            q91VarE.n(i4, null);
                                            q91VarE.i();
                                            break;
                                        }
                                    }
                                } else {
                                    if (q91VarE.k(i4, objL2, su0.l)) {
                                        q91VarE.i();
                                        break;
                                    }
                                }
                            } else {
                                if (j6 < mu0Var.p()) {
                                    break loop0;
                                }
                                if (q91VarE.k(i4, objL2, su0.l)) {
                                    if (nl3Var != null) {
                                        undeliveredElementExceptionB = rq3.b(nl3Var, atomicReferenceArray.get(i4 * 2), undeliveredElementExceptionB);
                                    }
                                    q91VarE.n(i4, null);
                                    q91VarE.i();
                                    break;
                                }
                            }
                        }
                    }
                    q91VarE = (q91) ((dv1) pz0.a.getObjectVolatile(q91VarE, dv1.c));
                } while (q91VarE != null);
                if (objB != null) {
                    if (objB instanceof ArrayList) {
                        ArrayList arrayList = (ArrayList) objB;
                        for (int size = arrayList.size() - 1; -1 < size; size--) {
                            mu0Var.G((lf9) arrayList.get(size), false);
                        }
                    } else {
                        mu0Var.G((lf9) objB, false);
                    }
                }
                if (undeliveredElementExceptionB != null) {
                    throw undeliveredElementExceptionB;
                }
            }
            return true;
        }
        return false;
    }

    public final boolean w() {
        return v(pz0.a.getLongVolatile(this, s), true);
    }

    public boolean x() {
        return false;
    }

    public final boolean y() {
        long jM = m();
        return jM == 0 || jM == Long.MAX_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void z(long j2, q91<E> q91Var) {
        mu0<E> mu0Var;
        q91<E> q91Var2;
        q91<E> q91Var3;
        while (q91Var.e < j2 && (q91Var3 = (q91) q91Var.c()) != null) {
            q91Var = q91Var3;
        }
        while (true) {
            q91<E> q91Var4 = q91Var;
            while (q91Var4.d() && (q91Var2 = (q91) q91Var4.c()) != null) {
                q91Var4 = q91Var2;
            }
            while (true) {
                Unsafe unsafe = pz0.a;
                long j3 = m;
                hl7 hl7Var = (hl7) unsafe.getObjectVolatile(this, j3);
                if (hl7Var.e >= q91Var4.e) {
                    return;
                }
                if (!q91Var4.j()) {
                    break;
                }
                while (true) {
                    Unsafe unsafe2 = pz0.a;
                    mu0Var = this;
                    if (unsafe2.compareAndSwapObject(mu0Var, m, hl7Var, q91Var4)) {
                        if (hl7Var.f()) {
                            hl7Var.e();
                            return;
                        }
                        return;
                    } else if (unsafe2.getObjectVolatile(mu0Var, j3) != hl7Var) {
                        break;
                    } else {
                        this = mu0Var;
                    }
                }
                if (q91Var4.f()) {
                    q91Var4.e();
                }
                this = mu0Var;
            }
            q91Var = q91Var4;
        }
    }
}
