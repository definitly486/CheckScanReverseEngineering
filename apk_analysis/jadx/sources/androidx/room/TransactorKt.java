package androidx.room;

import androidx.sqlite.SQLiteStatement;
import defpackage.a32;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mi;

/* JADX INFO: loaded from: classes3.dex */
public final class TransactorKt {
    public static final <R> Object deferredTransaction(Transactor transactor, bm3<? super TransactionScope<R>, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        return transactor.withTransaction(Transactor.SQLiteTransactionType.DEFERRED, bm3Var, e02Var);
    }

    public static final <R> Object exclusiveTransaction(Transactor transactor, bm3<? super TransactionScope<R>, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        return transactor.withTransaction(Transactor.SQLiteTransactionType.EXCLUSIVE, bm3Var, e02Var);
    }

    public static final Object execSQL(PooledConnection pooledConnection, String str, e02<? super j59> e02Var) {
        Object objUsePrepared = pooledConnection.usePrepared(str, new mi(4), e02Var);
        return objUsePrepared == a32.COROUTINE_SUSPENDED ? objUsePrepared : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean execSQL$lambda$0(SQLiteStatement sQLiteStatement) {
        sQLiteStatement.getClass();
        return sQLiteStatement.step();
    }

    public static final <R> Object immediateTransaction(Transactor transactor, bm3<? super TransactionScope<R>, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        return transactor.withTransaction(Transactor.SQLiteTransactionType.IMMEDIATE, bm3Var, e02Var);
    }
}
