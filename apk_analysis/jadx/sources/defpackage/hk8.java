package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class hk8<T> implements zo7<T>, it2<T> {
    public final zo7<T> a;
    public final int b;

    public static final class a implements Iterator<T>, re4 {
        public int b;
        public final Iterator<T> c;

        public a(hk8<T> hk8Var) {
            this.b = hk8Var.b;
            this.c = hk8Var.a.iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b > 0 && this.c.hasNext();
        }

        @Override // java.util.Iterator
        public final T next() {
            int i = this.b;
            if (i != 0) {
                this.b = i - 1;
                return this.c.next();
            }
            qz0.e();
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public hk8(zo7<? extends T> zo7Var, int i) {
        this.a = zo7Var;
        this.b = i;
        if (i >= 0) {
            return;
        }
        c9.f(qz0.d("count must be non-negative, but was ", i, '.'));
        throw null;
    }

    @Override // defpackage.it2
    public final zo7<T> a(int i) {
        int i2 = this.b;
        return i >= i2 ? nx2.a : new qb8(this.a, i, i2);
    }

    @Override // defpackage.it2
    public final zo7<T> b(int i) {
        return i >= this.b ? this : new hk8(this.a, i);
    }

    @Override // defpackage.zo7
    public final Iterator<T> iterator() {
        return new a(this);
    }
}
