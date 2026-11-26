package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class wq5<T, R> extends tq5<R> {
    public final wr5<? extends T>[] b;
    public final xl3<? super Object[], ? extends R> c;
    public final int d;

    public static final class a<T, R> extends AtomicReference<cp2> implements ls5<T> {
        public final b<T, R> b;
        public final int c;

        public a(b<T, R> bVar, int i) {
            this.b = bVar;
            this.c = i;
        }

        /* JADX WARN: Code duplicated, block: B:17:0x001f A[Catch: all -> 0x000b, TryCatch #0 {all -> 0x000b, blocks: (B:4:0x0005, B:6:0x0009, B:10:0x000d, B:15:0x0017, B:18:0x0021, B:17:0x001f), top: B:25:0x0005 }] */
        @Override // defpackage.ls5
        public final void onComplete() {
            b<T, R> bVar = this.b;
            int i = this.c;
            synchronized (bVar) {
                try {
                    Object[] objArr = bVar.e;
                    if (objArr == null) {
                        return;
                    }
                    boolean z = objArr[i] == null;
                    if (z) {
                        bVar.h = true;
                    } else {
                        int i2 = bVar.k + 1;
                        bVar.k = i2;
                        if (i2 == objArr.length) {
                            bVar.h = true;
                        }
                    }
                    if (z) {
                        bVar.a();
                    }
                    bVar.d();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            b<T, R> bVar = this.b;
            pt ptVar = bVar.i;
            ptVar.getClass();
            if (!k13.a(ptVar, th)) {
                d97.b(th);
            } else {
                bVar.a();
                bVar.d();
            }
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            boolean z;
            b<T, R> bVar = this.b;
            int i = this.c;
            synchronized (bVar) {
                try {
                    Object[] objArr = bVar.e;
                    if (objArr == null) {
                        return;
                    }
                    Object obj = objArr[i];
                    int i2 = bVar.j;
                    if (obj == null) {
                        i2++;
                        bVar.j = i2;
                    }
                    objArr[i] = t;
                    if (i2 == objArr.length) {
                        bVar.f.offer((Object[]) objArr.clone());
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        bVar.d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            ip2.g(this, cp2Var);
        }
    }

    public static final class b<T, R> extends AtomicInteger implements cp2 {
        public final ls5<? super R> b;
        public final xl3<? super Object[], ? extends R> c;
        public final a<T, R>[] d;
        public Object[] e;
        public final n68<Object[]> f;
        public volatile boolean g;
        public volatile boolean h;
        public final pt i = new pt();
        public int j;
        public int k;

        public b(ls5 ls5Var, xl3 xl3Var, int i, int i2) {
            this.b = ls5Var;
            this.c = xl3Var;
            this.e = new Object[i];
            a<T, R>[] aVarArr = new a[i];
            for (int i3 = 0; i3 < i; i3++) {
                aVarArr[i3] = new a<>(this, i3);
            }
            this.d = aVarArr;
            this.f = new n68<>(i2);
        }

        public final void a() {
            for (a<T, R> aVar : this.d) {
                aVar.getClass();
                ip2.a(aVar);
            }
        }

        public final void b(n68<?> n68Var) {
            synchronized (this) {
                this.e = null;
            }
            n68Var.clear();
        }

        public final void d() {
            if (getAndIncrement() != 0) {
                return;
            }
            n68<Object[]> n68Var = this.f;
            ls5<? super R> ls5Var = this.b;
            int iAddAndGet = 1;
            while (!this.g) {
                if (this.i.get() != null) {
                    a();
                    b(n68Var);
                    pt ptVar = this.i;
                    ptVar.getClass();
                    ls5Var.onError(k13.b(ptVar));
                    return;
                }
                boolean z = this.h;
                Object[] objArrPoll = n68Var.poll();
                boolean z2 = objArrPoll == null;
                if (z && z2) {
                    b(n68Var);
                    pt ptVar2 = this.i;
                    ptVar2.getClass();
                    Throwable thB = k13.b(ptVar2);
                    if (thB == null) {
                        ls5Var.onComplete();
                        return;
                    } else {
                        ls5Var.onError(thB);
                        return;
                    }
                }
                if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    try {
                        R rApply = this.c.apply(objArrPoll);
                        nq5.a(rApply, "The combiner returned a null value");
                        ls5Var.onNext(rApply);
                    } catch (Throwable th) {
                        m13.d(th);
                        pt ptVar3 = this.i;
                        ptVar3.getClass();
                        k13.a(ptVar3, th);
                        a();
                        b(n68Var);
                        pt ptVar4 = this.i;
                        ptVar4.getClass();
                        ls5Var.onError(k13.b(ptVar4));
                        return;
                    }
                }
            }
            b(n68Var);
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (this.g) {
                return;
            }
            this.g = true;
            a();
            if (getAndIncrement() == 0) {
                b(this.f);
            }
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.g;
        }
    }

    public wq5(wr5[] wr5VarArr, xl3 xl3Var, int i) {
        this.b = wr5VarArr;
        this.c = xl3Var;
        this.d = i;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super R> ls5Var) {
        wr5<? extends T>[] wr5VarArr = this.b;
        wr5VarArr.getClass();
        int length = wr5VarArr.length;
        if (length == 0) {
            ls5Var.onSubscribe(hx2.INSTANCE);
            ls5Var.onComplete();
            return;
        }
        b bVar = new b(ls5Var, this.c, length, this.d);
        a<T, R>[] aVarArr = bVar.d;
        int length2 = aVarArr.length;
        bVar.b.onSubscribe(bVar);
        for (int i = 0; i < length2 && !bVar.h && !bVar.g; i++) {
            wr5VarArr[i].a(aVarArr[i]);
        }
    }
}
