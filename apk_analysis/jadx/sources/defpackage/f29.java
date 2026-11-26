package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class f29<T, R> implements zo7<R> {
    public final zo7<T> a;
    public final nl3<T, R> b;

    public static final class a implements Iterator<R>, re4 {
        public final Iterator<T> b;
        public final /* synthetic */ f29<T, R> c;

        public a(f29<T, R> f29Var) {
            this.c = f29Var;
            this.b = f29Var.a.iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b.hasNext();
        }

        @Override // java.util.Iterator
        public final R next() {
            return (R) this.c.b.invoke(this.b.next());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f29(zo7<? extends T> zo7Var, nl3<? super T, ? extends R> nl3Var) {
        zo7Var.getClass();
        nl3Var.getClass();
        this.a = zo7Var;
        this.b = nl3Var;
    }

    @Override // defpackage.zo7
    public final Iterator<R> iterator() {
        return new a(this);
    }
}
