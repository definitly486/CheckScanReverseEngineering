package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class e29<T, R> implements zo7<R> {
    public final zo7<T> a;
    public final bm3<Integer, T, R> b;

    public static final class a implements Iterator<R>, re4 {
        public final Iterator<T> b;
        public int c;
        public final /* synthetic */ e29<T, R> d;

        public a(e29<T, R> e29Var) {
            this.d = e29Var;
            this.b = e29Var.a.iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b.hasNext();
        }

        @Override // java.util.Iterator
        public final R next() {
            bm3<Integer, T, R> bm3Var = this.d.b;
            int i = this.c;
            this.c = i + 1;
            if (i >= 0) {
                return (R) bm3Var.invoke(Integer.valueOf(i), this.b.next());
            }
            u96.o();
            throw null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e29(zo7<? extends T> zo7Var, bm3<? super Integer, ? super T, ? extends R> bm3Var) {
        this.a = zo7Var;
        this.b = bm3Var;
    }

    @Override // defpackage.zo7
    public final Iterator<R> iterator() {
        return new a(this);
    }
}
