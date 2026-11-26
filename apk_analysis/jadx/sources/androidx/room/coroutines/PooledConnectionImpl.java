package androidx.room.coroutines;

import android.database.SQLException;
import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.concurrent.ThreadLocal_jvmAndroidKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.f2;
import defpackage.fr;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.r57;
import defpackage.sj0;
import defpackage.yg5;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes3.dex */
final class PooledConnectionImpl implements Transactor, RawConnectionAccessor {
    private final ConnectionElementKey connectionElementKey;
    private final ConnectionWithLock delegate;
    private final boolean isReadOnly;
    private volatile boolean isRecycled;
    private final fr<TransactionItem> transactionStack;

    public final class StatementWrapper implements SQLiteStatement {
        private final SQLiteStatement delegate;
        final /* synthetic */ PooledConnectionImpl this$0;
        private final long threadId;

        public StatementWrapper(PooledConnectionImpl pooledConnectionImpl, SQLiteStatement sQLiteStatement) {
            sQLiteStatement.getClass();
            this.this$0 = pooledConnectionImpl;
            this.delegate = sQLiteStatement;
            this.threadId = ThreadLocal_jvmAndroidKt.currentThreadId();
        }

        private final <R> R withStateCheck(ll3<? extends R> ll3Var) {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return ll3Var.invoke();
            }
            throw f2.d(21, "Attempted to use statement on a different thread");
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindBlob */
        public void mo9361bindBlob(int i, byte[] bArr) {
            bArr.getClass();
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId != ThreadLocal_jvmAndroidKt.currentThreadId()) {
                throw f2.d(21, "Attempted to use statement on a different thread");
            }
            this.delegate.mo9361bindBlob(i, bArr);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindDouble */
        public void mo9362bindDouble(int i, double d) {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId != ThreadLocal_jvmAndroidKt.currentThreadId()) {
                throw f2.d(21, "Attempted to use statement on a different thread");
            }
            this.delegate.mo9362bindDouble(i, d);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindLong */
        public void mo9363bindLong(int i, long j) {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId != ThreadLocal_jvmAndroidKt.currentThreadId()) {
                throw f2.d(21, "Attempted to use statement on a different thread");
            }
            this.delegate.mo9363bindLong(i, j);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindNull */
        public void mo9364bindNull(int i) {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId != ThreadLocal_jvmAndroidKt.currentThreadId()) {
                throw f2.d(21, "Attempted to use statement on a different thread");
            }
            this.delegate.mo9364bindNull(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindText */
        public void mo9365bindText(int i, String str) {
            str.getClass();
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId != ThreadLocal_jvmAndroidKt.currentThreadId()) {
                throw f2.d(21, "Attempted to use statement on a different thread");
            }
            this.delegate.mo9365bindText(i, str);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: clearBindings */
        public void mo9366clearBindings() {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId != ThreadLocal_jvmAndroidKt.currentThreadId()) {
                throw f2.d(21, "Attempted to use statement on a different thread");
            }
            this.delegate.mo9366clearBindings();
        }

        @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
        public void close() {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId != ThreadLocal_jvmAndroidKt.currentThreadId()) {
                throw f2.d(21, "Attempted to use statement on a different thread");
            }
            this.delegate.close();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public byte[] getBlob(int i) {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getBlob(i);
            }
            throw f2.d(21, "Attempted to use statement on a different thread");
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnCount() {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getColumnCount();
            }
            throw f2.d(21, "Attempted to use statement on a different thread");
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getColumnName(int i) {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getColumnName(i);
            }
            throw f2.d(21, "Attempted to use statement on a different thread");
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnType(int i) {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getColumnType(i);
            }
            throw f2.d(21, "Attempted to use statement on a different thread");
        }

        @Override // androidx.sqlite.SQLiteStatement
        public double getDouble(int i) {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getDouble(i);
            }
            throw f2.d(21, "Attempted to use statement on a different thread");
        }

        @Override // androidx.sqlite.SQLiteStatement
        public long getLong(int i) {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getLong(i);
            }
            throw f2.d(21, "Attempted to use statement on a different thread");
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getText(int i) {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getText(i);
            }
            throw f2.d(21, "Attempted to use statement on a different thread");
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean isNull(int i) {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.isNull(i);
            }
            throw f2.d(21, "Attempted to use statement on a different thread");
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void reset() {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId != ThreadLocal_jvmAndroidKt.currentThreadId()) {
                throw f2.d(21, "Attempted to use statement on a different thread");
            }
            this.delegate.reset();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean step() {
            if (this.this$0.isRecycled) {
                throw f2.d(21, "Statement is recycled");
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.step();
            }
            throw f2.d(21, "Attempted to use statement on a different thread");
        }
    }

    public final class TransactionImpl<T> implements TransactionScope<T>, RawConnectionAccessor {
        public TransactionImpl() {
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        public SQLiteConnection getRawConnection() {
            return PooledConnectionImpl.this.getRawConnection();
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // androidx.room.TransactionScope
        public Object rollback(T t, e02<?> e02Var) throws ConnectionPool.RollbackException {
            PooledConnectionImpl$TransactionImpl$rollback$1 pooledConnectionImpl$TransactionImpl$rollback$1;
            Object obj;
            PooledConnectionImpl pooledConnectionImpl;
            yg5 yg5Var;
            if (e02Var instanceof PooledConnectionImpl$TransactionImpl$rollback$1) {
                pooledConnectionImpl$TransactionImpl$rollback$1 = (PooledConnectionImpl$TransactionImpl$rollback$1) e02Var;
                int i = pooledConnectionImpl$TransactionImpl$rollback$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    pooledConnectionImpl$TransactionImpl$rollback$1.label = i - Integer.MIN_VALUE;
                } else {
                    pooledConnectionImpl$TransactionImpl$rollback$1 = new PooledConnectionImpl$TransactionImpl$rollback$1(this, e02Var);
                }
            } else {
                pooledConnectionImpl$TransactionImpl$rollback$1 = new PooledConnectionImpl$TransactionImpl$rollback$1(this, e02Var);
            }
            Object obj2 = pooledConnectionImpl$TransactionImpl$rollback$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = pooledConnectionImpl$TransactionImpl$rollback$1.label;
            if (i2 == 0) {
                r57.b(obj2);
                PooledConnectionImpl pooledConnectionImpl2 = PooledConnectionImpl.this;
                if (pooledConnectionImpl2.isRecycled) {
                    throw f2.d(21, "Connection is recycled");
                }
                ConnectionElement connectionElement = (ConnectionElement) pooledConnectionImpl$TransactionImpl$rollback$1.getContext().get(pooledConnectionImpl2.getConnectionElementKey());
                if (connectionElement == null || connectionElement.getConnectionWrapper() != pooledConnectionImpl2) {
                    throw f2.d(21, "Attempted to use connection on a different coroutine");
                }
                if (pooledConnectionImpl2.transactionStack.isEmpty()) {
                    ah.f("Not in a transaction");
                    return null;
                }
                ConnectionWithLock delegate = pooledConnectionImpl2.getDelegate();
                pooledConnectionImpl$TransactionImpl$rollback$1.L$0 = t;
                pooledConnectionImpl$TransactionImpl$rollback$1.L$1 = pooledConnectionImpl2;
                pooledConnectionImpl$TransactionImpl$rollback$1.L$2 = delegate;
                pooledConnectionImpl$TransactionImpl$rollback$1.label = 1;
                if (delegate.lock(null, pooledConnectionImpl$TransactionImpl$rollback$1) == a32Var) {
                    return a32Var;
                }
                obj = t;
                pooledConnectionImpl = pooledConnectionImpl2;
                yg5Var = delegate;
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                yg5Var = (yg5) pooledConnectionImpl$TransactionImpl$rollback$1.L$2;
                pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$TransactionImpl$rollback$1.L$1;
                obj = pooledConnectionImpl$TransactionImpl$rollback$1.L$0;
                r57.b(obj2);
            }
            try {
                ((TransactionItem) pooledConnectionImpl.transactionStack.last()).setShouldRollback(true);
                j59 j59Var = j59.a;
                throw new ConnectionPool.RollbackException(obj);
            } finally {
                yg5Var.unlock(null);
            }
        }

        @Override // androidx.room.PooledConnection
        public <R> Object usePrepared(String str, nl3<? super SQLiteStatement, ? extends R> nl3Var, e02<? super R> e02Var) {
            return PooledConnectionImpl.this.usePrepared(str, nl3Var, e02Var);
        }

        @Override // androidx.room.TransactionScope
        public <R> Object withNestedTransaction(bm3<? super TransactionScope<R>, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
            PooledConnectionImpl pooledConnectionImpl = PooledConnectionImpl.this;
            if (pooledConnectionImpl.isRecycled) {
                throw f2.d(21, "Connection is recycled");
            }
            ConnectionElement connectionElement = (ConnectionElement) e02Var.getContext().get(pooledConnectionImpl.getConnectionElementKey());
            if (connectionElement == null || connectionElement.getConnectionWrapper() != pooledConnectionImpl) {
                throw f2.d(21, "Attempted to use connection on a different coroutine");
            }
            return pooledConnectionImpl.transaction(null, bm3Var, e02Var);
        }
    }

    public static final class TransactionItem {
        private final int id;
        private boolean shouldRollback;

        public TransactionItem(int i, boolean z) {
            this.id = i;
            this.shouldRollback = z;
        }

        public final int getId() {
            return this.id;
        }

        public final boolean getShouldRollback() {
            return this.shouldRollback;
        }

        public final void setShouldRollback(boolean z) {
            this.shouldRollback = z;
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

    /* JADX INFO: renamed from: androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1, reason: invalid class name */
    @bd2(c = "androidx.room.coroutines.PooledConnectionImpl", f = "ConnectionPoolImpl.kt", l = {629}, m = "beginTransaction")
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PooledConnectionImpl.this.beginTransaction(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PooledConnectionImpl$endTransaction$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.coroutines.PooledConnectionImpl", f = "ConnectionPoolImpl.kt", l = {629}, m = "endTransaction")
    public static final class C07301 extends f02 {
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public C07301(e02<? super C07301> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PooledConnectionImpl.this.endTransaction(false, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PooledConnectionImpl$transaction$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.coroutines.PooledConnectionImpl", f = "ConnectionPoolImpl.kt", l = {464, 468, 482, 482, 482}, m = "transaction")
    public static final class C07311<R> extends f02 {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C07311(e02<? super C07311> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PooledConnectionImpl.this.transaction(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PooledConnectionImpl$usePrepared$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.coroutines.PooledConnectionImpl", f = "ConnectionPoolImpl.kt", l = {640}, m = "usePrepared")
    public static final class C07321<R> extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C07321(e02<? super C07321> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PooledConnectionImpl.this.usePrepared(null, null, this);
        }
    }

    public PooledConnectionImpl(ConnectionElementKey connectionElementKey, ConnectionWithLock connectionWithLock, boolean z) {
        connectionElementKey.getClass();
        connectionWithLock.getClass();
        this.connectionElementKey = connectionElementKey;
        this.delegate = connectionWithLock;
        this.isReadOnly = z;
        this.transactionStack = new fr<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object beginTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        yg5 yg5Var;
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
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            yg5Var = this.delegate;
            anonymousClass1.L$0 = sQLiteTransactionType;
            anonymousClass1.L$1 = yg5Var;
            anonymousClass1.label = 1;
            if (yg5Var.lock(null, anonymousClass1) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5 yg5Var2 = (yg5) anonymousClass1.L$1;
            Transactor.SQLiteTransactionType sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) anonymousClass1.L$0;
            r57.b(obj);
            yg5Var = yg5Var2;
            sQLiteTransactionType = sQLiteTransactionType2;
        }
        try {
            int size = this.transactionStack.size();
            if (this.transactionStack.isEmpty()) {
                int i3 = WhenMappings.$EnumSwitchMapping$0[sQLiteTransactionType.ordinal()];
                if (i3 == 1) {
                    SQLite.execSQL(this.delegate, "BEGIN DEFERRED TRANSACTION");
                } else if (i3 == 2) {
                    SQLite.execSQL(this.delegate, "BEGIN IMMEDIATE TRANSACTION");
                } else {
                    if (i3 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    SQLite.execSQL(this.delegate, "BEGIN EXCLUSIVE TRANSACTION");
                }
            } else {
                SQLite.execSQL(this.delegate, "SAVEPOINT '" + size + '\'');
            }
            this.transactionStack.addLast(new TransactionItem(size, false));
            j59 j59Var = j59.a;
            yg5Var.unlock(null);
            return j59Var;
        } catch (Throwable th) {
            yg5Var.unlock(null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object endTransaction(boolean z, e02<? super j59> e02Var) {
        C07301 c07301;
        yg5 yg5Var;
        if (e02Var instanceof C07301) {
            c07301 = (C07301) e02Var;
            int i = c07301.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07301.label = i - Integer.MIN_VALUE;
            } else {
                c07301 = new C07301(e02Var);
            }
        } else {
            c07301 = new C07301(e02Var);
        }
        Object obj = c07301.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c07301.label;
        if (i2 == 0) {
            r57.b(obj);
            ConnectionWithLock connectionWithLock = this.delegate;
            c07301.L$0 = connectionWithLock;
            c07301.Z$0 = z;
            c07301.label = 1;
            if (connectionWithLock.lock(null, c07301) == a32Var) {
                return a32Var;
            }
            yg5Var = connectionWithLock;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = c07301.Z$0;
            yg5Var = (yg5) c07301.L$0;
            r57.b(obj);
        }
        try {
            if (this.transactionStack.isEmpty()) {
                throw new IllegalStateException("Not in a transaction");
            }
            TransactionItem transactionItem = (TransactionItem) nn1.E(this.transactionStack);
            if (!z || transactionItem.getShouldRollback()) {
                boolean zIsEmpty = this.transactionStack.isEmpty();
                ConnectionWithLock connectionWithLock2 = this.delegate;
                if (zIsEmpty) {
                    SQLite.execSQL(connectionWithLock2, "ROLLBACK TRANSACTION");
                } else {
                    SQLite.execSQL(connectionWithLock2, "ROLLBACK TRANSACTION TO SAVEPOINT '" + transactionItem.getId() + '\'');
                }
            } else {
                boolean zIsEmpty2 = this.transactionStack.isEmpty();
                ConnectionWithLock connectionWithLock3 = this.delegate;
                if (zIsEmpty2) {
                    SQLite.execSQL(connectionWithLock3, "END TRANSACTION");
                } else {
                    SQLite.execSQL(connectionWithLock3, "RELEASE SAVEPOINT '" + transactionItem.getId() + '\'');
                }
            }
            j59 j59Var = j59.a;
            yg5Var.unlock(null);
            return j59Var;
        } catch (Throwable th) {
            yg5Var.unlock(null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:41:0x0085  */
    /* JADX WARN: Code duplicated, block: B:45:0x0091 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:60:0x00ba A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:61:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:65:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final <R> Object transaction(Transactor.SQLiteTransactionType sQLiteTransactionType, bm3<? super TransactionScope<R>, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) throws Throwable {
        C07311 c07311;
        Throwable th;
        Throwable th2;
        int i;
        boolean z;
        if (e02Var instanceof C07311) {
            c07311 = (C07311) e02Var;
            int i2 = c07311.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c07311.label = i2 - Integer.MIN_VALUE;
            } else {
                c07311 = new C07311(e02Var);
            }
        } else {
            c07311 = new C07311(e02Var);
        }
        Object objInvoke = c07311.result;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i3 = c07311.label;
        ConnectionPool.RollbackException rollbackException = null;
        try {
            if (i3 == 0) {
                r57.b(objInvoke);
                if (sQLiteTransactionType == null) {
                    sQLiteTransactionType = Transactor.SQLiteTransactionType.DEFERRED;
                }
                c07311.L$0 = bm3Var;
                c07311.label = 1;
                if (beginTransaction(sQLiteTransactionType, c07311) != obj) {
                }
                return obj;
            }
            if (i3 == 1) {
                bm3Var = (bm3) c07311.L$0;
                r57.b(objInvoke);
            } else {
                if (i3 != 2) {
                    if (i3 == 3 || i3 == 4) {
                        Object obj2 = c07311.L$0;
                        r57.b(objInvoke);
                        return obj2;
                    }
                    if (i3 != 5) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    th = (Throwable) c07311.L$1;
                    th2 = (Throwable) c07311.L$0;
                    try {
                        r57.b(objInvoke);
                        throw th;
                    } catch (SQLException e) {
                        e = e;
                        if (th2 != null) {
                            throw e;
                        }
                        sj0.c(th2, e);
                        throw th;
                    }
                }
                i = c07311.I$0;
                r57.b(objInvoke);
            }
            z = i != 0;
            c07311.L$0 = objInvoke;
            c07311.label = 3;
            if (endTransaction(z, c07311) != obj) {
                return obj;
            }
            return objInvoke;
            TransactionImpl transactionImpl = new TransactionImpl();
            c07311.L$0 = null;
            c07311.I$0 = 1;
            c07311.label = 2;
            objInvoke = bm3Var.invoke(transactionImpl, c07311);
            if (objInvoke != obj) {
                i = 1;
                if (i != 0) {
                }
                c07311.L$0 = objInvoke;
                c07311.label = 3;
                if (endTransaction(z, c07311) != obj) {
                    return objInvoke;
                }
            }
        } catch (Throwable th3) {
            try {
                if (th3 instanceof ConnectionPool.RollbackException) {
                    Object result = th3.getResult();
                    c07311.L$0 = result;
                    c07311.label = 4;
                    if (endTransaction(false, c07311) == obj) {
                        return obj;
                    }
                    return result;
                }
                try {
                    throw th3;
                } catch (Throwable th4) {
                    rollbackException = th3;
                    th = th4;
                    c07311.L$0 = rollbackException;
                    c07311.L$1 = th;
                    c07311.label = 5;
                    if (endTransaction(false, c07311) != obj) {
                        throw th;
                    }
                    return obj;
                }
                c07311.L$0 = rollbackException;
                c07311.L$1 = th;
                c07311.label = 5;
                if (endTransaction(false, c07311) != obj) {
                    throw th;
                }
                return obj;
            } catch (SQLException e2) {
                e = e2;
                th = th;
                th2 = rollbackException;
                if (th2 != null) {
                    throw e;
                }
                sj0.c(th2, e);
                throw th;
            }
        }
        return obj;
    }

    private final <R> Object withStateCheck(ll3<? extends R> ll3Var, e02<? super R> e02Var) {
        if (this.isRecycled) {
            throw f2.d(21, "Connection is recycled");
        }
        throw null;
    }

    public final ConnectionElementKey getConnectionElementKey() {
        return this.connectionElementKey;
    }

    public final ConnectionWithLock getDelegate() {
        return this.delegate;
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    public SQLiteConnection getRawConnection() {
        return this.delegate;
    }

    @Override // androidx.room.Transactor
    public Object inTransaction(e02<? super Boolean> e02Var) {
        if (this.isRecycled) {
            throw f2.d(21, "Connection is recycled");
        }
        ConnectionElement connectionElement = (ConnectionElement) e02Var.getContext().get(getConnectionElementKey());
        if (connectionElement == null || connectionElement.getConnectionWrapper() != this) {
            throw f2.d(21, "Attempted to use connection on a different coroutine");
        }
        return Boolean.valueOf(!this.transactionStack.isEmpty() || this.delegate.inTransaction());
    }

    public final boolean isReadOnly() {
        return this.isReadOnly;
    }

    public final void markRecycled() {
        if (this.isRecycled) {
            return;
        }
        this.isRecycled = true;
        if (this.delegate.inTransaction()) {
            SQLite.execSQL(this.delegate, "ROLLBACK TRANSACTION");
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.room.PooledConnection
    public <R> Object usePrepared(String str, nl3<? super SQLiteStatement, ? extends R> nl3Var, e02<? super R> e02Var) {
        C07321 c07321;
        yg5 yg5Var;
        if (e02Var instanceof C07321) {
            c07321 = (C07321) e02Var;
            int i = c07321.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07321.label = i - Integer.MIN_VALUE;
            } else {
                c07321 = new C07321(e02Var);
            }
        } else {
            c07321 = new C07321(e02Var);
        }
        Object obj = c07321.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c07321.label;
        if (i2 == 0) {
            r57.b(obj);
            if (this.isRecycled) {
                throw f2.d(21, "Connection is recycled");
            }
            ConnectionElement connectionElement = (ConnectionElement) c07321.getContext().get(getConnectionElementKey());
            if (connectionElement == null || connectionElement.getConnectionWrapper() != this) {
                throw f2.d(21, "Attempted to use connection on a different coroutine");
            }
            yg5Var = this.delegate;
            c07321.L$0 = str;
            c07321.L$1 = nl3Var;
            c07321.L$2 = yg5Var;
            c07321.label = 1;
            if (yg5Var.lock(null, c07321) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5 yg5Var2 = (yg5) c07321.L$2;
            nl3Var = (nl3) c07321.L$1;
            String str2 = (String) c07321.L$0;
            r57.b(obj);
            yg5Var = yg5Var2;
            str = str2;
        }
        try {
            StatementWrapper statementWrapper = new StatementWrapper(this, this.delegate.prepare(str));
            try {
                R rInvoke = nl3Var.invoke(statementWrapper);
                aq5.c(statementWrapper, null);
                yg5Var.unlock(null);
                return rInvoke;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    aq5.c(statementWrapper, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            yg5Var.unlock(null);
            throw th3;
        }
    }

    @Override // androidx.room.Transactor
    public <R> Object withTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, bm3<? super TransactionScope<R>, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        if (this.isRecycled) {
            throw f2.d(21, "Connection is recycled");
        }
        ConnectionElement connectionElement = (ConnectionElement) e02Var.getContext().get(getConnectionElementKey());
        if (connectionElement == null || connectionElement.getConnectionWrapper() != this) {
            throw f2.d(21, "Attempted to use connection on a different coroutine");
        }
        return transaction(sQLiteTransactionType, bm3Var, e02Var);
    }
}
