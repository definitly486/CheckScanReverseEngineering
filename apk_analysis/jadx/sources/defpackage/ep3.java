package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class ep3<T> implements zo7<T> {
    public final ll3<T> a;
    public final nl3<T, T> b;

    public static final class a implements Iterator<T>, re4 {
        public T b;
        public int c = -2;
        public final /* synthetic */ ep3<T> d;

        public a(ep3<T> ep3Var) {
            this.d = ep3Var;
        }

        public final void a() {
            T tInvoke;
            int i = this.c;
            ep3<T> ep3Var = this.d;
            if (i == -2) {
                tInvoke = ep3Var.a.invoke();
            } else {
                nl3<T, T> nl3Var = ep3Var.b;
                T t = this.b;
                t.getClass();
                tInvoke = nl3Var.invoke(t);
            }
            this.b = tInvoke;
            this.c = tInvoke == null ? 0 : 1;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.c < 0) {
                a();
            }
            return this.c == 1;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.c < 0) {
                a();
            }
            if (this.c == 0) {
                qz0.e();
                return null;
            }
            T t = this.b;
            t.getClass();
            this.c = -1;
            return t;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ep3(ll3<? extends T> ll3Var, nl3<? super T, ? extends T> nl3Var) {
        nl3Var.getClass();
        this.a = ll3Var;
        this.b = nl3Var;
    }

    @Override // defpackage.zo7
    public final Iterator<T> iterator() {
        return new a(this);
    }
}
