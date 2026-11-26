package defpackage;

import io.reactivex.exceptions.MissingBackpressureException;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class kh3<T> extends kw1<T> {
    public final gg3<T> c;
    public final AtomicReference<c<T>> d;
    public final int e;
    public final a f;

    public static final class a<T> implements dt6<T> {
        public final AtomicReference<c<T>> b;
        public final int c;

        public a(AtomicReference<c<T>> atomicReference, int i) {
            this.b = atomicReference;
            this.c = i;
        }

        @Override // defpackage.dt6
        public final void a(wb8<? super T> wb8Var) {
            c<T> cVar;
            b<T> bVar = new b<>(wb8Var);
            wb8Var.a(bVar);
            loop0: while (true) {
                c<T> cVar2 = this.b.get();
                if (cVar2 == null || cVar2.isDisposed()) {
                    c<T> cVar3 = new c<>(this.b, this.c);
                    AtomicReference<c<T>> atomicReference = this.b;
                    while (true) {
                        if (atomicReference.compareAndSet(cVar2, cVar3)) {
                            cVar = cVar3;
                        } else if (atomicReference.get() != cVar2) {
                        }
                    }
                } else {
                    cVar = cVar2;
                }
                AtomicReference<b<T>[]> atomicReference2 = cVar.d;
                while (true) {
                    b<T>[] bVarArr = atomicReference2.get();
                    if (bVarArr == c.k) {
                        break;
                    }
                    int length = bVarArr.length;
                    b<T>[] bVarArr2 = new b[length + 1];
                    System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                    bVarArr2[length] = bVar;
                    do {
                        if (atomicReference2.compareAndSet(bVarArr, bVarArr2)) {
                            break loop0;
                        }
                    } while (atomicReference2.get() == bVarArr);
                }
            }
            if (bVar.get() == Long.MIN_VALUE) {
                cVar.f(bVar);
            } else {
                bVar.c = cVar;
            }
            cVar.d();
        }
    }

    public static final class b<T> extends AtomicLong implements bc8 {
        public final wb8<? super T> b;
        public volatile c<T> c;
        public long d;

        public b(wb8<? super T> wb8Var) {
            this.b = wb8Var;
        }

        @Override // defpackage.bc8
        public final void cancel() {
            c<T> cVar;
            if (get() == Long.MIN_VALUE || getAndSet(Long.MIN_VALUE) == Long.MIN_VALUE || (cVar = this.c) == null) {
                return;
            }
            cVar.f(this);
            cVar.d();
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            long j2;
            if (hc8.e(j)) {
                do {
                    j2 = get();
                    if (j2 == Long.MIN_VALUE || j2 == Long.MAX_VALUE) {
                        break;
                    }
                } while (!compareAndSet(j2, m00.d(j2, j)));
                c<T> cVar = this.c;
                if (cVar != null) {
                    cVar.d();
                }
            }
        }
    }

    public static final class c<T> extends AtomicInteger implements rh3<T>, cp2 {
        public static final b[] j = new b[0];
        public static final b[] k = new b[0];
        public final AtomicReference<c<T>> b;
        public final int c;
        public volatile Serializable g;
        public int h;
        public volatile iz7<T> i;
        public final AtomicReference<bc8> f = new AtomicReference<>();
        public final AtomicReference<b<T>[]> d = new AtomicReference<>(j);
        public final AtomicBoolean e = new AtomicBoolean();

        public c(AtomicReference<c<T>> atomicReference, int i) {
            this.b = atomicReference;
            this.c = i;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.d(this.f, bc8Var)) {
                if (bc8Var instanceof mw6) {
                    mw6 mw6Var = (mw6) bc8Var;
                    int iD = mw6Var.d(7);
                    if (iD == 1) {
                        this.h = iD;
                        this.i = mw6Var;
                        this.g = xo5.COMPLETE;
                        d();
                        return;
                    }
                    if (iD == 2) {
                        this.h = iD;
                        this.i = mw6Var;
                        bc8Var.request(this.c);
                        return;
                    }
                }
                this.i = new m68(this.c);
                bc8Var.request(this.c);
            }
        }

        public final boolean b(Object obj, boolean z) {
            int i = 0;
            if (obj != null) {
                xo5 xo5Var = xo5.COMPLETE;
                b<T>[] bVarArr = k;
                AtomicReference<b<T>[]> atomicReference = this.d;
                AtomicReference<c<T>> atomicReference2 = this.b;
                if (obj != xo5Var) {
                    Throwable th = ((xo5.b) obj).b;
                    while (!atomicReference2.compareAndSet(this, null) && atomicReference2.get() == this) {
                    }
                    b<T>[] andSet = atomicReference.getAndSet(bVarArr);
                    if (andSet.length == 0) {
                        d97.b(th);
                        return true;
                    }
                    int length = andSet.length;
                    while (i < length) {
                        andSet[i].b.onError(th);
                        i++;
                    }
                } else if (z) {
                    while (!atomicReference2.compareAndSet(this, null) && atomicReference2.get() == this) {
                    }
                    b<T>[] andSet2 = atomicReference.getAndSet(bVarArr);
                    int length2 = andSet2.length;
                    while (i < length2) {
                        andSet2[i].b.onComplete();
                        i++;
                    }
                }
                return true;
            }
            return false;
        }

        public final void d() {
            boolean z;
            T tPoll;
            b<T>[] bVarArr;
            T tPoll2;
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<b<T>[]> atomicReference = this.d;
            boolean z2 = true;
            b<T>[] bVarArr2 = atomicReference.get();
            int iAddAndGet = 1;
            while (true) {
                Serializable serializable = this.g;
                iz7<T> iz7Var = this.i;
                boolean z3 = (iz7Var == null || iz7Var.isEmpty()) ? z2 : false;
                if (b(serializable, z3)) {
                    return;
                }
                if (z3) {
                    z = z2;
                } else {
                    int length = bVarArr2.length;
                    int i = 0;
                    long jMin = Long.MAX_VALUE;
                    for (b<T> bVar : bVarArr2) {
                        long j2 = bVar.get();
                        if (j2 != Long.MIN_VALUE) {
                            jMin = Math.min(jMin, j2 - bVar.d);
                        } else {
                            i++;
                        }
                    }
                    long j3 = 1;
                    if (length == i) {
                        Serializable serializable2 = this.g;
                        try {
                            tPoll = iz7Var.poll();
                        } catch (Throwable th) {
                            m13.d(th);
                            this.f.get().cancel();
                            xo5.b bVar2 = new xo5.b(th);
                            this.g = bVar2;
                            serializable2 = bVar2;
                            tPoll = null;
                        }
                        if (b(serializable2, tPoll == null ? z2 : false)) {
                            return;
                        }
                        if (this.h != z2) {
                            this.f.get().request(1L);
                        }
                        z = z2;
                        bVarArr = bVarArr2;
                    } else {
                        int i2 = 0;
                        while (true) {
                            long j4 = i2;
                            if (j4 < jMin) {
                                Serializable serializable3 = this.g;
                                try {
                                    tPoll2 = iz7Var.poll();
                                } catch (Throwable th2) {
                                    m13.d(th2);
                                    this.f.get().cancel();
                                    xo5.b bVar3 = new xo5.b(th2);
                                    this.g = bVar3;
                                    serializable3 = bVar3;
                                    tPoll2 = null;
                                }
                                boolean z4 = tPoll2 == null ? z2 : false;
                                if (b(serializable3, z4)) {
                                    return;
                                }
                                if (z4) {
                                    z3 = z4;
                                } else {
                                    int length2 = bVarArr2.length;
                                    int i3 = 0;
                                    boolean z5 = false;
                                    while (i3 < length2) {
                                        long j5 = j3;
                                        b<T> bVar4 = bVarArr2[i3];
                                        long j6 = bVar4.get();
                                        if (j6 != Long.MIN_VALUE) {
                                            if (j6 != Long.MAX_VALUE) {
                                                bVar4.d += j5;
                                            }
                                            bVar4.b.onNext(tPoll2);
                                        } else {
                                            z5 = true;
                                        }
                                        i3++;
                                        bVarArr2 = bVarArr2;
                                        j3 = j5;
                                    }
                                    b<T>[] bVarArr3 = bVarArr2;
                                    long j7 = j3;
                                    i2++;
                                    b<T>[] bVarArr4 = atomicReference.get();
                                    if (z5 || bVarArr4 != bVarArr3) {
                                        if (i2 != 0 && this.h != 1) {
                                            this.f.get().request(i2);
                                        }
                                        bVarArr2 = bVarArr4;
                                        z2 = true;
                                    } else {
                                        bVarArr2 = bVarArr3;
                                        z3 = z4;
                                        j3 = j7;
                                        z2 = true;
                                    }
                                }
                            }
                            bVarArr = bVarArr2;
                            if (i2 != 0) {
                                z = true;
                                if (this.h != 1) {
                                    this.f.get().request(j4);
                                }
                            } else {
                                z = true;
                            }
                            if (jMin == 0 || z3) {
                            }
                            z2 = z;
                        }
                    }
                    bVarArr2 = bVarArr;
                    z2 = z;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
                bVarArr2 = atomicReference.get();
                z2 = z;
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            AtomicReference<c<T>> atomicReference;
            AtomicReference<b<T>[]> atomicReference2 = this.d;
            b<T>[] bVarArr = atomicReference2.get();
            b<T>[] bVarArr2 = k;
            if (bVarArr == bVarArr2 || atomicReference2.getAndSet(bVarArr2) == bVarArr2) {
                return;
            }
            do {
                atomicReference = this.b;
                if (atomicReference.compareAndSet(this, null)) {
                    break;
                }
            } while (atomicReference.get() == this);
            hc8.a(this.f);
        }

        public final void f(b<T> bVar) {
            b<T>[] bVarArr;
            while (true) {
                AtomicReference<b<T>[]> atomicReference = this.d;
                b<T>[] bVarArr2 = atomicReference.get();
                int length = bVarArr2.length;
                if (length == 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    } else if (bVarArr2[i].equals(bVar)) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    bVarArr = j;
                } else {
                    b<T>[] bVarArr3 = new b[length - 1];
                    System.arraycopy(bVarArr2, 0, bVarArr3, 0, i);
                    System.arraycopy(bVarArr2, i + 1, bVarArr3, i, (length - i) - 1);
                    bVarArr = bVarArr3;
                }
                while (!atomicReference.compareAndSet(bVarArr2, bVarArr)) {
                    if (atomicReference.get() != bVarArr2) {
                    }
                }
                return;
            }
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d.get() == k;
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.g == null) {
                this.g = xo5.COMPLETE;
                d();
            }
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.g != null) {
                d97.b(th);
            } else {
                this.g = new xo5.b(th);
                d();
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.h != 0 || this.i.offer(t)) {
                d();
            } else {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            }
        }
    }

    public kh3(a aVar, gg3 gg3Var, AtomicReference atomicReference, int i) {
        this.f = aVar;
        this.c = gg3Var;
        this.d = atomicReference;
        this.e = i;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.f.a(wb8Var);
    }

    @Override // defpackage.kw1
    public final void i(iw1 iw1Var) {
        c<T> cVar;
        loop0: while (true) {
            AtomicReference<c<T>> atomicReference = this.d;
            cVar = atomicReference.get();
            if (cVar != null && !cVar.isDisposed()) {
                break;
            }
            c<T> cVar2 = new c<>(atomicReference, this.e);
            do {
                if (atomicReference.compareAndSet(cVar, cVar2)) {
                    cVar = cVar2;
                    break loop0;
                }
            } while (atomicReference.get() == cVar);
        }
        AtomicBoolean atomicBoolean = cVar.e;
        boolean z = false;
        if (!atomicBoolean.get() && atomicBoolean.compareAndSet(false, true)) {
            z = true;
        }
        try {
            iw1Var.b = cVar;
            if (z) {
                this.c.f(cVar);
            }
        } catch (Throwable th) {
            m13.d(th);
            throw k13.d(th);
        }
    }
}
