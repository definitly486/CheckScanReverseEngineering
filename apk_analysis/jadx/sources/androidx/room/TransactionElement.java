package androidx.room;

import defpackage.bm3;
import defpackage.g02;
import defpackage.jh2;
import defpackage.o22;

/* JADX INFO: loaded from: classes3.dex */
public final class TransactionElement implements o22.a {
    public static final Key Key = new Key(null);
    private final g02 transactionDispatcher;

    public TransactionElement(g02 g02Var) {
        g02Var.getClass();
        this.transactionDispatcher = g02Var;
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
    public o22.b<TransactionElement> getKey() {
        return Key;
    }

    public final g02 getTransactionDispatcher$room_runtime() {
        return this.transactionDispatcher;
    }

    @Override // defpackage.o22
    public o22 minusKey(o22.b<?> bVar) {
        return o22.a.C0306a.c(this, bVar);
    }

    @Override // defpackage.o22
    public o22 plus(o22 o22Var) {
        return o22.a.C0306a.d(this, o22Var);
    }

    public static final class Key implements o22.b<TransactionElement> {
        public /* synthetic */ Key(jh2 jh2Var) {
            this();
        }

        private Key() {
        }
    }
}
