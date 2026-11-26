package androidx.room.coroutines;

import android.database.SQLException;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.WebmConstants;
import androidx.room.Transactor;
import androidx.room.concurrent.ThreadLocal_jvmAndroidKt;
import androidx.room.coroutines.ConnectionPoolImpl;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import defpackage.a32;
import defpackage.ah;
import defpackage.au2;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.f2;
import defpackage.fg;
import defpackage.j59;
import defpackage.ll3;
import defpackage.o22;
import defpackage.pg8;
import defpackage.pw1;
import defpackage.r07;
import defpackage.r57;
import defpackage.rw1;
import defpackage.sj0;
import defpackage.wt2;
import defpackage.y22;
import defpackage.yt2;
import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes3.dex */
public final class ConnectionPoolImpl implements ConnectionPool {
    private final ConnectionElementKey connectionElementKey;
    private final ThreadLocal<PooledConnectionImpl> connectionThreadLocal;
    private final SQLiteDriver driver;
    private volatile boolean isClosed;
    private int onTimeout;
    private final Pool readers;
    private long timeout;
    private final Pool writers;

    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$useConnection$1, reason: invalid class name */
    @bd2(c = "androidx.room.coroutines.ConnectionPoolImpl", f = "ConnectionPoolImpl.kt", l = {WebmConstants.MkvEbmlElement.TRACK_TYPE, TsExtractor.TS_STREAM_TYPE_E_AC3, WebmConstants.MkvEbmlElement.FLAG_INTERLACED, WebmConstants.MkvEbmlElement.CHANNELS}, m = "useConnection")
    public static final class AnonymousClass1<R> extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConnectionPoolImpl.this.useConnection(false, null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$useConnection$2, reason: invalid class name */
    @bd2(c = "androidx.room.coroutines.ConnectionPoolImpl$useConnection$2", f = "ConnectionPoolImpl.kt", l = {132}, m = "invokeSuspend")
    public static final class AnonymousClass2<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
        final /* synthetic */ bm3<Transactor, e02<? super R>, Object> $block;
        final /* synthetic */ PooledConnectionImpl $confinedConnection;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, PooledConnectionImpl pooledConnectionImpl, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$block = bm3Var;
            this.$confinedConnection = pooledConnectionImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$block, this.$confinedConnection, e02Var);
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
            PooledConnectionImpl pooledConnectionImpl = this.$confinedConnection;
            this.label = 1;
            Object objInvoke = bm3Var.invoke(pooledConnectionImpl, this);
            return objInvoke == a32Var ? a32Var : objInvoke;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$useConnection$4, reason: invalid class name */
    @bd2(c = "androidx.room.coroutines.ConnectionPoolImpl$useConnection$4", f = "ConnectionPoolImpl.kt", l = {WebmConstants.MkvEbmlElement.CHANNELS}, m = "invokeSuspend")
    public static final class AnonymousClass4<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
        final /* synthetic */ bm3<Transactor, e02<? super R>, Object> $block;
        final /* synthetic */ r07<PooledConnectionImpl> $connection;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass4(bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, r07<PooledConnectionImpl> r07Var, e02<? super AnonymousClass4> e02Var) {
            super(2, e02Var);
            this.$block = bm3Var;
            this.$connection = r07Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass4(this.$block, this.$connection, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
            return ((AnonymousClass4) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.room.coroutines.ConnectionPoolImpl$useConnection$4<R> for r3v2 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r4) {
            /*
                r3 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r3.label
                r2 = 1
                if (r1 == 0) goto L14
                if (r1 != r2) goto Ld
                defpackage.r57.b(r4)
                return r4
            Ld:
                java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r3)
                r3 = 0
                return r3
            L14:
                defpackage.r57.b(r4)
                bm3<androidx.room.Transactor, e02<? super R>, java.lang.Object> r4 = r3.$block
                r07<androidx.room.coroutines.PooledConnectionImpl> r1 = r3.$connection
                T r1 = r1.b
                r3.label = r2
                java.lang.Object r3 = r4.invoke(r1, r3)
                if (r3 != r0) goto L26
                return r0
            L26:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.ConnectionPoolImpl.AnonymousClass4.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public ConnectionPoolImpl(final SQLiteDriver sQLiteDriver, final String str, int i, int i2, int i3) {
        sQLiteDriver.getClass();
        str.getClass();
        this.connectionElementKey = new ConnectionElementKey();
        this.connectionThreadLocal = new ThreadLocal<>();
        wt2.a aVar = wt2.c;
        this.timeout = yt2.e(30, au2.SECONDS);
        this.onTimeout = 2;
        if (i <= 0) {
            fg.c("Maximum number of readers must be greater than 0");
            throw null;
        }
        if (i2 <= 0) {
            fg.c("Maximum number of writers must be greater than 0");
            throw null;
        }
        this.driver = sQLiteDriver;
        this.readers = new Pool(i, new ll3() { // from class: ow1
            @Override // defpackage.ll3
            public final Object invoke() {
                return ConnectionPoolImpl._init_$lambda$4(sQLiteDriver, str);
            }
        }, i3);
        this.writers = new Pool(i2, new pw1(0, sQLiteDriver, str), i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SQLiteConnection _init_$lambda$4(SQLiteDriver sQLiteDriver, String str) {
        SQLiteConnection sQLiteConnectionOpen = sQLiteDriver.open(str);
        SQLite.execSQL(sQLiteConnectionOpen, "PRAGMA query_only = 1");
        return sQLiteConnectionOpen;
    }

    private final o22 createConnectionContext(PooledConnectionImpl pooledConnectionImpl) {
        return new ConnectionElement(this.connectionElementKey, pooledConnectionImpl).plus(ThreadLocal_jvmAndroidKt.asContextElement(this.connectionThreadLocal, pooledConnectionImpl));
    }

    private final void onTimeout(boolean z) {
        String str = z ? "reader" : "writer";
        StringBuilder sb = new StringBuilder();
        sb.append("Timed out attempting to acquire a " + str + " connection.");
        sb.append("\n\nWriter pool:\n");
        this.writers.dump(sb);
        sb.append("Reader pool:");
        sb.append('\n');
        this.readers.dump(sb);
        try {
            SQLite.throwSQLiteException(5, sb.toString());
            throw new KotlinNothingValueException();
        } catch (SQLException e) {
            int i = this.onTimeout;
            if (i == 1) {
                throw e;
            }
            if (i != 2) {
                return;
            }
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 useConnection$lambda$6(ConnectionPoolImpl connectionPoolImpl, boolean z) {
        connectionPoolImpl.onTimeout(z);
        return j59.a;
    }

    @Override // androidx.room.coroutines.ConnectionPool, java.lang.AutoCloseable
    public void close() {
        if (this.isClosed) {
            return;
        }
        this.isClosed = true;
        this.readers.close();
        this.writers.close();
    }

    public final int getOnTimeout$room_runtime() {
        return this.onTimeout;
    }

    /* JADX INFO: renamed from: getTimeout-UwyO8pc$room_runtime, reason: not valid java name */
    public final long m9358getTimeoutUwyO8pc$room_runtime() {
        return this.timeout;
    }

    public final void setOnTimeout$room_runtime(int i) {
        this.onTimeout = i;
    }

    /* JADX INFO: renamed from: setTimeout-LRDsOJo$room_runtime, reason: not valid java name */
    public final void m9359setTimeoutLRDsOJo$room_runtime(long j) {
        this.timeout = j;
    }

    /* JADX WARN: Code duplicated, block: B:68:0x0128  */
    /* JADX WARN: Code duplicated, block: B:71:0x0134 A[Catch: all -> 0x016e, TRY_LEAVE, TryCatch #4 {all -> 0x016e, blocks: (B:64:0x0119, B:69:0x0129, B:71:0x0134, B:81:0x0172, B:82:0x0179), top: B:105:0x0119 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0154  */
    /* JADX WARN: Code duplicated, block: B:77:0x015c  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code duplicated, block: B:81:0x0172 A[Catch: all -> 0x016e, TRY_ENTER, TryCatch #4 {all -> 0x016e, blocks: (B:64:0x0119, B:69:0x0129, B:71:0x0134, B:81:0x0172, B:82:0x0179), top: B:105:0x0119 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [T, androidx.room.coroutines.PooledConnectionImpl] */
    @Override // androidx.room.coroutines.ConnectionPool
    public <R> Object useConnection(boolean z, bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        r07 r07Var;
        Throwable th;
        Pool pool;
        o22 context;
        bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var2;
        ConnectionElementKey connectionElementKey;
        Pool pool2;
        r07 r07Var2;
        T t;
        r07 r07Var3;
        PooledConnectionImpl pooledConnectionImpl;
        final boolean z2 = z;
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
        Object objD = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        boolean z3 = true;
        if (i2 != 0) {
            if (i2 == 1) {
                r57.b(objD);
                return objD;
            }
            if (i2 == 2) {
                r57.b(objD);
                return objD;
            }
            if (i2 == 3) {
                z2 = anonymousClass1.Z$0;
                connectionElementKey = (ConnectionElementKey) anonymousClass1.L$5;
                r07 r07Var4 = (r07) anonymousClass1.L$4;
                o22 o22Var = (o22) anonymousClass1.L$3;
                r07 r07Var5 = (r07) anonymousClass1.L$2;
                pool2 = (Pool) anonymousClass1.L$1;
                bm3Var2 = (bm3) anonymousClass1.L$0;
                try {
                    r57.b(objD);
                    r07Var2 = r07Var4;
                    r07Var = r07Var5;
                    context = o22Var;
                    try {
                        ConnectionWithLock connectionWithLockMarkAcquired = ((ConnectionWithLock) objD).markAcquired(context);
                        if (this.readers != this.writers || !z2) {
                            z3 = false;
                        }
                        r07Var2.b = new PooledConnectionImpl(connectionElementKey, connectionWithLockMarkAcquired, z3);
                        t = r07Var.b;
                        if (t != 0) {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                        o22 o22VarCreateConnectionContext = createConnectionContext((PooledConnectionImpl) t);
                        AnonymousClass4 anonymousClass4 = new AnonymousClass4(bm3Var2, r07Var, null);
                        anonymousClass1.L$0 = pool2;
                        anonymousClass1.L$1 = r07Var;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.L$3 = null;
                        anonymousClass1.L$4 = null;
                        anonymousClass1.L$5 = null;
                        anonymousClass1.label = 4;
                        objD = av0.d(o22VarCreateConnectionContext, anonymousClass4, anonymousClass1);
                        if (objD != a32Var) {
                            r07Var3 = r07Var;
                            pool = pool2;
                        }
                        return a32Var;
                    } catch (Throwable th2) {
                        th = th2;
                        pool = pool2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    r07Var = r07Var5;
                    pool = pool2;
                    throw th;
                }
            }
            if (i2 != 4) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07Var3 = (r07) anonymousClass1.L$1;
            pool = (Pool) anonymousClass1.L$0;
            try {
                r57.b(objD);
            } catch (Throwable th4) {
                r07Var = r07Var3;
                th = th4;
            }
            pooledConnectionImpl = (PooledConnectionImpl) r07Var3.b;
            if (pooledConnectionImpl != null) {
                pooledConnectionImpl.markRecycled();
                pooledConnectionImpl.getDelegate().markReleased();
                pool.recycle(pooledConnectionImpl.getDelegate());
            }
            return objD;
        }
        r57.b(objD);
        if (this.isClosed) {
            throw f2.d(21, "Connection pool is closed");
        }
        PooledConnectionImpl connectionWrapper = this.connectionThreadLocal.get();
        if (connectionWrapper == null) {
            ConnectionElement connectionElement = (ConnectionElement) anonymousClass1.getContext().get(this.connectionElementKey);
            connectionWrapper = connectionElement != null ? connectionElement.getConnectionWrapper() : null;
        }
        if (connectionWrapper == null) {
            Pool pool3 = z2 ? this.readers : this.writers;
            r07Var = new r07();
            try {
                context = anonymousClass1.getContext();
                ConnectionElementKey connectionElementKey2 = this.connectionElementKey;
                long j = this.timeout;
                ll3<j59> ll3Var = new ll3() { // from class: qw1
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ConnectionPoolImpl.useConnection$lambda$6(this.b, z2);
                    }
                };
                anonymousClass1.L$0 = bm3Var;
                anonymousClass1.L$1 = pool3;
                anonymousClass1.L$2 = r07Var;
                anonymousClass1.L$3 = context;
                anonymousClass1.L$4 = r07Var;
                anonymousClass1.L$5 = connectionElementKey2;
                anonymousClass1.Z$0 = z2;
                anonymousClass1.label = 3;
                Object objM9360acquireWithTimeoutKLykuaI = pool3.m9360acquireWithTimeoutKLykuaI(j, ll3Var, anonymousClass1);
                if (objM9360acquireWithTimeoutKLykuaI != a32Var) {
                    bm3Var2 = bm3Var;
                    connectionElementKey = connectionElementKey2;
                    pool2 = pool3;
                    objD = objM9360acquireWithTimeoutKLykuaI;
                    r07Var2 = r07Var;
                    ConnectionWithLock connectionWithLockMarkAcquired2 = ((ConnectionWithLock) objD).markAcquired(context);
                    if (this.readers != this.writers) {
                        z3 = false;
                    } else {
                        z3 = false;
                    }
                    r07Var2.b = new PooledConnectionImpl(connectionElementKey, connectionWithLockMarkAcquired2, z3);
                    t = r07Var.b;
                    if (t != 0) {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                    o22 o22VarCreateConnectionContext2 = createConnectionContext((PooledConnectionImpl) t);
                    AnonymousClass4 anonymousClass5 = new AnonymousClass4(bm3Var2, r07Var, null);
                    anonymousClass1.L$0 = pool2;
                    anonymousClass1.L$1 = r07Var;
                    anonymousClass1.L$2 = null;
                    anonymousClass1.L$3 = null;
                    anonymousClass1.L$4 = null;
                    anonymousClass1.L$5 = null;
                    anonymousClass1.label = 4;
                    objD = av0.d(o22VarCreateConnectionContext2, anonymousClass5, anonymousClass1);
                    if (objD != a32Var) {
                        r07Var3 = r07Var;
                        pool = pool2;
                        pooledConnectionImpl = (PooledConnectionImpl) r07Var3.b;
                        if (pooledConnectionImpl != null) {
                            pooledConnectionImpl.markRecycled();
                            pooledConnectionImpl.getDelegate().markReleased();
                            pool.recycle(pooledConnectionImpl.getDelegate());
                        }
                        return objD;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                pool = pool3;
            }
        } else {
            if (!z2 && connectionWrapper.isReadOnly()) {
                throw f2.d(1, "Cannot upgrade connection from reader to writer");
            }
            if (anonymousClass1.getContext().get(this.connectionElementKey) == null) {
                o22 o22VarCreateConnectionContext3 = createConnectionContext(connectionWrapper);
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(bm3Var, connectionWrapper, null);
                anonymousClass1.label = 1;
                Object objD2 = av0.d(o22VarCreateConnectionContext3, anonymousClass2, anonymousClass1);
                if (objD2 != a32Var) {
                    return objD2;
                }
            } else {
                anonymousClass1.label = 2;
                Object objInvoke = bm3Var.invoke(connectionWrapper, anonymousClass1);
                if (objInvoke != a32Var) {
                    return objInvoke;
                }
            }
        }
        return a32Var;
        try {
            throw th;
        } catch (Throwable th6) {
            try {
                PooledConnectionImpl pooledConnectionImpl2 = (PooledConnectionImpl) r07Var.b;
                if (pooledConnectionImpl2 == null) {
                    throw th6;
                }
                pooledConnectionImpl2.markRecycled();
                pooledConnectionImpl2.getDelegate().markReleased();
                pool.recycle(pooledConnectionImpl2.getDelegate());
                throw th6;
            } catch (Throwable th7) {
                sj0.c(th, th7);
                throw th6;
            }
        }
    }

    public ConnectionPoolImpl(SQLiteDriver sQLiteDriver, String str, int i) {
        sQLiteDriver.getClass();
        str.getClass();
        this.connectionElementKey = new ConnectionElementKey();
        this.connectionThreadLocal = new ThreadLocal<>();
        wt2.a aVar = wt2.c;
        this.timeout = yt2.e(30, au2.SECONDS);
        this.onTimeout = 2;
        this.driver = sQLiteDriver;
        Pool pool = new Pool(1, new rw1(sQLiteDriver, str), i);
        this.readers = pool;
        this.writers = pool;
    }
}
