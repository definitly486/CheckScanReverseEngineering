package androidx.room;

import defpackage.bm3;
import defpackage.o22;

/* JADX INFO: loaded from: classes3.dex */
public final class RoomExternalOperationElement implements o22.a, o22.b<RoomExternalOperationElement> {
    public static final RoomExternalOperationElement INSTANCE = new RoomExternalOperationElement();

    private RoomExternalOperationElement() {
    }

    @Override // defpackage.o22
    public <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) o22.a.C0306a.a(this, r, bm3Var);
    }

    @Override // defpackage.o22
    public <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) o22.a.C0306a.b(this, bVar);
    }

    @Override // o22.a
    public o22.b<RoomExternalOperationElement> getKey() {
        return INSTANCE;
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
