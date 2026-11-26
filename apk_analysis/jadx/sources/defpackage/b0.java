package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b0 implements o22.a {
    private final o22.b<?> key;

    public b0(o22.b<?> bVar) {
        bVar.getClass();
        this.key = bVar;
    }

    @Override // defpackage.o22
    public /* bridge */ <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) o22.a.C0306a.a(this, r, bm3Var);
    }

    @Override // defpackage.o22
    public /* bridge */ <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) o22.a.C0306a.b(this, bVar);
    }

    @Override // o22.a
    public o22.b<?> getKey() {
        return this.key;
    }

    @Override // defpackage.o22
    public /* bridge */ o22 minusKey(o22.b<?> bVar) {
        return o22.a.C0306a.c(this, bVar);
    }

    @Override // defpackage.o22
    public /* bridge */ o22 plus(o22 o22Var) {
        return o22.a.C0306a.d(this, o22Var);
    }
}
