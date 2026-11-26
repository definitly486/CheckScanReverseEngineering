package androidx.room;

import defpackage.bm3;
import defpackage.e02;

/* JADX INFO: loaded from: classes3.dex */
public interface TransactionScope<T> extends PooledConnection {
    Object rollback(T t, e02<?> e02Var);

    <R> Object withNestedTransaction(bm3<? super TransactionScope<R>, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var);
}
