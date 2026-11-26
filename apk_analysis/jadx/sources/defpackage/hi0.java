package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes5.dex */
public final class hi0<T> extends sb8<T> {
    public static final Object[] h = new Object[0];
    public static final a[] i = new a[0];
    public static final a[] j = new a[0];
    public final AtomicReference<Object> b;
    public final AtomicReference<a<T>[]> c;
    public final Lock d;
    public final Lock e;
    public final AtomicReference<Throwable> f;
    public long g;

    public static final class a<T> implements cp2, ze6 {
        public final ls5<? super T> b;
        public final hi0<T> c;
        public boolean d;
        public boolean e;
        public mq<Object> f;
        public boolean g;
        public volatile boolean h;
        public long i;

        public a(ls5<? super T> ls5Var, hi0<T> hi0Var) {
            this.b = ls5Var;
            this.c = hi0Var;
        }

        public final void a(Object obj, long j) {
            if (this.h) {
                return;
            }
            if (!this.g) {
                synchronized (this) {
                    try {
                        if (this.h) {
                            return;
                        }
                        if (this.i == j) {
                            return;
                        }
                        if (this.e) {
                            mq<Object> mqVar = this.f;
                            if (mqVar == null) {
                                mqVar = new mq<>();
                                this.f = mqVar;
                            }
                            mqVar.a(obj);
                            return;
                        }
                        this.d = true;
                        this.g = true;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            test(obj);
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (this.h) {
                return;
            }
            this.h = true;
            this.c.k(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.h;
        }

        @Override // defpackage.ze6
        public final boolean test(Object obj) {
            if (this.h) {
                return true;
            }
            ls5<? super T> ls5Var = this.b;
            if (obj == xo5.COMPLETE) {
                ls5Var.onComplete();
                return true;
            }
            if (obj instanceof xo5.b) {
                ls5Var.onError(((xo5.b) obj).b);
                return true;
            }
            ls5Var.onNext(obj);
            return false;
        }
    }

    public hi0() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.d = reentrantReadWriteLock.readLock();
        this.e = reentrantReadWriteLock.writeLock();
        this.c = new AtomicReference<>(i);
        this.b = new AtomicReference<>();
        this.f = new AtomicReference<>();
    }

    public static <T> hi0<T> i(T t) {
        hi0<T> hi0Var = new hi0<>();
        nq5.a(t, "defaultValue is null");
        hi0Var.b.lazySet(t);
        return hi0Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        mq<Object> mqVar;
        Object[] objArr;
        a<T> aVar = new a<>(ls5Var, this);
        ls5Var.onSubscribe(aVar);
        AtomicReference<a<T>[]> atomicReference = this.c;
        while (true) {
            a<T>[] aVarArr = atomicReference.get();
            if (aVarArr == j) {
                Throwable th = this.f.get();
                if (th == k13.a) {
                    ls5Var.onComplete();
                    return;
                } else {
                    ls5Var.onError(th);
                    return;
                }
            }
            int length = aVarArr.length;
            a<T>[] aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
            do {
                if (atomicReference.compareAndSet(aVarArr, aVarArr2)) {
                    if (aVar.h) {
                        k(aVar);
                        return;
                    }
                    if (aVar.h) {
                        return;
                    }
                    synchronized (aVar) {
                        try {
                            if (aVar.h) {
                                return;
                            }
                            if (aVar.d) {
                                return;
                            }
                            hi0<T> hi0Var = aVar.c;
                            Lock lock = hi0Var.d;
                            lock.lock();
                            aVar.i = hi0Var.g;
                            Object obj = hi0Var.b.get();
                            lock.unlock();
                            aVar.e = obj != null;
                            aVar.d = true;
                            if (obj == null || aVar.test(obj)) {
                                return;
                            }
                            while (!aVar.h) {
                                synchronized (aVar) {
                                    try {
                                        mqVar = aVar.f;
                                        if (mqVar == null) {
                                            aVar.e = false;
                                            return;
                                        }
                                        aVar.f = null;
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                                for (Object[] objArr2 = mqVar.a; objArr2 != null; objArr2 = objArr2[4]) {
                                    for (int i2 = 0; i2 < 4 && (objArr = objArr2[i2]) != null; i2++) {
                                        if (aVar.test(objArr)) {
                                            break;
                                        }
                                    }
                                }
                            }
                            return;
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
            } while (atomicReference.get() == aVarArr);
        }
    }

    public final T j() {
        T t = (T) this.b.get();
        if (t == xo5.COMPLETE || (t instanceof xo5.b)) {
            return null;
        }
        return t;
    }

    public final void k(a<T> aVar) {
        a<T>[] aVarArr;
        while (true) {
            AtomicReference<a<T>[]> atomicReference = this.c;
            a<T>[] aVarArr2 = atomicReference.get();
            int length = aVarArr2.length;
            if (length == 0) {
                return;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                } else if (aVarArr2[i2] == aVar) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 < 0) {
                return;
            }
            if (length == 1) {
                aVarArr = i;
            } else {
                a<T>[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr2, 0, aVarArr3, 0, i2);
                System.arraycopy(aVarArr2, i2 + 1, aVarArr3, i2, (length - i2) - 1);
                aVarArr = aVarArr3;
            }
            while (!atomicReference.compareAndSet(aVarArr2, aVarArr)) {
                if (atomicReference.get() != aVarArr2) {
                }
            }
            return;
        }
    }

    @Override // defpackage.ls5
    public final void onComplete() {
        AtomicReference<Throwable> atomicReference;
        k13.a aVar = k13.a;
        do {
            atomicReference = this.f;
            if (atomicReference.compareAndSet(null, aVar)) {
                xo5 xo5Var = xo5.COMPLETE;
                AtomicReference<a<T>[]> atomicReference2 = this.c;
                a<T>[] aVarArr = j;
                a<T>[] andSet = atomicReference2.getAndSet(aVarArr);
                if (andSet != aVarArr) {
                    Lock lock = this.e;
                    lock.lock();
                    this.g++;
                    this.b.lazySet(xo5Var);
                    lock.unlock();
                }
                for (a<T> aVar2 : andSet) {
                    aVar2.a(xo5Var, this.g);
                }
                return;
            }
        } while (atomicReference.get() == null);
    }

    @Override // defpackage.ls5
    public final void onError(Throwable th) {
        AtomicReference<Throwable> atomicReference;
        nq5.a(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        do {
            atomicReference = this.f;
            if (atomicReference.compareAndSet(null, th)) {
                xo5.b bVar = new xo5.b(th);
                AtomicReference<a<T>[]> atomicReference2 = this.c;
                a<T>[] aVarArr = j;
                a<T>[] andSet = atomicReference2.getAndSet(aVarArr);
                if (andSet != aVarArr) {
                    Lock lock = this.e;
                    lock.lock();
                    this.g++;
                    this.b.lazySet(bVar);
                    lock.unlock();
                }
                for (a<T> aVar : andSet) {
                    aVar.a(bVar, this.g);
                }
                return;
            }
        } while (atomicReference.get() == null);
        d97.b(th);
    }

    @Override // defpackage.ls5
    public final void onNext(T t) {
        nq5.a(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f.get() != null) {
            return;
        }
        Lock lock = this.e;
        lock.lock();
        this.g++;
        this.b.lazySet(t);
        lock.unlock();
        for (a<T> aVar : this.c.get()) {
            aVar.a(t, this.g);
        }
    }

    @Override // defpackage.ls5
    public final void onSubscribe(cp2 cp2Var) {
        if (this.f.get() != null) {
            cp2Var.dispose();
        }
    }
}
