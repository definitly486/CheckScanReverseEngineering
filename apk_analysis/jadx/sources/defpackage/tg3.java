package defpackage;

import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class tg3<T, U> extends k0<T, U> {
    public final rm3.i d;
    public final int e;
    public final int f;

    public static final class a<T, U> extends AtomicReference<bc8> implements rh3<U>, cp2 {
        public final long b;
        public final b<T, U> c;
        public final int d;
        public final int e;
        public volatile boolean f;
        public volatile iz7<U> g;
        public long h;
        public int i;

        public a(b<T, U> bVar, long j) {
            this.b = j;
            this.c = bVar;
            int i = bVar.f;
            this.e = i;
            this.d = i >> 2;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.d(this, bc8Var)) {
                if (bc8Var instanceof mw6) {
                    mw6 mw6Var = (mw6) bc8Var;
                    int iD = mw6Var.d(7);
                    if (iD == 1) {
                        this.i = iD;
                        this.g = mw6Var;
                        this.f = true;
                        this.c.d();
                        return;
                    }
                    if (iD == 2) {
                        this.i = iD;
                        this.g = mw6Var;
                    }
                }
                bc8Var.request(this.e);
            }
        }

        public final void b(long j) {
            if (this.i != 1) {
                long j2 = this.h + j;
                if (j2 < this.d) {
                    this.h = j2;
                } else {
                    this.h = 0L;
                    get().request(j2);
                }
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            hc8.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return get() == hc8.CANCELLED;
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            this.f = true;
            this.c.d();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            lazySet(hc8.CANCELLED);
            b<T, U> bVar = this.c;
            if (!k13.a(bVar.i, th)) {
                d97.b(th);
                return;
            }
            this.f = true;
            if (!bVar.d) {
                bVar.m.cancel();
                for (a<?, ?> aVar : bVar.k.getAndSet(b.t)) {
                    aVar.getClass();
                    hc8.a(aVar);
                }
            }
            bVar.d();
        }

        @Override // defpackage.wb8
        public final void onNext(U u) {
            int i = this.i;
            b<T, U> bVar = this.c;
            if (i == 2) {
                bVar.d();
                return;
            }
            if (bVar.get() == 0 && bVar.compareAndSet(0, 1)) {
                long j = bVar.l.get();
                iz7 m68Var = this.g;
                if (j == 0 || !(m68Var == null || m68Var.isEmpty())) {
                    if (m68Var == null && (m68Var = this.g) == null) {
                        m68Var = new m68(bVar.f);
                        this.g = m68Var;
                    }
                    if (!m68Var.offer(u)) {
                        bVar.onError(new MissingBackpressureException("Inner queue full?!"));
                        return;
                    }
                } else {
                    bVar.b.onNext(u);
                    if (j != Long.MAX_VALUE) {
                        bVar.l.decrementAndGet();
                    }
                    b(1L);
                }
                if (bVar.decrementAndGet() == 0) {
                    return;
                }
            } else {
                iz7 m68Var2 = this.g;
                if (m68Var2 == null) {
                    m68Var2 = new m68(bVar.f);
                    this.g = m68Var2;
                }
                if (!m68Var2.offer(u)) {
                    bVar.onError(new MissingBackpressureException("Inner queue full?!"));
                    return;
                } else if (bVar.getAndIncrement() != 0) {
                    return;
                }
            }
            bVar.f();
        }
    }

    public static final class b<T, U> extends AtomicInteger implements rh3<T>, bc8 {
        public static final a<?, ?>[] s = new a[0];
        public static final a<?, ?>[] t = new a[0];
        public final wb8<? super U> b;
        public final xl3<? super T, ? extends dt6<? extends U>> c;
        public final boolean d;
        public final int e;
        public final int f;
        public volatile hz7<U> g;
        public volatile boolean h;
        public final pt i = new pt();
        public volatile boolean j;
        public final AtomicReference<a<?, ?>[]> k;
        public final AtomicLong l;
        public bc8 m;
        public long n;
        public long o;
        public int p;
        public int q;
        public final int r;

        public b(wb8<? super U> wb8Var, xl3<? super T, ? extends dt6<? extends U>> xl3Var, boolean z, int i, int i2) {
            AtomicReference<a<?, ?>[]> atomicReference = new AtomicReference<>();
            this.k = atomicReference;
            this.l = new AtomicLong();
            this.b = wb8Var;
            this.c = xl3Var;
            this.d = z;
            this.e = i;
            this.f = i2;
            this.r = Math.max(1, i >> 1);
            atomicReference.lazySet(s);
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.m, bc8Var)) {
                this.m = bc8Var;
                this.b.a(this);
                if (this.j) {
                    return;
                }
                int i = this.e;
                if (i == Integer.MAX_VALUE) {
                    bc8Var.request(Long.MAX_VALUE);
                } else {
                    bc8Var.request(i);
                }
            }
        }

        public final boolean b() {
            if (this.j) {
                hz7<U> hz7Var = this.g;
                if (hz7Var != null) {
                    hz7Var.clear();
                    return true;
                }
            } else {
                if (this.d || this.i.get() == null) {
                    return false;
                }
                hz7<U> hz7Var2 = this.g;
                if (hz7Var2 != null) {
                    hz7Var2.clear();
                }
                Throwable thB = k13.b(this.i);
                if (thB != k13.a) {
                    this.b.onError(thB);
                }
            }
            return true;
        }

        @Override // defpackage.bc8
        public final void cancel() {
            hz7<U> hz7Var;
            a<?, ?>[] andSet;
            if (this.j) {
                return;
            }
            this.j = true;
            this.m.cancel();
            AtomicReference<a<?, ?>[]> atomicReference = this.k;
            a<?, ?>[] aVarArr = atomicReference.get();
            a<?, ?>[] aVarArr2 = t;
            if (aVarArr != aVarArr2 && (andSet = atomicReference.getAndSet(aVarArr2)) != aVarArr2) {
                for (a<?, ?> aVar : andSet) {
                    aVar.getClass();
                    hc8.a(aVar);
                }
                Throwable thB = k13.b(this.i);
                if (thB != null && thB != k13.a) {
                    d97.b(thB);
                }
            }
            if (getAndIncrement() != 0 || (hz7Var = this.g) == null) {
                return;
            }
            hz7Var.clear();
        }

        public final void d() {
            if (getAndIncrement() == 0) {
                f();
            }
        }

        /* JADX WARN: Code duplicated, block: B:100:0x0153  */
        /* JADX WARN: Code duplicated, block: B:114:0x0177  */
        /* JADX WARN: Code duplicated, block: B:118:0x0181  */
        /* JADX WARN: Code duplicated, block: B:120:0x0185  */
        /* JADX WARN: Code duplicated, block: B:136:0x00fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:141:0x01b8 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:143:0x01b8 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:145:0x01b8 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:155:0x018d A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:156:0x017f A[EDGE_INSN: B:156:0x017f->B:117:0x017f BREAK  A[LOOP:3: B:65:0x00d9->B:121:0x0186], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:159:0x0186 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:162:0x00f2 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:163:0x013a A[EDGE_INSN: B:163:0x013a->B:94:0x013a BREAK  A[LOOP:5: B:77:0x00f9->B:85:0x010f], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:66:0x00db  */
        /* JADX WARN: Code duplicated, block: B:69:0x00e3  */
        /* JADX WARN: Code duplicated, block: B:73:0x00ee  */
        /* JADX WARN: Code duplicated, block: B:76:0x00f7  */
        /* JADX WARN: Code duplicated, block: B:82:0x0104  */
        /* JADX WARN: Code duplicated, block: B:85:0x010f A[LOOP:5: B:77:0x00f9->B:85:0x010f, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:96:0x013e A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:97:0x0140  */
        /* JADX WARN: Code duplicated, block: B:98:0x0149  */
        /* JADX WARN: Multi-variable type inference failed */
        public final void f() {
            boolean z;
            long j;
            long j2;
            boolean z2;
            long j3;
            int i;
            boolean z3;
            int i2;
            a<T, U> aVar;
            U uPoll;
            iz7<U> iz7Var;
            boolean z4;
            Object obj;
            wb8<? super U> wb8Var = this.b;
            int iAddAndGet = 1;
            while (!b()) {
                hz7<U> hz7Var = this.g;
                long jAddAndGet = this.l.get();
                boolean z5 = jAddAndGet == Long.MAX_VALUE;
                long j4 = 0;
                if (hz7Var != null) {
                    j = 0;
                    do {
                        long j5 = 0;
                        obj = null;
                        while (true) {
                            if (jAddAndGet == 0) {
                                z = true;
                                break;
                            }
                            z = true;
                            U uPoll2 = hz7Var.poll();
                            if (b()) {
                                return;
                            }
                            if (uPoll2 == null) {
                                obj = uPoll2;
                                break;
                            }
                            wb8Var.onNext(uPoll2);
                            j++;
                            j5++;
                            jAddAndGet--;
                            obj = uPoll2;
                        }
                        if (j5 != 0) {
                            jAddAndGet = z5 ? Long.MAX_VALUE : this.l.addAndGet(-j5);
                        }
                        if (jAddAndGet == 0) {
                            break;
                        }
                    } while (obj != null);
                } else {
                    z = true;
                    j = 0;
                }
                boolean z6 = this.h;
                hz7<U> hz7Var2 = this.g;
                a<?, ?>[] aVarArr = this.k.get();
                int length = aVarArr.length;
                if (z6 && ((hz7Var2 == null || hz7Var2.isEmpty()) && length == 0)) {
                    Throwable thB = k13.b(this.i);
                    if (thB != k13.a) {
                        if (thB == null) {
                            wb8Var.onComplete();
                            return;
                        } else {
                            wb8Var.onError(thB);
                            return;
                        }
                    }
                    return;
                }
                if (length != 0) {
                    long j6 = this.o;
                    int i3 = this.p;
                    if (length > i3) {
                        j3 = 1;
                        if (aVarArr[i3].b != j6) {
                        }
                        i = i3;
                        z3 = false;
                        i2 = 0;
                        while (true) {
                            if (i2 < length) {
                                aVarArr = aVarArr;
                                j2 = j4;
                                break;
                            }
                            if (b()) {
                                return;
                            }
                            aVar = aVarArr[i];
                            uPoll = null;
                            while (!b()) {
                                iz7Var = aVar.g;
                                if (iz7Var == null) {
                                    aVarArr = aVarArr;
                                    j2 = j4;
                                } else {
                                    j2 = j4;
                                    while (jAddAndGet != j2) {
                                        try {
                                            uPoll = iz7Var.poll();
                                            if (uPoll == null) {
                                                break;
                                            }
                                            wb8Var.onNext(uPoll);
                                            if (b()) {
                                                return;
                                            }
                                            jAddAndGet -= j3;
                                            j4 += j3;
                                        } catch (Throwable th) {
                                            m13.d(th);
                                            hc8.a(aVar);
                                            k13.a(this.i, th);
                                            if (!this.d) {
                                                this.m.cancel();
                                            }
                                            if (b()) {
                                                return;
                                            }
                                            i(aVar);
                                            i2++;
                                            aVarArr = aVarArr;
                                            z3 = z;
                                        }
                                    }
                                    if (j4 != j2) {
                                        if (z5) {
                                            jAddAndGet = Long.MAX_VALUE;
                                        } else {
                                            jAddAndGet = this.l.addAndGet(-j4);
                                        }
                                        aVar.b(j4);
                                    } else {
                                        aVarArr = aVarArr;
                                    }
                                    if (jAddAndGet == j2 && uPoll != null) {
                                        aVarArr = aVarArr;
                                        j4 = j2;
                                    }
                                }
                                z4 = aVar.f;
                                iz7<U> iz7Var2 = aVar.g;
                                if (z4 && (iz7Var2 == null || iz7Var2.isEmpty())) {
                                    i(aVar);
                                    if (b()) {
                                        return;
                                    }
                                    j += j3;
                                    z3 = z;
                                }
                                if (jAddAndGet == j2) {
                                    break;
                                }
                                i++;
                                if (i == length) {
                                    i = 0;
                                }
                                i2++;
                                aVarArr = aVarArr;
                                j4 = j2;
                            }
                            return;
                        }
                        z2 = z3;
                        this.p = i;
                        this.o = aVarArr[i].b;
                    } else {
                        j3 = 1;
                    }
                    if (length <= i3) {
                        i3 = 0;
                    }
                    for (int i4 = 0; i4 < length && aVarArr[i3].b != j6; i4++) {
                        i3++;
                        if (i3 == length) {
                            i3 = 0;
                        }
                    }
                    this.p = i3;
                    this.o = aVarArr[i3].b;
                    i = i3;
                    z3 = false;
                    i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            aVarArr = aVarArr;
                            j2 = j4;
                            break;
                        }
                        if (b()) {
                            return;
                        }
                        aVar = aVarArr[i];
                        uPoll = null;
                        while (!b()) {
                            iz7Var = aVar.g;
                            if (iz7Var == null) {
                                aVarArr = aVarArr;
                                j2 = j4;
                            } else {
                                j2 = j4;
                                while (jAddAndGet != j2) {
                                    uPoll = iz7Var.poll();
                                    if (uPoll == null) {
                                        break;
                                        break;
                                    }
                                    wb8Var.onNext(uPoll);
                                    if (b()) {
                                        return;
                                    }
                                    jAddAndGet -= j3;
                                    j4 += j3;
                                }
                                if (j4 != j2) {
                                    if (z5) {
                                        jAddAndGet = this.l.addAndGet(-j4);
                                    } else {
                                        jAddAndGet = Long.MAX_VALUE;
                                    }
                                    aVar.b(j4);
                                } else {
                                    aVarArr = aVarArr;
                                }
                                if (jAddAndGet == j2) {
                                }
                            }
                            z4 = aVar.f;
                            iz7<U> iz7Var3 = aVar.g;
                            if (z4) {
                                i(aVar);
                                if (b()) {
                                    return;
                                }
                                j += j3;
                                z3 = z;
                            }
                            if (jAddAndGet == j2) {
                                break;
                                break;
                            }
                            i++;
                            if (i == length) {
                                i = 0;
                            }
                            i2++;
                            aVarArr = aVarArr;
                            j4 = j2;
                        }
                        return;
                    }
                    z2 = z3;
                    this.p = i;
                    this.o = aVarArr[i].b;
                } else {
                    j2 = 0;
                    z2 = false;
                }
                long j7 = j;
                if (j7 != j2 && !this.j) {
                    this.m.request(j7);
                }
                if (!z2 && (iAddAndGet = addAndGet(-iAddAndGet)) == 0) {
                    return;
                }
            }
        }

        public final hz7 g() {
            hz7<U> n68Var = this.g;
            if (n68Var == null) {
                n68Var = this.e == Integer.MAX_VALUE ? new n68<>(this.f) : new m68<>(this.e);
                this.g = n68Var;
            }
            return n68Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void i(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            while (true) {
                AtomicReference<a<?, ?>[]> atomicReference = this.k;
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
                    aVarArr = s;
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

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.h) {
                return;
            }
            this.h = true;
            d();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.h) {
                d97.b(th);
                return;
            }
            if (!k13.a(this.i, th)) {
                d97.b(th);
                return;
            }
            this.h = true;
            if (!this.d) {
                for (a<?, ?> aVar : this.k.getAndSet(t)) {
                    aVar.getClass();
                    hc8.a(aVar);
                }
            }
            d();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.wb8
        public final void onNext(T t2) {
            if (this.h) {
                return;
            }
            try {
                dt6<? extends U> dt6VarApply = this.c.apply(t2);
                nq5.a(dt6VarApply, "The mapper returned a null Publisher");
                dt6<? extends U> dt6Var = dt6VarApply;
                if (dt6Var instanceof Callable) {
                    try {
                        Object objCall = ((Callable) dt6Var).call();
                        if (objCall == null) {
                            if (this.e == Integer.MAX_VALUE || this.j) {
                                return;
                            }
                            int i = this.q + 1;
                            this.q = i;
                            int i2 = this.r;
                            if (i == i2) {
                                this.q = 0;
                                this.m.request(i2);
                                return;
                            }
                            return;
                        }
                        if (get() == 0 && compareAndSet(0, 1)) {
                            long j = this.l.get();
                            hz7<U> hz7Var = this.g;
                            if (j == 0 || !(hz7Var == 0 || hz7Var.isEmpty())) {
                                if (hz7Var == 0) {
                                    hz7Var = (hz7<U>) g();
                                }
                                if (!hz7Var.offer(objCall)) {
                                    onError(new IllegalStateException("Scalar queue full?!"));
                                    return;
                                }
                            } else {
                                this.b.onNext(objCall);
                                if (j != Long.MAX_VALUE) {
                                    this.l.decrementAndGet();
                                }
                                if (this.e != Integer.MAX_VALUE && !this.j) {
                                    int i3 = this.q + 1;
                                    this.q = i3;
                                    int i4 = this.r;
                                    if (i3 == i4) {
                                        this.q = 0;
                                        this.m.request(i4);
                                    }
                                }
                            }
                            if (decrementAndGet() == 0) {
                                return;
                            }
                        } else if (!g().offer(objCall)) {
                            onError(new IllegalStateException("Scalar queue full?!"));
                            return;
                        } else if (getAndIncrement() != 0) {
                            return;
                        }
                        f();
                        return;
                    } catch (Throwable th) {
                        m13.d(th);
                        k13.a(this.i, th);
                        d();
                        return;
                    }
                }
                long j2 = this.n;
                this.n = 1 + j2;
                a<?, ?> aVar = new a<>(this, j2);
                AtomicReference<a<?, ?>[]> atomicReference = this.k;
                while (true) {
                    a<?, ?>[] aVarArr = atomicReference.get();
                    if (aVarArr == t) {
                        hc8.a(aVar);
                        return;
                    }
                    int length = aVarArr.length;
                    a<?, ?>[] aVarArr2 = new a[length + 1];
                    System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                    aVarArr2[length] = aVar;
                    do {
                        if (atomicReference.compareAndSet(aVarArr, aVarArr2)) {
                            dt6Var.a(aVar);
                            return;
                        }
                    } while (atomicReference.get() == aVarArr);
                }
            } catch (Throwable th2) {
                m13.d(th2);
                this.m.cancel();
                onError(th2);
            }
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j)) {
                m00.c(this.l, j);
                d();
            }
        }
    }

    public tg3(xg3 xg3Var, int i) {
        super(xg3Var);
        this.d = rm3.a;
        this.e = 3;
        this.f = i;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super U> wb8Var) {
        rm3.i iVar = this.d;
        gg3<T> gg3Var = this.c;
        if (nh3.a(gg3Var, wb8Var, iVar)) {
            return;
        }
        gg3Var.f(new b(wb8Var, this.d, false, this.e, this.f));
    }
}
