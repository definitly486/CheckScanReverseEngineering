package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class b85<T, R> extends a75<R> {
    public final x75<? extends T>[] b;
    public final rm3.a c;

    public final class a implements xl3<T, R> {
        public a() {
        }

        @Override // defpackage.xl3
        public final R apply(T t) {
            R r = (R) b85.this.c.apply(new Object[]{t});
            nq5.a(r, "The zipper returned a null value");
            return r;
        }
    }

    public static final class b<T, R> extends AtomicInteger implements cp2 {
        public final t75<? super R> b;
        public final xl3<? super Object[], ? extends R> c;
        public final c<T>[] d;
        public final Object[] e;

        public b(t75 t75Var, int i, rm3.a aVar) {
            super(i);
            this.b = t75Var;
            this.c = aVar;
            c<T>[] cVarArr = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                cVarArr[i2] = new c<>(this, i2);
            }
            this.d = cVarArr;
            this.e = new Object[i];
        }

        public final void a(int i) {
            c<T>[] cVarArr = this.d;
            int length = cVarArr.length;
            for (int i2 = 0; i2 < i; i2++) {
                c<T> cVar = cVarArr[i2];
                cVar.getClass();
                ip2.a(cVar);
            }
            while (true) {
                i++;
                if (i >= length) {
                    return;
                }
                c<T> cVar2 = cVarArr[i];
                cVar2.getClass();
                ip2.a(cVar2);
            }
        }

        public final void b(Throwable th, int i) {
            if (getAndSet(0) <= 0) {
                d97.b(th);
            } else {
                a(i);
                this.b.onError(th);
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (getAndSet(0) > 0) {
                for (c<T> cVar : this.d) {
                    cVar.getClass();
                    ip2.a(cVar);
                }
            }
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return get() <= 0;
        }
    }

    public static final class c<T> extends AtomicReference<cp2> implements t75<T> {
        public final b<T, ?> b;
        public final int c;

        public c(b<T, ?> bVar, int i) {
            this.b = bVar;
            this.c = i;
        }

        @Override // defpackage.t75
        public final void onComplete() {
            b<T, ?> bVar = this.b;
            if (bVar.getAndSet(0) > 0) {
                bVar.a(this.c);
                bVar.b.onComplete();
            }
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            this.b.b(th, this.c);
        }

        @Override // defpackage.t75
        public final void onSubscribe(cp2 cp2Var) {
            ip2.g(this, cp2Var);
        }

        @Override // defpackage.t75
        public final void onSuccess(T t) {
            b<T, ?> bVar = this.b;
            t75<? super Object> t75Var = bVar.b;
            Object[] objArr = bVar.e;
            objArr[this.c] = t;
            if (bVar.decrementAndGet() == 0) {
                try {
                    Object objApply = bVar.c.apply(objArr);
                    nq5.a(objApply, "The zipper returned a null value");
                    t75Var.onSuccess(objApply);
                } catch (Throwable th) {
                    m13.d(th);
                    t75Var.onError(th);
                }
            }
        }
    }

    public b85(x75[] x75VarArr, rm3.a aVar) {
        this.b = x75VarArr;
        this.c = aVar;
    }

    @Override // defpackage.a75
    public final void d(t75<? super R> t75Var) {
        x75<? extends T>[] x75VarArr = this.b;
        int length = x75VarArr.length;
        if (length == 1) {
            x75VarArr[0].a(new r75.a(t75Var, new a()));
            return;
        }
        b bVar = new b(t75Var, length, this.c);
        t75Var.onSubscribe(bVar);
        for (int i = 0; i < length && !bVar.isDisposed(); i++) {
            x75<? extends T> x75Var = x75VarArr[i];
            if (x75Var == null) {
                bVar.b(new NullPointerException("One of the sources is null"), i);
                return;
            }
            x75Var.a(bVar.d[i]);
        }
    }
}
