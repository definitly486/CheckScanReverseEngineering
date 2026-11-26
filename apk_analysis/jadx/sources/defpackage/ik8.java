package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class ik8<T> implements zo7<T> {
    public final zo7<T> a;
    public final nl3<T, Boolean> b;

    public static final class a implements Iterator<T>, re4 {
        public final Iterator<T> b;
        public int c = -1;
        public T d;
        public final /* synthetic */ ik8<T> e;

        public a(ik8<T> ik8Var) {
            this.e = ik8Var;
            this.b = ik8Var.a.iterator();
        }

        public final void a() {
            Iterator<T> it = this.b;
            if (it.hasNext()) {
                T next = it.next();
                if (this.e.b.invoke(next).booleanValue()) {
                    this.c = 1;
                    this.d = next;
                    return;
                }
            }
            this.c = 0;
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
    public ik8(zo7<? extends T> zo7Var, nl3<? super T, Boolean> nl3Var) {
        this.a = zo7Var;
        this.b = nl3Var;
    }

    @Override // defpackage.zo7
    public final Iterator<T> iterator() {
        return new a(this);
    }
}
