package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wq2 implements o22 {
    public final /* synthetic */ o22 b;
    public final Throwable c;

    public wq2(o22 o22Var, Throwable th) {
        this.b = o22Var;
        this.c = th;
    }

    @Override // defpackage.o22
    public final <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) this.b.fold(r, bm3Var);
    }

    @Override // defpackage.o22
    public final <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) this.b.get(bVar);
    }

    @Override // defpackage.o22
    public final o22 minusKey(o22.b<?> bVar) {
        return this.b.minusKey(bVar);
    }

    @Override // defpackage.o22
    public final o22 plus(o22 o22Var) {
        return this.b.plus(o22Var);
    }
}
