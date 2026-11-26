package defpackage;

import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class kg3<T> extends gg3<T> {
    public final jh3<T> c;
    public final n00 d;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[n00.values().length];
            a = iArr;
            try {
                iArr[n00.MISSING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[n00.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[n00.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[n00.LATEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static abstract class b<T> extends AtomicLong implements qg3<T>, bc8 {
        public final wb8<? super T> b;
        public final kp7 c = new kp7();

        public b(wb8<? super T> wb8Var) {
            this.b = wb8Var;
        }

        public final void a() {
            kp7 kp7Var = this.c;
            if (kp7Var.isDisposed()) {
                return;
            }
            try {
                this.b.onComplete();
            } finally {
                ip2.a(kp7Var);
            }
        }

        public final boolean b(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            kp7 kp7Var = this.c;
            if (kp7Var.isDisposed()) {
                return false;
            }
            try {
                this.b.onError(th);
                return true;
            } finally {
                ip2.a(kp7Var);
            }
        }

        @Override // defpackage.bc8
        public final void cancel() {
            ip2.a(this.c);
            f();
        }

        public final void d(Throwable th) {
            if (g(th)) {
                return;
            }
            d97.b(th);
        }

        public void e() {
        }

        public void f() {
        }

        public boolean g(Throwable th) {
            return b(th);
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j)) {
                m00.c(this, j);
                e();
            }
        }

        @Override // java.util.concurrent.atomic.AtomicLong
        public final String toString() {
            return pg.g(getClass().getSimpleName(), "{", super.toString(), "}");
        }
    }

    public static final class c<T> extends b<T> {
        public final n68<T> d;
        public Throwable e;
        public volatile boolean f;
        public final AtomicInteger g;

        public c(wb8<? super T> wb8Var, int i) {
            super(wb8Var);
            this.d = new n68<>(i);
            this.g = new AtomicInteger();
        }

        @Override // kg3.b
        public final void e() {
            i();
        }

        @Override // kg3.b
        public final void f() {
            if (this.g.getAndIncrement() == 0) {
                this.d.clear();
            }
        }

        @Override // kg3.b
        public final boolean g(Throwable th) {
            if (this.f || this.c.isDisposed()) {
                return false;
            }
            this.e = th;
            this.f = true;
            i();
            return true;
        }

        public final void i() {
            if (this.g.getAndIncrement() != 0) {
                return;
            }
            wb8<? super T> wb8Var = this.b;
            n68<T> n68Var = this.d;
            int iAddAndGet = 1;
            do {
                long j = get();
                long j2 = 0;
                while (j2 != j) {
                    if (this.c.isDisposed()) {
                        n68Var.clear();
                        return;
                    }
                    boolean z = this.f;
                    T tPoll = n68Var.poll();
                    boolean z2 = tPoll == null;
                    if (z && z2) {
                        Throwable th = this.e;
                        if (th != null) {
                            b(th);
                            return;
                        } else {
                            a();
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    wb8Var.onNext(tPoll);
                    j2++;
                }
                if (j2 == j) {
                    if (this.c.isDisposed()) {
                        n68Var.clear();
                        return;
                    }
                    boolean z3 = this.f;
                    boolean zIsEmpty = n68Var.isEmpty();
                    if (z3 && zIsEmpty) {
                        Throwable th2 = this.e;
                        if (th2 != null) {
                            b(th2);
                            return;
                        } else {
                            a();
                            return;
                        }
                    }
                }
                if (j2 != 0) {
                    m00.e(this, j2);
                }
                iAddAndGet = this.g.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // defpackage.zw2
        public final void onNext(T t) {
            if (this.f || this.c.isDisposed()) {
                return;
            }
            if (t == null) {
                d(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.d.offer(t);
                i();
            }
        }
    }

    public static final class d<T> extends h<T> {
        @Override // kg3.h
        public final void i() {
        }
    }

    public static final class e<T> extends h<T> {
        @Override // kg3.h
        public final void i() {
            d(new MissingBackpressureException("create: could not emit value due to lack of requests"));
        }
    }

    public static final class f<T> extends b<T> {
        public final AtomicReference<T> d;
        public Throwable e;
        public volatile boolean f;
        public final AtomicInteger g;

        public f(wb8<? super T> wb8Var) {
            super(wb8Var);
            this.d = new AtomicReference<>();
            this.g = new AtomicInteger();
        }

        @Override // kg3.b
        public final void e() {
            i();
        }

        @Override // kg3.b
        public final void f() {
            if (this.g.getAndIncrement() == 0) {
                this.d.lazySet(null);
            }
        }

        @Override // kg3.b
        public final boolean g(Throwable th) {
            if (this.f || this.c.isDisposed()) {
                return false;
            }
            this.e = th;
            this.f = true;
            i();
            return true;
        }

        public final void i() {
            if (this.g.getAndIncrement() != 0) {
                return;
            }
            wb8<? super T> wb8Var = this.b;
            AtomicReference<T> atomicReference = this.d;
            int iAddAndGet = 1;
            do {
                long j = get();
                long j2 = 0;
                while (true) {
                    if (j2 == j) {
                        break;
                    }
                    if (this.c.isDisposed()) {
                        atomicReference.lazySet(null);
                        return;
                    }
                    boolean z = this.f;
                    T andSet = atomicReference.getAndSet(null);
                    boolean z2 = andSet == null;
                    if (z && z2) {
                        Throwable th = this.e;
                        if (th != null) {
                            b(th);
                            return;
                        } else {
                            a();
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    wb8Var.onNext(andSet);
                    j2++;
                }
                if (j2 == j) {
                    if (this.c.isDisposed()) {
                        atomicReference.lazySet(null);
                        return;
                    }
                    boolean z3 = this.f;
                    boolean z4 = atomicReference.get() == null;
                    if (z3 && z4) {
                        Throwable th2 = this.e;
                        if (th2 != null) {
                            b(th2);
                            return;
                        } else {
                            a();
                            return;
                        }
                    }
                }
                if (j2 != 0) {
                    m00.e(this, j2);
                }
                iAddAndGet = this.g.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // defpackage.zw2
        public final void onNext(T t) {
            if (this.f || this.c.isDisposed()) {
                return;
            }
            if (t == null) {
                d(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.d.set(t);
                i();
            }
        }
    }

    public static final class g<T> extends b<T> {
        @Override // defpackage.zw2
        public final void onNext(T t) {
            long j;
            if (this.c.isDisposed()) {
                return;
            }
            if (t == null) {
                d(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            this.b.onNext(t);
            do {
                j = get();
                if (j == 0) {
                    return;
                }
            } while (!compareAndSet(j, j - 1));
        }
    }

    public static abstract class h<T> extends b<T> {
        public abstract void i();

        @Override // defpackage.zw2
        public final void onNext(T t) {
            if (this.c.isDisposed()) {
                return;
            }
            if (t == null) {
                d(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else if (get() == 0) {
                i();
            } else {
                this.b.onNext(t);
                m00.e(this, 1L);
            }
        }
    }

    public kg3(jh3<T> jh3Var, n00 n00Var) {
        this.c = jh3Var;
        this.d = n00Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        b gVar;
        int i = a.a[this.d.ordinal()];
        if (i == 1) {
            gVar = new g(wb8Var);
        } else if (i == 2) {
            gVar = new e(wb8Var);
        } else if (i != 3) {
            gVar = i != 4 ? new c(wb8Var, gg3.b) : new f(wb8Var);
        } else {
            gVar = new d(wb8Var);
        }
        wb8Var.a(gVar);
        try {
            this.c.subscribe(gVar);
        } catch (Throwable th) {
            m13.d(th);
            gVar.d(th);
        }
    }
}
