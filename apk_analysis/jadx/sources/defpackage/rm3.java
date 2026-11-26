package defpackage;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes5.dex */
public final class rm3 {
    public static final i a = new i();
    public static final f b = new f();
    public static final d c = new d();
    public static final e d = new e();
    public static final l e = new l();
    public static final m f = new m();

    public static final class a<T1, T2, R> implements xl3<Object[], R> {
        public final li0<? super T1, ? super T2, ? extends R> b;

        public a(li0<? super T1, ? super T2, ? extends R> li0Var) {
            this.b = li0Var;
        }

        @Override // defpackage.xl3
        public final Object apply(Object[] objArr) {
            Object[] objArr2 = objArr;
            if (objArr2.length != 2) {
                jn.f(objArr2.length, "Array of size 2 expected but got ");
                return null;
            }
            return this.b.apply(objArr2[0], objArr2[1]);
        }
    }

    public static final class b<T1, T2, T3, R> implements xl3<Object[], R> {
        public final em3<T1, T2, T3, R> b;

        public b(em3<T1, T2, T3, R> em3Var) {
            this.b = em3Var;
        }

        @Override // defpackage.xl3
        public final Object apply(Object[] objArr) {
            Object[] objArr2 = objArr;
            if (objArr2.length != 3) {
                jn.f(objArr2.length, "Array of size 3 expected but got ");
                return null;
            }
            return this.b.a((T1) objArr2[0], (T2) objArr2[1], (T3) objArr2[2]);
        }
    }

    public static final class c<T1, T2, T3, T4, R> implements xl3<Object[], R> {
        public final ea b;

        public c(ea eaVar) {
            this.b = eaVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.xl3
        public final Object apply(Object[] objArr) {
            Object[] objArr2 = objArr;
            if (objArr2.length != 4) {
                jn.f(objArr2.length, "Array of size 4 expected but got ");
                return null;
            }
            return ((bm0.f) this.b.b).invoke(objArr2[0], objArr2[1], objArr2[2], objArr2[3]);
        }
    }

    public static final class d implements h6 {
        @Override // defpackage.h6
        public final void run() {
        }

        public final String toString() {
            return "EmptyAction";
        }
    }

    public static final class e implements qx1<Object> {
        @Override // defpackage.qx1
        public final void accept(Object obj) {
        }

        public final String toString() {
            return "EmptyConsumer";
        }
    }

    public static final class f implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
        }

        public final String toString() {
            return "EmptyRunnable";
        }
    }

    public static final class g<T> implements ze6<T> {
        public final String b;

        public g(String str) {
            this.b = str;
        }

        @Override // defpackage.ze6
        public final boolean test(T t) {
            String str = this.b;
            if (t != str) {
                return t != null && t.equals(str);
            }
            return true;
        }
    }

    public static final class h implements h6 {
        public final Future<?> a;

        public h(Future<?> future) {
            this.a = future;
        }

        @Override // defpackage.h6
        public final void run() throws ExecutionException, InterruptedException {
            this.a.get();
        }
    }

    public static final class i implements xl3<Object, Object> {
        @Override // defpackage.xl3
        public final Object apply(Object obj) {
            return obj;
        }

        public final String toString() {
            return "IdentityFunction";
        }
    }

    public static final class j<T, U> implements Callable<U>, xl3<T, U> {
        public final U b;

        public j(U u) {
            this.b = u;
        }

        @Override // defpackage.xl3
        public final U apply(T t) {
            return this.b;
        }

        @Override // java.util.concurrent.Callable
        public final U call() {
            return this.b;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class k<T> implements xl3<List<T>, List<T>> {
        public final t34 b;

        public k(t34 t34Var) {
            this.b = t34Var;
        }

        @Override // defpackage.xl3
        public final Object apply(Object obj) {
            List list = (List) obj;
            Collections.sort(list, this.b);
            return list;
        }
    }

    public static final class l implements qx1<Throwable> {
        @Override // defpackage.qx1
        public final void accept(Throwable th) {
            d97.b(new OnErrorNotImplementedException(th));
        }
    }

    public static final class m implements ze6<Object> {
        @Override // defpackage.ze6
        public final boolean test(Object obj) {
            return true;
        }
    }
}
