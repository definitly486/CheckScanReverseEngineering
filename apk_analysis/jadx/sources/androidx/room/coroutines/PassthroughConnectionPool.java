package androidx.room.coroutines;

import androidx.room.Transactor;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bg3;
import defpackage.bm3;
import defpackage.cl4;
import defpackage.e02;
import defpackage.fh8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
public final class PassthroughConnectionPool implements ConnectionPool {
    private final cl4<SQLiteConnection> connection;
    private final SQLiteDriver driver;
    private final String fileName;
    private final bm3<nl3<? super e02<Object>, ? extends Object>, e02<Object>, Object> transactionWrapper;

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnectionPool$useConnection$2, reason: invalid class name */
    @bd2(c = "androidx.room.coroutines.PassthroughConnectionPool$useConnection$2", f = "PassthroughConnectionPool.kt", l = {59}, m = "invokeSuspend")
    public static final class AnonymousClass2<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
        final /* synthetic */ bm3<Transactor, e02<? super R>, Object> $block;
        final /* synthetic */ PassthroughConnection $connectionWrapper;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, PassthroughConnection passthroughConnection, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$block = bm3Var;
            this.$connectionWrapper = passthroughConnection;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$block, this.$connectionWrapper, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            bm3<Transactor, e02<? super R>, Object> bm3Var = this.$block;
            PassthroughConnection passthroughConnection = this.$connectionWrapper;
            this.label = 1;
            Object objInvoke = bm3Var.invoke(passthroughConnection, this);
            return objInvoke == a32Var ? a32Var : objInvoke;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PassthroughConnectionPool(SQLiteDriver sQLiteDriver, String str, bm3<? super nl3<? super e02<Object>, ? extends Object>, ? super e02<Object>, ? extends Object> bm3Var) {
        sQLiteDriver.getClass();
        str.getClass();
        this.driver = sQLiteDriver;
        this.fileName = str;
        this.transactionWrapper = bm3Var;
        this.connection = new fh8(new bg3(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SQLiteConnection connection$lambda$0(PassthroughConnectionPool passthroughConnectionPool) {
        return passthroughConnectionPool.driver.open(passthroughConnectionPool.fileName);
    }

    @Override // androidx.room.coroutines.ConnectionPool, java.lang.AutoCloseable
    public void close() {
        if (this.connection.isInitialized()) {
            this.connection.getValue().close();
        }
    }

    @Override // androidx.room.coroutines.ConnectionPool
    public <R> Object useConnection(boolean z, bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        ConnectionElement connectionElement = (ConnectionElement) e02Var.getContext().get(ConnectionElement.Key);
        PassthroughConnection connectionWrapper = connectionElement != null ? connectionElement.getConnectionWrapper() : null;
        if (connectionWrapper != null) {
            return bm3Var.invoke(connectionWrapper, e02Var);
        }
        PassthroughConnection passthroughConnection = new PassthroughConnection(this.transactionWrapper, this.connection.getValue());
        return av0.d(new ConnectionElement(passthroughConnection), new AnonymousClass2(bm3Var, passthroughConnection, null), e02Var);
    }

    public static final class ConnectionElement implements o22.a {
        public static final Key Key = new Key(null);
        private final PassthroughConnection connectionWrapper;

        public ConnectionElement(PassthroughConnection passthroughConnection) {
            passthroughConnection.getClass();
            this.connectionWrapper = passthroughConnection;
        }

        @Override // defpackage.o22
        public <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
            return (R) o22.a.C0306a.a(this, r, bm3Var);
        }

        @Override // defpackage.o22
        public <E extends o22.a> E get(o22.b<E> bVar) {
            return (E) o22.a.C0306a.b(this, bVar);
        }

        public final PassthroughConnection getConnectionWrapper() {
            return this.connectionWrapper;
        }

        @Override // o22.a
        public o22.b<ConnectionElement> getKey() {
            return Key;
        }

        @Override // defpackage.o22
        public o22 minusKey(o22.b<?> bVar) {
            return o22.a.C0306a.c(this, bVar);
        }

        @Override // defpackage.o22
        public o22 plus(o22 o22Var) {
            return o22.a.C0306a.d(this, o22Var);
        }

        public static final class Key implements o22.b<ConnectionElement> {
            public /* synthetic */ Key(jh2 jh2Var) {
                this();
            }

            private Key() {
            }
        }
    }

    public /* synthetic */ PassthroughConnectionPool(SQLiteDriver sQLiteDriver, String str, bm3 bm3Var, int i, jh2 jh2Var) {
        this(sQLiteDriver, str, (i & 4) != 0 ? null : bm3Var);
    }
}
