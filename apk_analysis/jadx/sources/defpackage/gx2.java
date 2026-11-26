package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class gx2 implements o22, Serializable {
    public static final gx2 b = new gx2();

    private final Object readResolve() {
        return b;
    }

    @Override // defpackage.o22
    public final <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return r;
    }

    @Override // defpackage.o22
    public final <E extends o22.a> E get(o22.b<E> bVar) {
        bVar.getClass();
        return null;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // defpackage.o22
    public final o22 minusKey(o22.b<?> bVar) {
        bVar.getClass();
        return this;
    }

    @Override // defpackage.o22
    public final o22 plus(o22 o22Var) {
        o22Var.getClass();
        return o22Var;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }
}
