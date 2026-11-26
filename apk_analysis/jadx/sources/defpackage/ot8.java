package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ot8<T> implements it8<T> {
    public final T b;
    public final ThreadLocal<T> c;
    public final qt8 d;

    /* JADX WARN: Multi-variable type inference failed */
    public ot8(ThreadLocal threadLocal, Object obj) {
        this.b = obj;
        this.c = threadLocal;
        this.d = new qt8(threadLocal);
    }

    @Override // defpackage.o22
    public final <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return bm3Var.invoke(r, this);
    }

    @Override // defpackage.o22
    public final <E extends o22.a> E get(o22.b<E> bVar) {
        if (this.d.equals(bVar)) {
            return this;
        }
        return null;
    }

    @Override // o22.a
    public final o22.b<?> getKey() {
        return this.d;
    }

    @Override // defpackage.o22
    public final o22 minusKey(o22.b<?> bVar) {
        return this.d.equals(bVar) ? gx2.b : this;
    }

    @Override // defpackage.o22
    public final o22 plus(o22 o22Var) {
        return o22.a.C0306a.d(this, o22Var);
    }

    @Override // defpackage.it8
    public final void restoreThreadContext(o22 o22Var, T t) {
        this.c.set(t);
    }

    public final String toString() {
        return "ThreadLocal(value=" + this.b + ", threadLocal = " + this.c + ')';
    }

    @Override // defpackage.it8
    public final T updateThreadContext(o22 o22Var) {
        ThreadLocal<T> threadLocal = this.c;
        T t = threadLocal.get();
        threadLocal.set(this.b);
        return t;
    }
}
