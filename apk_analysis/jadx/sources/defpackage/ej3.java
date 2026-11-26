package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ej3 implements o22 {
    public final o22 b;

    public ej3(o22 o22Var) {
        this.b = o22Var;
    }

    public abstract ok2 b(ej3 ej3Var, o22 o22Var);

    public final boolean equals(Object obj) {
        return aa4.e(this.b, obj);
    }

    @Override // defpackage.o22
    public final <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) this.b.fold(r, bm3Var);
    }

    @Override // defpackage.o22
    public final <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) this.b.get(bVar);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // defpackage.o22
    public final o22 minusKey(o22.b<?> bVar) {
        return b(this, this.b.minusKey(bVar));
    }

    @Override // defpackage.o22
    public final o22 plus(o22 o22Var) {
        return b(this, this.b.plus(o22Var));
    }

    public final String toString() {
        return "ForwardingCoroutineContext(delegate=" + this.b + ")";
    }
}
