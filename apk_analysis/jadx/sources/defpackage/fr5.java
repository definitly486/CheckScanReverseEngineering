package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class fr5<T, U> extends g1<T, U> {
    public final xl3<? super T, ? extends wr5<? extends U>> c;
    public final int d;
    public final int e;

    public static final class a<T, U> extends AtomicReference<cp2> implements ls5<U> {
        public final long b;
        public final b<T, U> c;
        public volatile boolean d;
        public volatile iz7<U> e;
        public int f;

        public a(b<T, U> bVar, long j) {
            this.b = j;
            this.c = bVar;
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            this.d = true;
            this.c.d();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            if (!k13.a(this.c.h, th)) {
                d97.b(th);
                return;
            }
            this.c.b();
            this.d = true;
            this.c.d();
        }

        @Override // defpackage.ls5
        public final void onNext(U u) {
            int i = this.f;
            b<T, U> bVar = this.c;
            if (i != 0) {
                bVar.d();
                return;
            }
            if (bVar.get() == 0 && bVar.compareAndSet(0, 1)) {
                bVar.b.onNext(u);
                if (bVar.decrementAndGet() == 0) {
                    return;
                }
            } else {
                iz7 n68Var = this.e;
                if (n68Var == null) {
                    n68Var = new n68(bVar.e);
                    this.e = n68Var;
                }
                n68Var.offer(u);
                if (bVar.getAndIncrement() != 0) {
                    return;
                }
            }
            bVar.e();
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.g(this, cp2Var) && (cp2Var instanceof yv6)) {
                yv6 yv6Var = (yv6) cp2Var;
                int iD = yv6Var.d(7);
                if (iD == 1) {
                    this.f = iD;
                    this.e = yv6Var;
                    this.d = true;
                    this.c.d();
                    return;
                }
                if (iD == 2) {
                    this.f = iD;
                    this.e = yv6Var;
                }
            }
        }
    }

    public static final class b<T, U> extends AtomicInteger implements cp2, ls5<T> {
        public static final a<?, ?>[] q = new a[0];
        public static final a<?, ?>[] r = new a[0];
        public final ls5<? super U> b;
        public final xl3<? super T, ? extends wr5<? extends U>> c;
        public final int d;
        public final int e;
        public volatile hz7<U> f;
        public volatile boolean g;
        public final pt h = new pt();
        public volatile boolean i;
        public final AtomicReference<a<?, ?>[]> j;
        public cp2 k;
        public long l;
        public long m;
        public int n;
        public final ArrayDeque o;
        public int p;

        public b(ls5 ls5Var, xl3 xl3Var, int i, int i2) {
            this.b = ls5Var;
            this.c = xl3Var;
            this.d = i;
            this.e = i2;
            if (i != Integer.MAX_VALUE) {
                this.o = new ArrayDeque(i);
            }
            this.j = new AtomicReference<>(q);
        }

        public final boolean a() {
            if (!this.i) {
                if (this.h.get() == null) {
                    return false;
                }
                b();
                Throwable thB = k13.b(this.h);
                if (thB != k13.a) {
                    this.b.onError(thB);
                }
            }
            return true;
        }

        public final boolean b() {
            a<?, ?>[] andSet;
            this.k.dispose();
            AtomicReference<a<?, ?>[]> atomicReference = this.j;
            a<?, ?>[] aVarArr = atomicReference.get();
            a<?, ?>[] aVarArr2 = r;
            if (aVarArr == aVarArr2 || (andSet = atomicReference.getAndSet(aVarArr2)) == aVarArr2) {
                return false;
            }
            for (a<?, ?> aVar : andSet) {
                aVar.getClass();
                ip2.a(aVar);
            }
            return true;
        }

        public final void d() {
            if (getAndIncrement() == 0) {
                e();
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            Throwable thB;
            if (this.i) {
                return;
            }
            this.i = true;
            if (!b() || (thB = k13.b(this.h)) == null || thB == k13.a) {
                return;
            }
            d97.b(thB);
        }

        /* JADX WARN: Code duplicated, block: B:112:0x011f A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:127:0x0102 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:86:0x00fb  */
        /* JADX WARN: Code duplicated, block: B:89:0x0101 A[PHI: r4
          0x0101: PHI (r4v6 int) = (r4v4 int), (r4v7 int) binds: [B:76:0x00e0, B:88:0x00ff] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Multi-variable type inference failed */
        public final void e() {
            int size;
            boolean z;
            ls5<? super U> ls5Var = this.b;
            int iAddAndGet = 1;
            while (!a()) {
                hz7<U> hz7Var = this.f;
                int i = 0;
                if (hz7Var != null) {
                    while (!a()) {
                        U uPoll = hz7Var.poll();
                        if (uPoll != null) {
                            ls5Var.onNext(uPoll);
                            i++;
                        }
                    }
                    return;
                }
                if (i == 0) {
                    boolean z2 = this.g;
                    hz7<U> hz7Var2 = this.f;
                    a<?, ?>[] aVarArr = this.j.get();
                    int length = aVarArr.length;
                    if (this.d != Integer.MAX_VALUE) {
                        synchronized (this) {
                            size = this.o.size();
                        }
                    } else {
                        size = 0;
                    }
                    if (z2 && ((hz7Var2 == null || hz7Var2.isEmpty()) && length == 0 && size == 0)) {
                        Throwable thB = k13.b(this.h);
                        if (thB != k13.a) {
                            if (thB == null) {
                                ls5Var.onComplete();
                                return;
                            } else {
                                ls5Var.onError(thB);
                                return;
                            }
                        }
                        return;
                    }
                    if (length != 0) {
                        long j = this.m;
                        int i2 = this.n;
                        if (length <= i2 || aVarArr[i2].b != j) {
                            if (length <= i2) {
                                i2 = 0;
                            }
                            for (int i3 = 0; i3 < length && aVarArr[i2].b != j; i3++) {
                                i2++;
                                if (i2 == length) {
                                    i2 = 0;
                                }
                            }
                            this.n = i2;
                            this.m = aVarArr[i2].b;
                        }
                        for (int i4 = 0; i4 < length; i4++) {
                            if (a()) {
                                return;
                            }
                            a<T, U> aVar = aVarArr[i2];
                            iz7<U> iz7Var = aVar.e;
                            if (iz7Var != null) {
                                do {
                                    try {
                                        U uPoll2 = iz7Var.poll();
                                        if (uPoll2 == null) {
                                            z = aVar.d;
                                            iz7<U> iz7Var2 = aVar.e;
                                            if (z && (iz7Var2 == null || iz7Var2.isEmpty())) {
                                                f(aVar);
                                                if (a()) {
                                                    return;
                                                } else {
                                                    i++;
                                                }
                                            }
                                            i2++;
                                            if (i2 == length) {
                                                i2 = 0;
                                            }
                                        } else {
                                            ls5Var.onNext(uPoll2);
                                        }
                                    } catch (Throwable th) {
                                        m13.d(th);
                                        ip2.a(aVar);
                                        k13.a(this.h, th);
                                        if (a()) {
                                            return;
                                        }
                                        f(aVar);
                                        i++;
                                        i2++;
                                        if (i2 == length) {
                                        }
                                    }
                                } while (!a());
                                return;
                            }
                            z = aVar.d;
                            iz7<U> iz7Var3 = aVar.e;
                            if (z) {
                                f(aVar);
                                if (a()) {
                                    return;
                                } else {
                                    i++;
                                }
                            }
                            i2++;
                            if (i2 == length) {
                                i2 = 0;
                            }
                        }
                        this.n = i2;
                        this.m = aVarArr[i2].b;
                    }
                    if (i == 0) {
                        iAddAndGet = addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    } else if (this.d != Integer.MAX_VALUE) {
                        i(i);
                    }
                } else if (this.d != Integer.MAX_VALUE) {
                    i(i);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void f(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            while (true) {
                AtomicReference<a<?, ?>[]> atomicReference = this.j;
                a<?, ?>[] aVarArr2 = atomicReference.get();
                int length = aVarArr2.length;
                if (length == 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    } else if (aVarArr2[i] == aVar) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    aVarArr = q;
                } else {
                    a<?, ?>[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr2, 0, aVarArr3, 0, i);
                    System.arraycopy(aVarArr2, i + 1, aVarArr3, i, (length - i) - 1);
                    aVarArr = aVarArr3;
                }
                while (!atomicReference.compareAndSet(aVarArr2, aVarArr)) {
                    if (atomicReference.get() != aVarArr2) {
                    }
                }
                return;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v21 */
        /* JADX WARN: Type inference failed for: r3v22 */
        /* JADX WARN: Type inference failed for: r3v7, types: [iz7] */
        public final void g(wr5<? extends U> wr5Var) {
            boolean z;
            do {
                z = false;
                if (wr5Var instanceof Callable) {
                    try {
                        Object objCall = ((Callable) wr5Var).call();
                        if (objCall != null) {
                            if (get() == 0 && compareAndSet(0, 1)) {
                                this.b.onNext(objCall);
                                if (decrementAndGet() != 0) {
                                    e();
                                }
                            } else {
                                hz7<U> hz7Var = this.f;
                                ?? r3 = hz7Var;
                                if (hz7Var == false) {
                                    hz7<U> n68Var = this.d == Integer.MAX_VALUE ? new n68(this.e) : new m68(this.d);
                                    this.f = n68Var;
                                    r3 = n68Var;
                                }
                                if (r3.offer(objCall)) {
                                    if (getAndIncrement() != 0) {
                                        return;
                                    }
                                    e();
                                } else {
                                    onError(new IllegalStateException("Scalar queue full?!"));
                                }
                            }
                        }
                    } catch (Throwable th) {
                        m13.d(th);
                        k13.a(this.h, th);
                        d();
                    }
                    if (this.d == Integer.MAX_VALUE) {
                        return;
                    }
                    synchronized (this) {
                        try {
                            wr5Var = (wr5) this.o.poll();
                            if (wr5Var == null) {
                                this.p--;
                                z = true;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } else {
                    long j = this.l;
                    this.l = 1 + j;
                    a<?, ?> aVar = new a<>(this, j);
                    AtomicReference<a<?, ?>[]> atomicReference = this.j;
                    while (true) {
                        a<?, ?>[] aVarArr = atomicReference.get();
                        if (aVarArr == r) {
                            ip2.a(aVar);
                            return;
                        }
                        int length = aVarArr.length;
                        a<?, ?>[] aVarArr2 = new a[length + 1];
                        System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                        aVarArr2[length] = aVar;
                        do {
                            if (atomicReference.compareAndSet(aVarArr, aVarArr2)) {
                                wr5Var.a(aVar);
                                return;
                            }
                        } while (atomicReference.get() == aVarArr);
                    }
                }
            } while (!z);
            d();
        }

        public final void i(int i) {
            while (true) {
                int i2 = i - 1;
                if (i == 0) {
                    return;
                }
                synchronized (this) {
                    try {
                        wr5<? extends U> wr5Var = (wr5) this.o.poll();
                        if (wr5Var == null) {
                            this.p--;
                        } else {
                            g(wr5Var);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                i = i2;
            }
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.i;
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (this.g) {
                return;
            }
            this.g = true;
            d();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            if (this.g) {
                d97.b(th);
            } else if (!k13.a(this.h, th)) {
                d97.b(th);
            } else {
                this.g = true;
                d();
            }
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            if (this.g) {
                return;
            }
            try {
                wr5<? extends U> wr5VarApply = this.c.apply(t);
                nq5.a(wr5VarApply, "The mapper returned a null ObservableSource");
                wr5<? extends U> wr5Var = wr5VarApply;
                if (this.d != Integer.MAX_VALUE) {
                    synchronized (this) {
                        try {
                            int i = this.p;
                            if (i == this.d) {
                                this.o.offer(wr5Var);
                                return;
                            }
                            this.p = i + 1;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                g(wr5Var);
            } catch (Throwable th2) {
                m13.d(th2);
                this.k.dispose();
                onError(th2);
            }
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.k, cp2Var)) {
                this.k = cp2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public fr5(tq5 tq5Var, xl3 xl3Var, int i) {
        super(tq5Var);
        this.c = xl3Var;
        this.d = Integer.MAX_VALUE;
        this.e = i;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super U> ls5Var) {
        wr5<T> wr5Var = this.b;
        xl3<? super T, ? extends wr5<? extends U>> xl3Var = this.c;
        if (tr5.a(wr5Var, ls5Var, xl3Var)) {
            return;
        }
        wr5Var.a(new b(ls5Var, xl3Var, this.d, this.e));
    }
}
