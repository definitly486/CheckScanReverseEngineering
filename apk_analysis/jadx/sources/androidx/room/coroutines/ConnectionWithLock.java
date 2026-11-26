package androidx.room.coroutines;

import androidx.collection.LruCache;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import defpackage.ch5;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.o22;
import defpackage.qn1;
import defpackage.sj0;
import defpackage.ta8;
import defpackage.xl7;
import defpackage.yg5;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class ConnectionWithLock implements SQLiteConnection, yg5 {
    private o22 acquireCoroutineContext;
    private Throwable acquireThrowable;
    private final SQLiteConnection delegate;
    private final yg5 lock;
    private final PreparedStatementCache preparedStatementCache;

    public static final class CachedStatement implements SQLiteStatement {
        private final SQLiteStatement delegate;

        public CachedStatement(SQLiteStatement sQLiteStatement) {
            sQLiteStatement.getClass();
            this.delegate = sQLiteStatement;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindBlob */
        public void mo9361bindBlob(int i, byte[] bArr) {
            bArr.getClass();
            this.delegate.mo9361bindBlob(i, bArr);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindBoolean(int i, boolean z) {
            this.delegate.bindBoolean(i, z);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindDouble */
        public void mo9362bindDouble(int i, double d) {
            this.delegate.mo9362bindDouble(i, d);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindFloat(int i, float f) {
            this.delegate.bindFloat(i, f);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindInt(int i, int i2) {
            this.delegate.bindInt(i, i2);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindLong */
        public void mo9363bindLong(int i, long j) {
            this.delegate.mo9363bindLong(i, j);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindNull */
        public void mo9364bindNull(int i) {
            this.delegate.mo9364bindNull(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindText */
        public void mo9365bindText(int i, String str) {
            str.getClass();
            this.delegate.mo9365bindText(i, str);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: clearBindings */
        public void mo9366clearBindings() {
            this.delegate.mo9366clearBindings();
        }

        @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
        public void close() {
            this.delegate.reset();
            this.delegate.mo9366clearBindings();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public byte[] getBlob(int i) {
            return this.delegate.getBlob(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean getBoolean(int i) {
            return this.delegate.getBoolean(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnCount() {
            return this.delegate.getColumnCount();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getColumnName(int i) {
            return this.delegate.getColumnName(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public List<String> getColumnNames() {
            return this.delegate.getColumnNames();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnType(int i) {
            return this.delegate.getColumnType(i);
        }

        public final SQLiteStatement getDelegate() {
            return this.delegate;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public double getDouble(int i) {
            return this.delegate.getDouble(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public float getFloat(int i) {
            return this.delegate.getFloat(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getInt(int i) {
            return this.delegate.getInt(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public long getLong(int i) {
            return this.delegate.getLong(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getText(int i) {
            return this.delegate.getText(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean isNull(int i) {
            return this.delegate.isNull(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void reset() {
            this.delegate.reset();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean step() {
            return this.delegate.step();
        }
    }

    public ConnectionWithLock(SQLiteConnection sQLiteConnection, yg5 yg5Var, int i) {
        sQLiteConnection.getClass();
        yg5Var.getClass();
        this.delegate = sQLiteConnection;
        this.lock = yg5Var;
        this.preparedStatementCache = i > 0 ? new PreparedStatementCache(i) : null;
    }

    @Override // androidx.sqlite.SQLiteConnection, java.lang.AutoCloseable
    public void close() {
        PreparedStatementCache preparedStatementCache = this.preparedStatementCache;
        if (preparedStatementCache != null) {
            preparedStatementCache.evictAll();
        }
        this.delegate.close();
    }

    public final void dump(StringBuilder sb) {
        sb.getClass();
        if (this.acquireCoroutineContext == null && this.acquireThrowable == null) {
            sb.append("\t\tStatus: Free connection");
            sb.append('\n');
        } else {
            sb.append("\t\tStatus: Acquired connection");
            sb.append('\n');
            o22 o22Var = this.acquireCoroutineContext;
            if (o22Var != null) {
                sb.append("\t\tCoroutine: " + o22Var);
                sb.append('\n');
            }
            Throwable th = this.acquireThrowable;
            if (th != null) {
                sb.append("\t\tAcquired:");
                sb.append('\n');
                Iterator it = qn1.O(ta8.P(sj0.d(th)), 1).iterator();
                while (it.hasNext()) {
                    sb.append("\t\t" + ((String) it.next()));
                    sb.append('\n');
                }
            }
        }
        if (this.preparedStatementCache != null) {
            sb.append("\t\tPrepared Statement Cache Size: " + this.preparedStatementCache.size());
            sb.append('\n');
        }
    }

    @Override // defpackage.yg5
    public xl7<Object, yg5> getOnLock() {
        return this.lock.getOnLock();
    }

    @Override // defpackage.yg5
    public boolean holdsLock(Object obj) {
        obj.getClass();
        return this.lock.holdsLock(obj);
    }

    @Override // androidx.sqlite.SQLiteConnection
    public boolean inTransaction() {
        return this.delegate.inTransaction();
    }

    @Override // defpackage.yg5
    public boolean isLocked() {
        return this.lock.isLocked();
    }

    @Override // defpackage.yg5
    public Object lock(Object obj, e02<? super j59> e02Var) {
        return this.lock.lock(obj, e02Var);
    }

    public final ConnectionWithLock markAcquired(o22 o22Var) {
        o22Var.getClass();
        this.acquireCoroutineContext = o22Var;
        this.acquireThrowable = new Throwable();
        return this;
    }

    public final ConnectionWithLock markReleased() {
        this.acquireCoroutineContext = null;
        this.acquireThrowable = null;
        return this;
    }

    @Override // androidx.sqlite.SQLiteConnection
    public SQLiteStatement prepare(String str) {
        str.getClass();
        PreparedStatementCache preparedStatementCache = this.preparedStatementCache;
        if (preparedStatementCache == null) {
            return this.delegate.prepare(str);
        }
        SQLiteStatement sQLiteStatement = preparedStatementCache.get(str);
        sQLiteStatement.getClass();
        return new CachedStatement(sQLiteStatement);
    }

    public String toString() {
        return this.delegate.toString();
    }

    @Override // defpackage.yg5
    public boolean tryLock(Object obj) {
        return this.lock.tryLock(obj);
    }

    @Override // defpackage.yg5
    public void unlock(Object obj) {
        this.lock.unlock(obj);
    }

    public final class PreparedStatementCache extends LruCache<String, SQLiteStatement> {
        public /* synthetic */ PreparedStatementCache(ConnectionWithLock connectionWithLock, int i, int i2, jh2 jh2Var) {
            this((i2 & 1) != 0 ? 25 : i);
        }

        @Override // androidx.collection.LruCache
        public SQLiteStatement create(String str) {
            str.getClass();
            return ConnectionWithLock.this.delegate.prepare(str);
        }

        @Override // androidx.collection.LruCache
        public void entryRemoved(boolean z, String str, SQLiteStatement sQLiteStatement, SQLiteStatement sQLiteStatement2) {
            str.getClass();
            sQLiteStatement.getClass();
            sQLiteStatement.close();
            super.entryRemoved(z, str, sQLiteStatement, sQLiteStatement2);
        }

        public PreparedStatementCache(int i) {
            super(i);
        }
    }

    public ConnectionWithLock(SQLiteConnection sQLiteConnection, yg5 yg5Var, int i, int i2, jh2 jh2Var) {
        this(sQLiteConnection, (i2 & 2) != 0 ? new ch5() : yg5Var, i);
    }
}
