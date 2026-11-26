package androidx.room.coroutines;

import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import defpackage.a32;
import defpackage.ah;
import defpackage.ar4;
import defpackage.bd2;
import defpackage.e02;
import defpackage.eo7;
import defpackage.f02;
import defpackage.fr;
import defpackage.io7;
import defpackage.j59;
import defpackage.jo7;
import defpackage.ll3;
import defpackage.qn1;
import defpackage.r57;
import defpackage.u96;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes3.dex */
final class Pool {
    private final fr<ConnectionWithLock> availableConnections;
    private final int capacity;
    private final ll3<SQLiteConnection> connectionFactory;
    private final eo7 connectionPermits;
    private final ConnectionWithLock[] connections;
    private boolean isClosed;
    private final ReentrantLock lock;
    private final int preparedStatementCacheSize;
    private int size;

    /* JADX INFO: renamed from: androidx.room.coroutines.Pool$acquire$1, reason: invalid class name */
    @bd2(c = "androidx.room.coroutines.Pool", f = "ConnectionPoolImpl.kt", l = {253}, m = "acquire")
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Pool.this.acquire(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Pool(int i, ll3<? extends SQLiteConnection> ll3Var, int i2) {
        ll3Var.getClass();
        this.capacity = i;
        this.connectionFactory = ll3Var;
        this.preparedStatementCacheSize = i2;
        this.lock = new ReentrantLock();
        this.connections = new ConnectionWithLock[i];
        int i3 = jo7.a;
        this.connectionPermits = new io7(i);
        this.availableConnections = new fr<>(i);
    }

    private final void tryOpenNewConnectionLocked() {
        if (this.size >= this.capacity) {
            return;
        }
        ConnectionWithLock connectionWithLock = new ConnectionWithLock(this.connectionFactory.invoke(), null, this.preparedStatementCacheSize, 2, null);
        ConnectionWithLock[] connectionWithLockArr = this.connections;
        int i = this.size;
        this.size = i + 1;
        connectionWithLockArr[i] = connectionWithLock;
        this.availableConnections.addLast(connectionWithLock);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object acquire(e02<? super ConnectionWithLock> e02Var) {
        AnonymousClass1 anonymousClass1;
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
            eo7 eo7Var = this.connectionPermits;
            anonymousClass1.label = 1;
            if (eo7Var.a(anonymousClass1) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        try {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (this.isClosed) {
                    SQLite.throwSQLiteException(21, "Connection pool is closed");
                    throw new KotlinNothingValueException();
                }
                if (this.availableConnections.isEmpty()) {
                    tryOpenNewConnectionLocked();
                }
                ConnectionWithLock connectionWithLockRemoveLast = this.availableConnections.removeLast();
                reentrantLock.unlock();
                return connectionWithLockRemoveLast;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        } catch (Throwable th2) {
            this.connectionPermits.release();
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0059 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x005a  */
    /* JADX WARN: Code duplicated, block: B:31:0x0071 A[Catch: all -> 0x0075, TryCatch #1 {all -> 0x0075, blocks: (B:29:0x006d, B:31:0x0071, B:35:0x0079, B:39:0x0080), top: B:46:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0077  */
    /* JADX WARN: Code duplicated, block: B:35:0x0079 A[Catch: all -> 0x0075, TryCatch #1 {all -> 0x0075, blocks: (B:29:0x006d, B:31:0x0071, B:35:0x0079, B:39:0x0080), top: B:46:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:37:0x007d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x0080 A[Catch: all -> 0x0075, TRY_LEAVE, TryCatch #1 {all -> 0x0075, blocks: (B:29:0x006d, B:31:0x0071, B:35:0x0079, B:39:0x0080), top: B:46:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x005a -> B:24:0x005c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: acquireWithTimeout-KLykuaI, reason: not valid java name */
    public final java.lang.Object m9360acquireWithTimeoutKLykuaI(long r9, defpackage.ll3<defpackage.j59> r11, defpackage.e02<? super androidx.room.coroutines.ConnectionWithLock> r12) {
        /*
            r8 = this;
            boolean r0 = r12 instanceof androidx.room.coroutines.Pool$acquireWithTimeout$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.room.coroutines.Pool$acquireWithTimeout$1 r0 = (androidx.room.coroutines.Pool$acquireWithTimeout$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.Pool$acquireWithTimeout$1 r0 = new androidx.room.coroutines.Pool$acquireWithTimeout$1
            r0.<init>(r8, r12)
        L18:
            java.lang.Object r12 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L34
            long r9 = r0.J$0
            java.lang.Object r11 = r0.L$1
            r07 r11 = (defpackage.r07) r11
            java.lang.Object r2 = r0.L$0
            ll3 r2 = (defpackage.ll3) r2
            defpackage.r57.b(r12)     // Catch: java.lang.Throwable -> L32
            goto L5c
        L32:
            r12 = move-exception
            goto L68
        L34:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            return r4
        L3a:
            defpackage.r57.b(r12)
        L3d:
            r07 r12 = new r07
            r12.<init>()
            androidx.room.coroutines.Pool$acquireWithTimeout$2 r2 = new androidx.room.coroutines.Pool$acquireWithTimeout$2     // Catch: java.lang.Throwable -> L66
            r2.<init>(r12, r8, r4)     // Catch: java.lang.Throwable -> L66
            r0.L$0 = r11     // Catch: java.lang.Throwable -> L66
            r0.L$1 = r12     // Catch: java.lang.Throwable -> L66
            r0.J$0 = r9     // Catch: java.lang.Throwable -> L66
            r0.label = r3     // Catch: java.lang.Throwable -> L66
            long r5 = defpackage.yk2.d(r9)     // Catch: java.lang.Throwable -> L66
            java.lang.Object r2 = defpackage.yv8.b(r5, r2, r0)     // Catch: java.lang.Throwable -> L66
            if (r2 != r1) goto L5a
            return r1
        L5a:
            r2 = r11
            r11 = r12
        L5c:
            r12 = r11
            r11 = r2
            r2 = r0
            r0 = r4
            goto L6d
        L61:
            r7 = r2
            r2 = r11
            r11 = r12
            r12 = r7
            goto L68
        L66:
            r2 = move-exception
            goto L61
        L68:
            r7 = r12
            r12 = r11
            r11 = r2
            r2 = r0
            r0 = r7
        L6d:
            boolean r5 = r0 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L75
            if (r5 == 0) goto L77
            r11.invoke()     // Catch: java.lang.Throwable -> L75
            goto L7e
        L75:
            r9 = move-exception
            goto L81
        L77:
            if (r0 != 0) goto L80
            T r12 = r12.b     // Catch: java.lang.Throwable -> L75
            if (r12 == 0) goto L7e
            return r12
        L7e:
            r0 = r2
            goto L3d
        L80:
            throw r0     // Catch: java.lang.Throwable -> L75
        L81:
            T r10 = r12.b
            androidx.room.coroutines.ConnectionWithLock r10 = (androidx.room.coroutines.ConnectionWithLock) r10
            if (r10 == 0) goto L8a
            r8.recycle(r10)
        L8a:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.Pool.m9360acquireWithTimeoutKLykuaI(long, ll3, e02):java.lang.Object");
    }

    public final void close() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.isClosed = true;
            for (ConnectionWithLock connectionWithLock : this.connections) {
                if (connectionWithLock != null) {
                    connectionWithLock.close();
                }
            }
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void dump(StringBuilder sb) {
        sb.getClass();
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            ar4 ar4VarE = u96.e();
            int size = this.availableConnections.size();
            for (int i = 0; i < size; i++) {
                ar4VarE.add(this.availableConnections.get(i));
            }
            ar4 ar4VarD = u96.d(ar4VarE);
            sb.append('\t' + toString() + " (");
            sb.append("capacity=" + this.capacity + ", ");
            sb.append("permits=" + this.connectionPermits.b() + ", ");
            sb.append("queue=(size=" + ar4VarD.size() + ")[" + qn1.a0(ar4VarD, null, null, null, 0, null, 63) + ']');
            sb.append(")");
            sb.append('\n');
            ConnectionWithLock[] connectionWithLockArr = this.connections;
            int length = connectionWithLockArr.length;
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                ConnectionWithLock connectionWithLock = connectionWithLockArr[i3];
                i2++;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("\t\t[");
                sb2.append(i2);
                sb2.append("] - ");
                sb2.append(connectionWithLock != null ? connectionWithLock.toString() : null);
                sb.append(sb2.toString());
                sb.append('\n');
                if (connectionWithLock != null) {
                    connectionWithLock.dump(sb);
                }
            }
            j59 j59Var = j59.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int getCapacity() {
        return this.capacity;
    }

    public final ll3<SQLiteConnection> getConnectionFactory() {
        return this.connectionFactory;
    }

    public final int getPreparedStatementCacheSize() {
        return this.preparedStatementCacheSize;
    }

    public final void recycle(ConnectionWithLock connectionWithLock) {
        connectionWithLock.getClass();
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.availableConnections.addLast(connectionWithLock);
            j59 j59Var = j59.a;
            reentrantLock.unlock();
            this.connectionPermits.release();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
