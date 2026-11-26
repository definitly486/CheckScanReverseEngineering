package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class j18<T, R> extends mz7<R> {
    public final c18<? extends T>[] b;
    public final xl3<? super Object[], ? extends R> c;

    public final class a implements xl3<T, R> {
        public a() {
        }

        @Override // defpackage.xl3
        public final R apply(T t) {
            R rApply = j18.this.c.apply(new Object[]{t});
            nq5.a(rApply, "The zipper returned a null value");
            return rApply;
        }
    }

    public static final class b<T, R> extends AtomicInteger implements cp2 {
        public final t08<? super R> b;
        public final xl3<? super Object[], ? extends R> c;
        public final c<T>[] d;
        public final Object[] e;

        public b(t08<? super R> t08Var, int i, xl3<? super Object[], ? extends R> xl3Var) {
            super(i);
            this.b = t08Var;
            this.c = xl3Var;
            c<T>[] cVarArr = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                cVarArr[i2] = new c<>(this, i2);
            }
            this.d = cVarArr;
            this.e = new Object[i];
        }

        public final void a(Throwable th, int i) {
            if (getAndSet(0) <= 0) {
                d97.b(th);
                return;
            }
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
                    this.b.onError(th);
                    return;
                } else {
                    c<T> cVar2 = cVarArr[i];
                    cVar2.getClass();
                    ip2.a(cVar2);
                }
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

    public static final class c<T> extends AtomicReference<cp2> implements t08<T> {
        public final b<T, ?> b;
        public final int c;

        public c(b<T, ?> bVar, int i) {
            this.b = bVar;
            this.c = i;
        }

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            this.b.a(th, this.c);
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            ip2.g(this, cp2Var);
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            b<T, ?> bVar = this.b;
            t08<? super Object> t08Var = bVar.b;
            Object[] objArr = bVar.e;
            objArr[this.c] = t;
            if (bVar.decrementAndGet() == 0) {
                try {
                    Object objApply = bVar.c.apply(objArr);
                    nq5.a(objApply, "The zipper returned a null value");
                    t08Var.onSuccess(objApply);
                } catch (Throwable th) {
                    m13.d(th);
                    t08Var.onError(th);
                }
            }
        }
    }

    public j18(c18<? extends T>[] c18VarArr, xl3<? super Object[], ? extends R> xl3Var) {
        this.b = c18VarArr;
        this.c = xl3Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super R> t08Var) {
        c18<? extends T>[] c18VarArr = this.b;
        int length = c18VarArr.length;
        if (length == 1) {
            c18VarArr[0].d(new p08.a(t08Var, new a()));
            return;
        }
        b bVar = new b(t08Var, length, this.c);
        t08Var.onSubscribe(bVar);
        for (int i = 0; i < length && !bVar.isDisposed(); i++) {
            c18<? extends T> c18Var = c18VarArr[i];
            if (c18Var == null) {
                bVar.a(new NullPointerException("One of the sources is null"), i);
                return;
            }
            c18Var.d(bVar.d[i]);
        }
    }
}
