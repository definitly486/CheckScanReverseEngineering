package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class qb8<T> implements zo7<T>, it2<T> {
    public final zo7<T> a;
    public final int b;
    public final int c;

    public static final class a implements Iterator<T>, re4 {
        public final Iterator<T> b;
        public int c;
        public final /* synthetic */ qb8<T> d;

        public a(qb8<T> qb8Var) {
            this.d = qb8Var;
            this.b = qb8Var.a.iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            qb8<T> qb8Var;
            Iterator<T> it;
            while (true) {
                int i = this.c;
                qb8Var = this.d;
                int i2 = qb8Var.b;
                it = this.b;
                if (i >= i2 || !it.hasNext()) {
                    break;
                }
                it.next();
                this.c++;
            }
            return this.c < qb8Var.c && it.hasNext();
        }

        @Override // java.util.Iterator
        public final T next() {
            qb8<T> qb8Var;
            Iterator<T> it;
            while (true) {
                int i = this.c;
                qb8Var = this.d;
                int i2 = qb8Var.b;
                it = this.b;
                if (i >= i2 || !it.hasNext()) {
                    break;
                }
                it.next();
                this.c++;
            }
            int i3 = this.c;
            if (i3 < qb8Var.c) {
                this.c = i3 + 1;
                return it.next();
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
    public qb8(zo7<? extends T> zo7Var, int i, int i2) {
        zo7Var.getClass();
        this.a = zo7Var;
        this.b = i;
        this.c = i2;
        if (i < 0) {
            c9.f(jh.b(i, "startIndex should be non-negative, but is "));
            throw null;
        }
        if (i2 < 0) {
            c9.f(jh.b(i2, "endIndex should be non-negative, but is "));
            throw null;
        }
        if (i2 >= i) {
            return;
        }
        c9.f(rz0.c(i2, i, "endIndex should be not less than startIndex, but was ", " < "));
        throw null;
    }

    @Override // defpackage.it2
    public final zo7<T> a(int i) {
        int i2 = this.c;
        int i3 = this.b;
        return i >= i2 - i3 ? nx2.a : new qb8(this.a, i3 + i, i2);
    }

    @Override // defpackage.it2
    public final zo7<T> b(int i) {
        int i2 = this.c;
        int i3 = this.b;
        return i >= i2 - i3 ? this : new qb8(this.a, i3, i + i3);
    }

    @Override // defpackage.zo7
    public final Iterator<T> iterator() {
        return new a(this);
    }
}
