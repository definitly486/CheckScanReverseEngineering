package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class i59 implements o22.a, o22.b<i59> {
    public static final i59 b = new i59();

    @Override // defpackage.o22
    public final <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return bm3Var.invoke(r, this);
    }

    @Override // defpackage.o22
    public final /* bridge */ <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) o22.a.C0306a.b(this, bVar);
    }

    @Override // o22.a
    public final o22.b<?> getKey() {
        return this;
    }

    @Override // defpackage.o22
    public final /* bridge */ o22 minusKey(o22.b<?> bVar) {
        return o22.a.C0306a.c(this, bVar);
    }

    @Override // defpackage.o22
    public final /* bridge */ o22 plus(o22 o22Var) {
        return o22.a.C0306a.d(this, o22Var);
    }
}
