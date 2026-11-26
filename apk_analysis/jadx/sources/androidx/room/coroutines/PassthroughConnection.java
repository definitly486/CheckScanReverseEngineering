package androidx.room.coroutines;

import android.database.SQLException;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.tracing.Trace;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.me0;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.sj0;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
final class PassthroughConnection implements Transactor, RawConnectionAccessor {
    private Transactor.SQLiteTransactionType currentTransactionType;
    private final SQLiteConnection delegate;
    private AtomicInteger nestedTransactionCount;
    private final bm3<nl3<? super e02<Object>, ? extends Object>, e02<Object>, Object> transactionWrapper;

    public final class PassthroughTransactor<T> implements TransactionScope<T>, RawConnectionAccessor {
        public PassthroughTransactor() {
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        public SQLiteConnection getRawConnection() {
            return PassthroughConnection.this.getRawConnection();
        }

        @Override // androidx.room.TransactionScope
        public Object rollback(T t, e02<?> e02Var) throws ConnectionPool.RollbackException {
            throw new ConnectionPool.RollbackException(t);
        }

        @Override // androidx.room.PooledConnection
        public <R> Object usePrepared(String str, nl3<? super SQLiteStatement, ? extends R> nl3Var, e02<? super R> e02Var) {
            return PassthroughConnection.this.usePrepared(str, nl3Var, e02Var);
        }

        @Override // androidx.room.TransactionScope
        public <R> Object withNestedTransaction(bm3<? super TransactionScope<R>, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
            PassthroughConnection passthroughConnection = PassthroughConnection.this;
            Transactor.SQLiteTransactionType sQLiteTransactionType = passthroughConnection.currentTransactionType;
            if (sQLiteTransactionType != null) {
                return passthroughConnection.transaction(sQLiteTransactionType, bm3Var, e02Var);
            }
            ah.f("Required value was null.");
            return null;
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Transactor.SQLiteTransactionType.values().length];
            try {
                iArr[Transactor.SQLiteTransactionType.DEFERRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.IMMEDIATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.EXCLUSIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnection$transaction$1, reason: invalid class name */
    @bd2(c = "androidx.room.coroutines.PassthroughConnection", f = "PassthroughConnectionPool.kt", l = {Trace.MAX_TRACE_LABEL_LENGTH}, m = "transaction")
    public static final class AnonymousClass1<R> extends f02 {
        int I$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PassthroughConnection.this.transaction(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnection$usePrepared$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.coroutines.PassthroughConnection", f = "PassthroughConnectionPool.kt", l = {TsExtractor.TS_STREAM_TYPE_DVBSUBS, 91}, m = "usePrepared")
    public static final class C07281<R> extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C07281(e02<? super C07281> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PassthroughConnection.this.usePrepared(null, null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PassthroughConnection(bm3<? super nl3<? super e02<Object>, ? extends Object>, ? super e02<Object>, ? extends Object> bm3Var, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        this.transactionWrapper = bm3Var;
        this.delegate = sQLiteConnection;
        this.nestedTransactionCount = new AtomicInteger(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:59:0x00be A[Catch: SQLException -> 0x00c1, TryCatch #2 {SQLException -> 0x00c1, blocks: (B:57:0x00b6, B:59:0x00be, B:62:0x00c3), top: B:72:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final <R> Object transaction(Transactor.SQLiteTransactionType sQLiteTransactionType, bm3<? super TransactionScope<R>, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        ConnectionPool.RollbackException rollbackException;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object objInvoke = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        int i3 = 1;
        try {
            if (i2 == 0) {
                r57.b(objInvoke);
                int i4 = WhenMappings.$EnumSwitchMapping$0[sQLiteTransactionType.ordinal()];
                if (i4 == 1) {
                    SQLite.execSQL(this.delegate, "BEGIN DEFERRED TRANSACTION");
                } else if (i4 == 2) {
                    SQLite.execSQL(this.delegate, "BEGIN IMMEDIATE TRANSACTION");
                } else {
                    if (i4 != 3) {
                        me0.e();
                        return null;
                    }
                    SQLite.execSQL(this.delegate, "BEGIN EXCLUSIVE TRANSACTION");
                }
                if (this.nestedTransactionCount.incrementAndGet() > 0) {
                    this.currentTransactionType = sQLiteTransactionType;
                }
                PassthroughTransactor passthroughTransactor = new PassthroughTransactor();
                anonymousClass1.I$0 = 1;
                anonymousClass1.label = 1;
                objInvoke = bm3Var.invoke(passthroughTransactor, anonymousClass1);
                if (objInvoke == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i3 = anonymousClass1.I$0;
                r57.b(objInvoke);
            }
            if (this.nestedTransactionCount.decrementAndGet() == 0) {
                this.currentTransactionType = null;
            }
            SQLiteConnection sQLiteConnection = this.delegate;
            if (i3 != 0) {
                SQLite.execSQL(sQLiteConnection, "END TRANSACTION");
                return objInvoke;
            }
            SQLite.execSQL(sQLiteConnection, "ROLLBACK TRANSACTION");
            return objInvoke;
        } catch (Throwable th) {
            try {
                if (th instanceof ConnectionPool.RollbackException) {
                    Object result = th.getResult();
                    if (this.nestedTransactionCount.decrementAndGet() == 0) {
                        this.currentTransactionType = null;
                    }
                    SQLite.execSQL(this.delegate, "ROLLBACK TRANSACTION");
                    return result;
                }
                try {
                    throw th;
                } catch (Throwable th2) {
                    rollbackException = th;
                    th = th2;
                    if (this.nestedTransactionCount.decrementAndGet() == 0) {
                        this.currentTransactionType = null;
                    }
                    SQLite.execSQL(this.delegate, "ROLLBACK TRANSACTION");
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                rollbackException = null;
            }
            try {
                if (this.nestedTransactionCount.decrementAndGet() == 0) {
                    this.currentTransactionType = null;
                }
                SQLite.execSQL(this.delegate, "ROLLBACK TRANSACTION");
                throw th;
            } catch (SQLException e) {
                if (rollbackException == null) {
                    throw e;
                }
                sj0.c(rollbackException, e);
                throw th;
            }
        }
    }

    public final SQLiteConnection getDelegate() {
        return this.delegate;
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    public SQLiteConnection getRawConnection() {
        return this.delegate;
    }

    public final bm3<nl3<? super e02<Object>, ? extends Object>, e02<Object>, Object> getTransactionWrapper() {
        return this.transactionWrapper;
    }

    @Override // androidx.room.Transactor
    public Object inTransaction(e02<? super Boolean> e02Var) {
        return Boolean.valueOf(this.currentTransactionType != null || this.delegate.inTransaction());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.room.PooledConnection
    public <R> Object usePrepared(String str, nl3<? super SQLiteStatement, ? extends R> nl3Var, e02<? super R> e02Var) throws Exception {
        C07281 c07281;
        bm3<nl3<? super e02<Object>, ? extends Object>, e02<Object>, Object> bm3Var;
        if (e02Var instanceof C07281) {
            c07281 = (C07281) e02Var;
            int i = c07281.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07281.label = i - Integer.MIN_VALUE;
            } else {
                c07281 = new C07281(e02Var);
            }
        } else {
            c07281 = new C07281(e02Var);
        }
        Object objInTransaction = c07281.result;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i2 = c07281.label;
        if (i2 == 0) {
            r57.b(objInTransaction);
            c07281.L$0 = str;
            c07281.L$1 = nl3Var;
            c07281.label = 1;
            objInTransaction = inTransaction(c07281);
            if (objInTransaction != obj) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                r57.b(objInTransaction);
                return objInTransaction;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        nl3Var = (nl3) c07281.L$1;
        str = (String) c07281.L$0;
        r57.b(objInTransaction);
        if (((Boolean) objInTransaction).booleanValue() && (bm3Var = this.transactionWrapper) != null) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(str, nl3Var, null);
            c07281.L$0 = null;
            c07281.L$1 = null;
            c07281.label = 2;
            Object objInvoke = bm3Var.invoke(anonymousClass2, c07281);
            return objInvoke == obj ? obj : objInvoke;
        }
        SQLiteStatement sQLiteStatementPrepare = this.delegate.prepare(str);
        try {
            R rInvoke = nl3Var.invoke(sQLiteStatementPrepare);
            aq5.c(sQLiteStatementPrepare, null);
            return rInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    @Override // androidx.room.Transactor
    public <R> Object withTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, bm3<? super TransactionScope<R>, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        bm3<nl3<? super e02<Object>, ? extends Object>, e02<Object>, Object> bm3Var2 = this.transactionWrapper;
        if (bm3Var2 == null) {
            return transaction(sQLiteTransactionType, bm3Var, e02Var);
        }
        Object objInvoke = bm3Var2.invoke(new C07292(sQLiteTransactionType, bm3Var, null), e02Var);
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objInvoke;
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnection$usePrepared$2, reason: invalid class name */
    @bd2(c = "androidx.room.coroutines.PassthroughConnection$usePrepared$2", f = "PassthroughConnectionPool.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super Object>, Object> {
        final /* synthetic */ nl3<SQLiteStatement, R> $block;
        final /* synthetic */ String $sql;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(String str, nl3<? super SQLiteStatement, ? extends R> nl3Var, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.$sql = str;
            this.$block = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return PassthroughConnection.this.new AnonymousClass2(this.$sql, this.$block, e02Var);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(e02<Object> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Exception {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            SQLiteStatement sQLiteStatementPrepare = PassthroughConnection.this.getDelegate().prepare(this.$sql);
            try {
                Object objInvoke = this.$block.invoke(sQLiteStatementPrepare);
                aq5.c(sQLiteStatementPrepare, null);
                return objInvoke;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    aq5.c(sQLiteStatementPrepare, th);
                    throw th2;
                }
            }
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(e02<? super Object> e02Var) {
            return invoke2((e02<Object>) e02Var);
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnection$withTransaction$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.coroutines.PassthroughConnection$withTransaction$2", f = "PassthroughConnectionPool.kt", l = {103}, m = "invokeSuspend")
    public static final class C07292 extends pg8 implements nl3<e02<? super Object>, Object> {
        final /* synthetic */ bm3<TransactionScope<R>, e02<? super R>, Object> $block;
        final /* synthetic */ Transactor.SQLiteTransactionType $type;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C07292(Transactor.SQLiteTransactionType sQLiteTransactionType, bm3<? super TransactionScope<R>, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super C07292> e02Var) {
            super(1, e02Var);
            this.$type = sQLiteTransactionType;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return PassthroughConnection.this.new C07292(this.$type, this.$block, e02Var);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(e02<Object> e02Var) {
            return ((C07292) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
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
            PassthroughConnection passthroughConnection = PassthroughConnection.this;
            Transactor.SQLiteTransactionType sQLiteTransactionType = this.$type;
            bm3<TransactionScope<R>, e02<? super R>, Object> bm3Var = this.$block;
            this.label = 1;
            Object objTransaction = passthroughConnection.transaction(sQLiteTransactionType, bm3Var, this);
            return objTransaction == a32Var ? a32Var : objTransaction;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(e02<? super Object> e02Var) {
            return invoke2((e02<Object>) e02Var);
        }
    }
}
