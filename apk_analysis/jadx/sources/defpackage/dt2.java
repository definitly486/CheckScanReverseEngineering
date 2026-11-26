package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class dt2<T> implements zo7<T>, it2<T> {
    public final zo7<T> a;
    public final int b;

    public static final class a implements Iterator<T>, re4 {
        public final Iterator<T> b;
        public int c;

        public a(dt2<T> dt2Var) {
            this.b = dt2Var.a.iterator();
            this.c = dt2Var.b;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            Iterator<T> it;
            while (true) {
                int i = this.c;
                it = this.b;
                if (i <= 0 || !it.hasNext()) {
                    break;
                }
                it.next();
                this.c--;
            }
            return it.hasNext();
        }

        @Override // java.util.Iterator
        public final T next() {
            Iterator<T> it;
            while (true) {
                int i = this.c;
                it = this.b;
                if (i <= 0 || !it.hasNext()) {
                    break;
                }
                it.next();
                this.c--;
            }
            return it.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public dt2(zo7<? extends T> zo7Var, int i) {
        zo7Var.getClass();
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
        int i2 = this.b + i;
        return i2 < 0 ? new dt2(this, i) : new dt2(this.a, i2);
    }

    @Override // defpackage.it2
    public final zo7<T> b(int i) {
        int i2 = this.b;
        int i3 = i2 + i;
        return i3 < 0 ? new hk8(this, i) : new qb8(this.a, i2, i3);
    }

    @Override // defpackage.zo7
    public final Iterator<T> iterator() {
        return new a(this);
    }
}
