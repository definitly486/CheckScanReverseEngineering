package androidx.room.coroutines;

import defpackage.bm3;
import defpackage.o22;

/* JADX INFO: loaded from: classes3.dex */
final class ConnectionElement implements o22.a {
    private final PooledConnectionImpl connectionWrapper;
    private final o22.b<ConnectionElement> key;

    public ConnectionElement(o22.b<ConnectionElement> bVar, PooledConnectionImpl pooledConnectionImpl) {
        bVar.getClass();
        pooledConnectionImpl.getClass();
        this.key = bVar;
        this.connectionWrapper = pooledConnectionImpl;
    }

    @Override // defpackage.o22
    public <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) o22.a.C0306a.a(this, r, bm3Var);
    }

    @Override // defpackage.o22
    public <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) o22.a.C0306a.b(this, bVar);
    }

    public final PooledConnectionImpl getConnectionWrapper() {
        return this.connectionWrapper;
    }

    @Override // o22.a
    public o22.b<ConnectionElement> getKey() {
        return this.key;
    }

    @Override // defpackage.o22
    public o22 minusKey(o22.b<?> bVar) {
        return o22.a.C0306a.c(this, bVar);
    }

    @Override // defpackage.o22
    public o22 plus(o22 o22Var) {
        return o22.a.C0306a.d(this, o22Var);
    }
}
