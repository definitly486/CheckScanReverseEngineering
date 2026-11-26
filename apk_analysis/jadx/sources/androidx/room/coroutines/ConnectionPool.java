package androidx.room.coroutines;

import androidx.room.Transactor;
import defpackage.bm3;
import defpackage.e02;

/* JADX INFO: loaded from: classes3.dex */
public interface ConnectionPool extends AutoCloseable {

    public static final class RollbackException extends Throwable {
        private final Object result;

        public RollbackException(Object obj) {
            this.result = obj;
        }

        public final Object getResult() {
            return this.result;
        }
    }

    @Override // java.lang.AutoCloseable
    void close();

    <R> Object useConnection(boolean z, bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var);
}
