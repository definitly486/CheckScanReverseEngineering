package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class pa3<T> implements zo7<T> {
    public final zo7<T> a;
    public final boolean b;
    public final nl3<T, Boolean> c;

    public static final class a implements Iterator<T>, re4 {
        public final Iterator<T> b;
        public int c = -1;
        public T d;
        public final /* synthetic */ pa3<T> e;

        public a(pa3<T> pa3Var) {
            this.e = pa3Var;
            this.b = pa3Var.a.iterator();
        }

        public final void a() {
            T next;
            pa3<T> pa3Var;
            do {
                Iterator<T> it = this.b;
                if (!it.hasNext()) {
                    this.c = 0;
                    return;
                } else {
                    next = it.next();
                    pa3Var = this.e;
                }
            } while (pa3Var.c.invoke(next).booleanValue() != pa3Var.b);
            this.d = next;
            this.c = 1;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.c == -1) {
                a();
            }
            return this.c == 1;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.c == -1) {
                a();
            }
            if (this.c == 0) {
                qz0.e();
                return null;
            }
            T t = this.d;
            this.d = null;
            this.c = -1;
            return t;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public pa3(zo7<? extends T> zo7Var, boolean z, nl3<? super T, Boolean> nl3Var) {
        zo7Var.getClass();
        nl3Var.getClass();
        this.a = zo7Var;
        this.b = z;
        this.c = nl3Var;
    }

    @Override // defpackage.zo7
    public final Iterator<T> iterator() {
        return new a(this);
    }
}
