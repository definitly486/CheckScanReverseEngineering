package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class m44<T> implements zo7<j44<? extends T>> {
    public final pn1 a;

    public static final class a implements Iterator<j44<? extends T>>, re4 {
        public final Iterator<T> b;
        public int c;

        public a(m44<T> m44Var) {
            this.b = m44Var.a.a.iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            int i = this.c;
            this.c = i + 1;
            if (i >= 0) {
                return new j44(i, this.b.next());
            }
            u96.o();
            throw null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public m44(pn1 pn1Var) {
        this.a = pn1Var;
    }

    @Override // defpackage.zo7
    public final Iterator<j44<T>> iterator() {
        return new a(this);
    }
}
