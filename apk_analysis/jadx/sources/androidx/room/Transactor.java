package androidx.room;

import defpackage.bm3;
import defpackage.e02;
import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes3.dex */
public interface Transactor extends PooledConnection {

    public enum SQLiteTransactionType {
        DEFERRED,
        IMMEDIATE,
        EXCLUSIVE;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<SQLiteTransactionType> getEntries() {
            return $ENTRIES;
        }
    }

    Object inTransaction(e02<? super Boolean> e02Var);

    <R> Object withTransaction(SQLiteTransactionType sQLiteTransactionType, bm3<? super TransactionScope<R>, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var);
}
