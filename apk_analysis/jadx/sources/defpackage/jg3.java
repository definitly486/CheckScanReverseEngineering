package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class jg3<T, R> extends k0<T, R> {
    public final up0 d;
    public final int e;
    public final s03 f;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[s03.values().length];
            a = iArr;
            try {
                iArr[s03.BOUNDARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[s03.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class b<T, R> extends AtomicInteger implements rh3<T>, f<R>, bc8 {
        public final xl3<? super T, ? extends dt6<? extends R>> c;
        public final int d;
        public final int e;
        public bc8 f;
        public int g;
        public iz7<T> h;
        public volatile boolean i;
        public volatile boolean j;
        public volatile boolean l;
        public int m;
        public final e<R> b = new e<>(this);
        public final pt k = new pt();

        public b(xl3<? super T, ? extends dt6<? extends R>> xl3Var, int i) {
            this.c = xl3Var;
            this.d = i;
            this.e = i;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.f, bc8Var)) {
                this.f = bc8Var;
                if (bc8Var instanceof mw6) {
                    mw6 mw6Var = (mw6) bc8Var;
                    int iD = mw6Var.d(7);
                    if (iD == 1) {
                        this.m = iD;
                        this.h = mw6Var;
                        this.i = true;
                        g();
                        f();
                        return;
                    }
                    if (iD == 2) {
                        this.m = iD;
                        this.h = mw6Var;
                        g();
                        bc8Var.request(this.d);
                        return;
                    }
                }
                this.h = new m68(this.d);
                g();
                bc8Var.request(this.d);
            }
        }

        public abstract void f();

        public abstract void g();

        @Override // defpackage.wb8
        public final void onComplete() {
            this.i = true;
            f();
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.m == 2 || this.h.offer(t)) {
                f();
            } else {
                this.f.cancel();
                onError(new IllegalStateException("Queue full?!"));
            }
        }
    }

    public static final class c<T, R> extends b<T, R> {
        public final wb8<? super R> n;
        public final boolean o;

        public c(wb8 wb8Var, up0 up0Var, int i, boolean z) {
            super(up0Var, i);
            this.n = wb8Var;
            this.o = z;
        }

        @Override // jg3.f
        public final void b(Throwable th) {
            pt ptVar = this.k;
            ptVar.getClass();
            if (!k13.a(ptVar, th)) {
                d97.b(th);
                return;
            }
            if (!this.o) {
                this.f.cancel();
                this.i = true;
            }
            this.l = false;
            f();
        }

        @Override // defpackage.bc8
        public final void cancel() {
            if (this.j) {
                return;
            }
            this.j = true;
            this.b.cancel();
            this.f.cancel();
        }

        @Override // jg3.f
        public final void d(R r) {
            this.n.onNext(r);
        }

        @Override // jg3.b
        public final void f() {
            Object objCall;
            if (getAndIncrement() == 0) {
                while (!this.j) {
                    if (!this.l) {
                        boolean z = this.i;
                        if (z && !this.o && this.k.get() != null) {
                            wb8<? super R> wb8Var = this.n;
                            pt ptVar = this.k;
                            ptVar.getClass();
                            wb8Var.onError(k13.b(ptVar));
                            return;
                        }
                        try {
                            T tPoll = this.h.poll();
                            boolean z2 = tPoll == null;
                            if (z && z2) {
                                pt ptVar2 = this.k;
                                ptVar2.getClass();
                                Throwable thB = k13.b(ptVar2);
                                wb8<? super R> wb8Var2 = this.n;
                                if (thB != null) {
                                    wb8Var2.onError(thB);
                                    return;
                                } else {
                                    wb8Var2.onComplete();
                                    return;
                                }
                            }
                            if (!z2) {
                                try {
                                    dt6<? extends R> dt6VarApply = this.c.apply(tPoll);
                                    nq5.a(dt6VarApply, "The mapper returned a null Publisher");
                                    dt6<? extends R> dt6Var = dt6VarApply;
                                    if (this.m != 1) {
                                        int i = this.g + 1;
                                        if (i == this.e) {
                                            this.g = 0;
                                            this.f.request(i);
                                        } else {
                                            this.g = i;
                                        }
                                    }
                                    if (dt6Var instanceof Callable) {
                                        try {
                                            objCall = ((Callable) dt6Var).call();
                                        } catch (Throwable th) {
                                            m13.d(th);
                                            pt ptVar3 = this.k;
                                            ptVar3.getClass();
                                            k13.a(ptVar3, th);
                                            if (!this.o) {
                                                this.f.cancel();
                                                wb8<? super R> wb8Var3 = this.n;
                                                pt ptVar4 = this.k;
                                                ptVar4.getClass();
                                                wb8Var3.onError(k13.b(ptVar4));
                                                return;
                                            }
                                            objCall = null;
                                        }
                                        if (objCall == null) {
                                            continue;
                                        } else if (this.b.h) {
                                            this.n.onNext(objCall);
                                        } else {
                                            this.l = true;
                                            this.b.g(new g(this.b, objCall));
                                        }
                                    } else {
                                        this.l = true;
                                        dt6Var.a(this.b);
                                    }
                                } catch (Throwable th2) {
                                    m13.d(th2);
                                    this.f.cancel();
                                    pt ptVar5 = this.k;
                                    ptVar5.getClass();
                                    k13.a(ptVar5, th2);
                                    wb8<? super R> wb8Var4 = this.n;
                                    pt ptVar6 = this.k;
                                    ptVar6.getClass();
                                    wb8Var4.onError(k13.b(ptVar6));
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            m13.d(th3);
                            this.f.cancel();
                            pt ptVar7 = this.k;
                            ptVar7.getClass();
                            k13.a(ptVar7, th3);
                            wb8<? super R> wb8Var5 = this.n;
                            pt ptVar8 = this.k;
                            ptVar8.getClass();
                            wb8Var5.onError(k13.b(ptVar8));
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // jg3.b
        public final void g() {
            this.n.a(this);
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            pt ptVar = this.k;
            ptVar.getClass();
            if (!k13.a(ptVar, th)) {
                d97.b(th);
            } else {
                this.i = true;
                f();
            }
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            this.b.request(j);
        }
    }

    public static final class d<T, R> extends b<T, R> {
        public final wb8<? super R> n;
        public final AtomicInteger o;

        public d(wb8 wb8Var, up0 up0Var, int i) {
            super(up0Var, i);
            this.n = wb8Var;
            this.o = new AtomicInteger();
        }

        @Override // jg3.f
        public final void b(Throwable th) {
            pt ptVar = this.k;
            ptVar.getClass();
            if (!k13.a(ptVar, th)) {
                d97.b(th);
                return;
            }
            this.f.cancel();
            if (getAndIncrement() == 0) {
                this.n.onError(k13.b(ptVar));
            }
        }

        @Override // defpackage.bc8
        public final void cancel() {
            if (this.j) {
                return;
            }
            this.j = true;
            this.b.cancel();
            this.f.cancel();
        }

        @Override // jg3.f
        public final void d(R r) {
            if (get() == 0 && compareAndSet(0, 1)) {
                wb8<? super R> wb8Var = this.n;
                wb8Var.onNext(r);
                if (compareAndSet(1, 0)) {
                    return;
                }
                pt ptVar = this.k;
                ptVar.getClass();
                wb8Var.onError(k13.b(ptVar));
            }
        }

        @Override // jg3.b
        public final void f() {
            if (this.o.getAndIncrement() == 0) {
                while (!this.j) {
                    if (!this.l) {
                        boolean z = this.i;
                        try {
                            T tPoll = this.h.poll();
                            boolean z2 = tPoll == null;
                            if (z && z2) {
                                this.n.onComplete();
                                return;
                            }
                            if (!z2) {
                                try {
                                    dt6<? extends R> dt6VarApply = this.c.apply(tPoll);
                                    nq5.a(dt6VarApply, "The mapper returned a null Publisher");
                                    dt6<? extends R> dt6Var = dt6VarApply;
                                    if (this.m != 1) {
                                        int i = this.g + 1;
                                        if (i == this.e) {
                                            this.g = 0;
                                            this.f.request(i);
                                        } else {
                                            this.g = i;
                                        }
                                    }
                                    if (dt6Var instanceof Callable) {
                                        try {
                                            Object objCall = ((Callable) dt6Var).call();
                                            if (objCall == null) {
                                                continue;
                                            } else if (!this.b.h) {
                                                this.l = true;
                                                this.b.g(new g(this.b, objCall));
                                            } else if (get() == 0 && compareAndSet(0, 1)) {
                                                this.n.onNext(objCall);
                                                if (!compareAndSet(1, 0)) {
                                                    wb8<? super R> wb8Var = this.n;
                                                    pt ptVar = this.k;
                                                    ptVar.getClass();
                                                    wb8Var.onError(k13.b(ptVar));
                                                    return;
                                                }
                                            }
                                        } catch (Throwable th) {
                                            m13.d(th);
                                            this.f.cancel();
                                            pt ptVar2 = this.k;
                                            ptVar2.getClass();
                                            k13.a(ptVar2, th);
                                            wb8<? super R> wb8Var2 = this.n;
                                            pt ptVar3 = this.k;
                                            ptVar3.getClass();
                                            wb8Var2.onError(k13.b(ptVar3));
                                            return;
                                        }
                                    } else {
                                        this.l = true;
                                        dt6Var.a(this.b);
                                    }
                                } catch (Throwable th2) {
                                    m13.d(th2);
                                    this.f.cancel();
                                    pt ptVar4 = this.k;
                                    ptVar4.getClass();
                                    k13.a(ptVar4, th2);
                                    wb8<? super R> wb8Var3 = this.n;
                                    pt ptVar5 = this.k;
                                    ptVar5.getClass();
                                    wb8Var3.onError(k13.b(ptVar5));
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            m13.d(th3);
                            this.f.cancel();
                            pt ptVar6 = this.k;
                            ptVar6.getClass();
                            k13.a(ptVar6, th3);
                            wb8<? super R> wb8Var4 = this.n;
                            pt ptVar7 = this.k;
                            ptVar7.getClass();
                            wb8Var4.onError(k13.b(ptVar7));
                            return;
                        }
                    }
                    if (this.o.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // jg3.b
        public final void g() {
            this.n.a(this);
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            pt ptVar = this.k;
            ptVar.getClass();
            if (!k13.a(ptVar, th)) {
                d97.b(th);
                return;
            }
            this.b.cancel();
            if (getAndIncrement() == 0) {
                this.n.onError(k13.b(ptVar));
            }
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            this.b.request(j);
        }
    }

    public static final class e<R> extends dc8 implements rh3<R> {
        public final b i;
        public long j;

        public e(b bVar) {
            this.i = bVar;
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            long j = this.j;
            if (j != 0) {
                this.j = 0L;
                f(j);
            }
            b bVar = this.i;
            bVar.l = false;
            bVar.f();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            long j = this.j;
            if (j != 0) {
                this.j = 0L;
                f(j);
            }
            this.i.b(th);
        }

        @Override // defpackage.wb8
        public final void onNext(R r) {
            this.j++;
            this.i.d(r);
        }
    }

    public interface f<T> {
        void b(Throwable th);

        void d(T t);
    }

    public static final class g<T> extends AtomicBoolean implements bc8 {
        public final wb8<? super T> b;
        public final T c;

        /* JADX WARN: Multi-variable type inference failed */
        public g(wb8 wb8Var, Object obj) {
            this.c = obj;
            this.b = wb8Var;
        }

        @Override // defpackage.bc8
        public final void cancel() {
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (j <= 0 || !compareAndSet(false, true)) {
                return;
            }
            T t = this.c;
            wb8<? super T> wb8Var = this.b;
            wb8Var.onNext(t);
            wb8Var.onComplete();
        }
    }

    public jg3(eh3 eh3Var, up0 up0Var, s03 s03Var) {
        super(eh3Var);
        this.d = up0Var;
        this.e = 2;
        this.f = s03Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super R> wb8Var) {
        wb8<? super T> cVar;
        gg3<T> gg3Var = this.c;
        up0 up0Var = this.d;
        if (nh3.a(gg3Var, wb8Var, up0Var)) {
            return;
        }
        int i = a.a[this.f.ordinal()];
        int i2 = this.e;
        if (i != 1) {
            cVar = i != 2 ? new d<>(wb8Var, up0Var, i2) : new c<>(wb8Var, up0Var, i2, true);
        } else {
            cVar = new c<>(wb8Var, up0Var, i2, false);
        }
        gg3Var.a(cVar);
    }
}
