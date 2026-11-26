package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class nc3<T, R, E> implements zo7<E> {
    public final zo7<T> a;
    public final nl3<T, R> b;
    public final nl3<R, Iterator<E>> c;

    public static final class a implements Iterator<E>, re4 {
        public final Iterator<T> b;
        public Iterator<? extends E> c;
        public int d;
        public final /* synthetic */ nc3<T, R, E> e;

        public a(nc3<T, R, E> nc3Var) {
            this.e = nc3Var;
            this.b = nc3Var.a.iterator();
        }

        public final boolean a() {
            Iterator<? extends E> it;
            Iterator<? extends E> it2 = this.c;
            if (it2 != null && it2.hasNext()) {
                this.d = 1;
                return true;
            }
            do {
                Iterator<T> it3 = this.b;
                if (!it3.hasNext()) {
                    this.d = 2;
                    this.c = null;
                    return false;
                }
                T next = it3.next();
                nc3<T, R, E> nc3Var = this.e;
                it = (Iterator) nc3Var.c.invoke(nc3Var.b.invoke(next));
            } while (!it.hasNext());
            this.c = it;
            this.d = 1;
            return true;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            int i = this.d;
            if (i == 1) {
                return true;
            }
            if (i == 2) {
                return false;
            }
            return a();
        }

        @Override // java.util.Iterator
        public final E next() {
            int i = this.d;
            if (i == 2) {
                qz0.e();
                return null;
            }
            if (i == 0 && !a()) {
                qz0.e();
                return null;
            }
            this.d = 0;
            Iterator<? extends E> it = this.c;
            it.getClass();
            return it.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public nc3(zo7<? extends T> zo7Var, nl3<? super T, ? extends R> nl3Var, nl3<? super R, ? extends Iterator<? extends E>> nl3Var2) {
        zo7Var.getClass();
        nl3Var.getClass();
        nl3Var2.getClass();
        this.a = zo7Var;
        this.b = nl3Var;
        this.c = nl3Var2;
    }

    @Override // defpackage.zo7
    public final Iterator<E> iterator() {
        return new a(this);
    }
}
