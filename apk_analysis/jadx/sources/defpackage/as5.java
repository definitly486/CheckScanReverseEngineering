package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class as5<T, R> extends tq5<R> {
    public final tq5<T> b;
    public final x3 c;

    public static final class a<T, R> extends AtomicInteger implements ls5<T>, cp2 {
        public static final C0118a<Object> i = new C0118a<>(null);
        public final ls5<? super R> b;
        public final xl3<? super T, ? extends c18<? extends R>> c;
        public final pt d = new pt();
        public final AtomicReference<C0118a<R>> e = new AtomicReference<>();
        public cp2 f;
        public volatile boolean g;
        public volatile boolean h;

        /* JADX INFO: renamed from: as5$a$a, reason: collision with other inner class name */
        public static final class C0118a<R> extends AtomicReference<cp2> implements t08<R> {
            public final a<?, R> b;
            public volatile R c;

            public C0118a(a<?, R> aVar) {
                this.b = aVar;
            }

            @Override // defpackage.t08
            public final void onError(Throwable th) {
                a<?, R> aVar = this.b;
                AtomicReference<C0118a<R>> atomicReference = aVar.e;
                while (!atomicReference.compareAndSet(this, null)) {
                    if (atomicReference.get() != this) {
                        d97.b(th);
                    }
                }
                if (k13.a(aVar.d, th)) {
                    aVar.f.dispose();
                    aVar.a();
                    aVar.b();
                    return;
                }
                d97.b(th);
            }

            @Override // defpackage.t08
            public final void onSubscribe(cp2 cp2Var) {
                ip2.g(this, cp2Var);
            }

            @Override // defpackage.t08
            public final void onSuccess(R r) {
                this.c = r;
                this.b.b();
            }
        }

        public a(ls5 ls5Var, x3 x3Var) {
            this.b = ls5Var;
            this.c = x3Var;
        }

        public final void a() {
            AtomicReference<C0118a<R>> atomicReference = this.e;
            C0118a<Object> c0118a = i;
            C0118a<R> andSet = atomicReference.getAndSet((C0118a<R>) c0118a);
            if (andSet == null || andSet == c0118a) {
                return;
            }
            ip2.a(andSet);
        }

        public final void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            ls5<? super R> ls5Var = this.b;
            pt ptVar = this.d;
            AtomicReference<C0118a<R>> atomicReference = this.e;
            int iAddAndGet = 1;
            while (!this.h) {
                if (ptVar.get() != null) {
                    ls5Var.onError(k13.b(ptVar));
                    return;
                }
                boolean z = this.g;
                C0118a<R> c0118a = atomicReference.get();
                boolean z2 = c0118a == null;
                if (z && z2) {
                    Throwable thB = k13.b(ptVar);
                    if (thB != null) {
                        ls5Var.onError(thB);
                        return;
                    } else {
                        ls5Var.onComplete();
                        return;
                    }
                }
                if (z2 || c0118a.c == null) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    while (!atomicReference.compareAndSet(c0118a, null) && atomicReference.get() == c0118a) {
                    }
                    ls5Var.onNext(c0118a.c);
                }
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.h = true;
            this.f.dispose();
            a();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.h;
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            this.g = true;
            b();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            if (!k13.a(this.d, th)) {
                d97.b(th);
                return;
            }
            a();
            this.g = true;
            b();
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            C0118a<Object> c0118a = i;
            AtomicReference<C0118a<R>> atomicReference = this.e;
            C0118a<R> c0118a2 = atomicReference.get();
            if (c0118a2 != null) {
                ip2.a(c0118a2);
            }
            try {
                c18<? extends R> c18VarApply = this.c.apply(t);
                nq5.a(c18VarApply, "The mapper returned a null SingleSource");
                c18<? extends R> c18Var = c18VarApply;
                C0118a<R> c0118a3 = new C0118a<>(this);
                while (true) {
                    C0118a<R> c0118a4 = atomicReference.get();
                    if (c0118a4 == c0118a) {
                        return;
                    }
                    do {
                        if (atomicReference.compareAndSet(c0118a4, c0118a3)) {
                            c18Var.d(c0118a3);
                            return;
                        }
                    } while (atomicReference.get() == c0118a4);
                }
            } catch (Throwable th) {
                m13.d(th);
                this.f.dispose();
                atomicReference.getAndSet((C0118a<R>) c0118a);
                onError(th);
            }
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.f, cp2Var)) {
                this.f = cp2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public as5(tq5 tq5Var, x3 x3Var) {
        this.b = tq5Var;
        this.c = x3Var;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // defpackage.tq5
    public final void f(ls5<? super R> ls5Var) {
        tq5<T> tq5Var = this.b;
        boolean z = tq5Var instanceof Callable;
        x3 x3Var = this.c;
        if (!z) {
            tq5Var.a(new a(ls5Var, x3Var));
            return;
        }
        try {
            Object objCall = ((Callable) tq5Var).call();
            c18 c18Var = objCall != null ? (c18) x3Var.apply(objCall) : null;
            if (c18Var != null) {
                c18Var.d(new i18.a(ls5Var));
            } else {
                ls5Var.onSubscribe(hx2.INSTANCE);
                ls5Var.onComplete();
            }
        } catch (Throwable th) {
            m13.d(th);
            ls5Var.onSubscribe(hx2.INSTANCE);
            ls5Var.onError(th);
        }
    }
}
