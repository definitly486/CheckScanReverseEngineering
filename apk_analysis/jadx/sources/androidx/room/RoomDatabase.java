package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.room.RoomDatabase;
import androidx.room.concurrent.CloseBarrier;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.support.AutoCloser;
import androidx.room.support.AutoClosingRoomOpenHelper;
import androidx.room.support.AutoClosingRoomOpenHelperFactory;
import androidx.room.support.PrePackagedCopyOpenHelper;
import androidx.room.support.PrePackagedCopyOpenHelperFactory;
import androidx.room.support.QueryInterceptorOpenHelperFactory;
import androidx.room.util.DBUtil;
import androidx.room.util.KClassUtil;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import androidx.sqlite.driver.SupportSQLiteConnection;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aq5;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.d31;
import defpackage.e02;
import defpackage.fg;
import defpackage.g02;
import defpackage.g03;
import defpackage.h03;
import defpackage.j59;
import defpackage.jd8;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.kz1;
import defpackage.ll3;
import defpackage.m05;
import defpackage.mb4;
import defpackage.mx2;
import defpackage.n1;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.o22;
import defpackage.oo5;
import defpackage.ox2;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r22;
import defpackage.r57;
import defpackage.rm9;
import defpackage.t17;
import defpackage.ul2;
import defpackage.v77;
import defpackage.w77;
import defpackage.x07;
import defpackage.y22;
import defpackage.z22;
import defpackage.zk1;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RoomDatabase {
    public static final Companion Companion = new Companion(null);
    public static final int MAX_BIND_PARAMETER_CNT = 999;
    private boolean allowMainThreadQueries;
    private AutoCloser autoCloser;
    private DatabaseConfiguration configuration;
    private RoomConnectionManager connectionManager;
    private y22 coroutineScope;
    private Executor internalQueryExecutor;
    private InvalidationTracker internalTracker;
    private Executor internalTransactionExecutor;
    protected List<? extends Callback> mCallbacks;
    protected volatile SupportSQLiteDatabase mDatabase;
    private o22 transactionContext;
    private final CloseBarrier closeBarrier = new CloseBarrier(new RoomDatabase$closeBarrier$1(this));
    private final ThreadLocal<o22> suspendingTransactionContext = new ThreadLocal<>();
    private final Map<ne4<?>, Object> typeConverters = new LinkedHashMap();
    private boolean useTempTrackingTable = true;

    public enum JournalMode {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<JournalMode> getEntries() {
            return $ENTRIES;
        }

        public final JournalMode resolve$room_runtime(Context context) {
            context.getClass();
            if (this != AUTOMATIC) {
                return this;
            }
            Object systemService = context.getSystemService("activity");
            ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
            return (activityManager == null || activityManager.isLowRamDevice()) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    public static abstract class PrepackagedDatabaseCallback {
        public void onOpenPrepackagedDatabase(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.getClass();
        }
    }

    public interface QueryCallback {
        void onQuery(String str, List<? extends Object> list);
    }

    /* JADX INFO: renamed from: androidx.room.RoomDatabase$performClear$1, reason: invalid class name */
    @bd2(c = "androidx.room.RoomDatabase$performClear$1", f = "RoomDatabase.android.kt", l = {531}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ boolean $hasForeignKeys;
        final /* synthetic */ String[] $tableNames;
        int label;

        /* JADX INFO: renamed from: androidx.room.RoomDatabase$performClear$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.room.RoomDatabase$performClear$1$1", f = "RoomDatabase.android.kt", l = {532, 533, 535, 541, 542, 543}, m = "invokeSuspend")
        public static final class C01111 extends pg8 implements bm3<Transactor, e02<? super j59>, Object> {
            final /* synthetic */ boolean $hasForeignKeys;
            final /* synthetic */ String[] $tableNames;
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ RoomDatabase this$0;

            /* JADX INFO: renamed from: androidx.room.RoomDatabase$performClear$1$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.room.RoomDatabase$performClear$1$1$1", f = "RoomDatabase.android.kt", l = {537, 539}, m = "invokeSuspend")
            public static final class C01121 extends pg8 implements bm3<TransactionScope<j59>, e02<? super j59>, Object> {
                final /* synthetic */ boolean $hasForeignKeys;
                final /* synthetic */ String[] $tableNames;
                int I$0;
                int I$1;
                private /* synthetic */ Object L$0;
                Object L$1;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C01121(boolean z, String[] strArr, e02<? super C01121> e02Var) {
                    super(2, e02Var);
                    this.$hasForeignKeys = z;
                    this.$tableNames = strArr;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    C01121 c01121 = new C01121(this.$hasForeignKeys, this.$tableNames, e02Var);
                    c01121.L$0 = obj;
                    return c01121;
                }

                @Override // defpackage.bm3
                public final Object invoke(TransactionScope<j59> transactionScope, e02<? super j59> e02Var) {
                    return ((C01121) create(transactionScope, e02Var)).invokeSuspend(j59.a);
                }

                /* JADX WARN: Code duplicated, block: B:17:0x004e  */
                /* JADX WARN: Code duplicated, block: B:21:0x006b  */
                /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
                
                    if (androidx.room.TransactorKt.execSQL(r1, "PRAGMA defer_foreign_keys = TRUE", r9) == r0) goto L19;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:18:0x0066, code lost:
                
                    if (androidx.room.TransactorKt.execSQL(r6, r10, r9) == r0) goto L19;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:19:0x0068, code lost:
                
                    return r0;
                 */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0066 -> B:20:0x0069). Please report as a decompilation issue!!! */
                @Override // defpackage.cd0
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r10) {
                    /*
                        r9 = this;
                        a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                        int r1 = r9.label
                        r2 = 2
                        r3 = 1
                        if (r1 == 0) goto L2b
                        if (r1 == r3) goto L23
                        if (r1 != r2) goto L1c
                        int r1 = r9.I$1
                        int r4 = r9.I$0
                        java.lang.Object r5 = r9.L$1
                        java.lang.String[] r5 = (java.lang.String[]) r5
                        java.lang.Object r6 = r9.L$0
                        androidx.room.TransactionScope r6 = (androidx.room.TransactionScope) r6
                        defpackage.r57.b(r10)
                        goto L69
                    L1c:
                        java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r9)
                        r9 = 0
                        return r9
                    L23:
                        java.lang.Object r1 = r9.L$0
                        androidx.room.TransactionScope r1 = (androidx.room.TransactionScope) r1
                        defpackage.r57.b(r10)
                        goto L44
                    L2b:
                        defpackage.r57.b(r10)
                        java.lang.Object r10 = r9.L$0
                        r1 = r10
                        androidx.room.TransactionScope r1 = (androidx.room.TransactionScope) r1
                        boolean r10 = r9.$hasForeignKeys
                        if (r10 == 0) goto L44
                        r9.L$0 = r1
                        r9.label = r3
                        java.lang.String r10 = "PRAGMA defer_foreign_keys = TRUE"
                        java.lang.Object r10 = androidx.room.TransactorKt.execSQL(r1, r10, r9)
                        if (r10 != r0) goto L44
                        goto L68
                    L44:
                        java.lang.String[] r10 = r9.$tableNames
                        int r4 = r10.length
                        r5 = 0
                        r6 = r1
                        r1 = r4
                        r4 = r5
                        r5 = r10
                    L4c:
                        if (r4 >= r1) goto L6b
                        r10 = r5[r4]
                        java.lang.String r7 = "DELETE FROM `"
                        r8 = 96
                        java.lang.String r10 = defpackage.lt0.d(r8, r7, r10)
                        r9.L$0 = r6
                        r9.L$1 = r5
                        r9.I$0 = r4
                        r9.I$1 = r1
                        r9.label = r2
                        java.lang.Object r10 = androidx.room.TransactorKt.execSQL(r6, r10, r9)
                        if (r10 != r0) goto L69
                    L68:
                        return r0
                    L69:
                        int r4 = r4 + r3
                        goto L4c
                    L6b:
                        j59 r9 = defpackage.j59.a
                        return r9
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase.AnonymousClass1.C01111.C01121.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C01111(RoomDatabase roomDatabase, boolean z, String[] strArr, e02<? super C01111> e02Var) {
                super(2, e02Var);
                this.this$0 = roomDatabase;
                this.$hasForeignKeys = z;
                this.$tableNames = strArr;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C01111 c01111 = new C01111(this.this$0, this.$hasForeignKeys, this.$tableNames, e02Var);
                c01111.L$0 = obj;
                return c01111;
            }

            @Override // defpackage.bm3
            public final Object invoke(Transactor transactor, e02<? super j59> e02Var) {
                return ((C01111) create(transactor, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Code duplicated, block: B:18:0x005b  */
            /* JADX WARN: Code duplicated, block: B:21:0x006d A[PHI: r1
              0x006d: PHI (r1v7 androidx.room.Transactor) = (r1v4 androidx.room.Transactor), (r1v4 androidx.room.Transactor), (r1v9 androidx.room.Transactor) binds: [B:17:0x0059, B:19:0x006a, B:10:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:24:0x0084 A[PHI: r1
              0x0084: PHI (r1v10 androidx.room.Transactor) = (r1v7 androidx.room.Transactor), (r1v12 androidx.room.Transactor) binds: [B:22:0x0081, B:9:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:27:0x0090 A[PHI: r1 r8
              0x0090: PHI (r1v13 androidx.room.Transactor) = (r1v10 androidx.room.Transactor), (r1v15 androidx.room.Transactor) binds: [B:25:0x008d, B:8:0x001c] A[DONT_GENERATE, DONT_INLINE]
              0x0090: PHI (r8v14 java.lang.Object) = (r8v13 java.lang.Object), (r8v0 java.lang.Object) binds: [B:25:0x008d, B:8:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:29:0x0098  */
            /* JADX WARN: Code duplicated, block: B:32:0x00a6 A[PHI: r1
              0x00a6: PHI (r1v16 androidx.room.Transactor) = (r1v13 androidx.room.Transactor), (r1v18 androidx.room.Transactor) binds: [B:30:0x00a3, B:7:0x0013] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x00b1, code lost:
            
                if (androidx.room.TransactorKt.execSQL(r1, "VACUUM", r7) == r0) goto L34;
             */
            @Override // defpackage.cd0
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r8) {
                /*
                    Method dump skipped, instruction units count: 210
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase.AnonymousClass1.C01111.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(boolean z, String[] strArr, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$hasForeignKeys = z;
            this.$tableNames = strArr;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return RoomDatabase.this.new AnonymousClass1(this.$hasForeignKeys, this.$tableNames, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                RoomConnectionManager roomConnectionManager = RoomDatabase.this.connectionManager;
                if (roomConnectionManager == null) {
                    aa4.j("connectionManager");
                    throw null;
                }
                C01111 c01111 = new C01111(RoomDatabase.this, this.$hasForeignKeys, this.$tableNames, null);
                this.label = 1;
                if (roomConnectionManager.useConnection(false, c01111, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SupportSQLiteOpenHelper createConnectionManager$lambda$2(RoomDatabase roomDatabase, DatabaseConfiguration databaseConfiguration) {
        databaseConfiguration.getClass();
        return roomDatabase.createOpenHelper(databaseConfiguration);
    }

    @ul2
    public static /* synthetic */ void getMCallbacks$annotations() {
    }

    @ul2
    public static /* synthetic */ void getMDatabase$annotations() {
    }

    private final void internalBeginTransaction() {
        assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = getOpenHelper().getWritableDatabase();
        if (!writableDatabase.inTransaction()) {
            getInvalidationTracker().syncBlocking$room_runtime();
        }
        if (writableDatabase.isWriteAheadLoggingEnabled()) {
            writableDatabase.beginTransactionNonExclusive();
        } else {
            writableDatabase.beginTransaction();
        }
    }

    private final void internalEndTransaction() {
        getOpenHelper().getWritableDatabase().endTransaction();
        if (inTransaction()) {
            return;
        }
        getInvalidationTracker().refreshVersionsAsync();
    }

    private final boolean isThreadInSuspendingTransaction() {
        o22 o22Var = this.suspendingTransactionContext.get();
        return (o22Var != null ? (TransactionElement) o22Var.get(TransactionElement.Key) : null) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onClosed() {
        y22 y22Var = this.coroutineScope;
        if (y22Var == null) {
            aa4.j("coroutineScope");
            throw null;
        }
        z22.b(y22Var, null);
        getInvalidationTracker().stop$room_runtime();
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager != null) {
            roomConnectionManager.close();
        } else {
            aa4.j("connectionManager");
            throw null;
        }
    }

    public static /* synthetic */ Cursor query$default(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: query");
            return null;
        }
        if ((i & 2) != 0) {
            cancellationSignal = null;
        }
        return roomDatabase.query(supportSQLiteQuery, cancellationSignal);
    }

    private final <T> T runInTransaction(final ll3<? extends T> ll3Var) {
        if (!inCompatibilityMode()) {
            return (T) DBUtil.performBlocking(this, false, true, new nl3() { // from class: x77
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return RoomDatabase.runInTransaction$lambda$12(ll3Var, (SQLiteConnection) obj);
                }
            });
        }
        beginTransaction();
        try {
            T tInvoke = ll3Var.invoke();
            setTransactionSuccessful();
            return tInvoke;
        } finally {
            endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 runInTransaction$lambda$10(Runnable runnable) {
        runnable.run();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object runInTransaction$lambda$12(ll3 ll3Var, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        return ll3Var.invoke();
    }

    private final <T extends SupportSQLiteOpenHelper> T unwrapOpenHelper(SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        if (supportSQLiteOpenHelper == null) {
            return null;
        }
        aa4.i();
        throw null;
    }

    public final void addTypeConverter$room_runtime(ne4<?> ne4Var, Object obj) {
        ne4Var.getClass();
        obj.getClass();
        this.typeConverters.put(ne4Var, obj);
    }

    public void assertNotMainThread() {
        if (!this.allowMainThreadQueries && isMainThread$room_runtime()) {
            ah.f("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void assertNotSuspendingTransaction() {
        if (inCompatibilityMode() && !inTransaction() && isThreadInSuspendingTransaction()) {
            ah.f("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @ul2
    public void beginTransaction() {
        assertNotMainThread();
        internalBeginTransaction();
    }

    public abstract void clearAllTables();

    public void close() {
        this.closeBarrier.close$room_runtime();
    }

    public SupportSQLiteStatement compileStatement(String str) {
        str.getClass();
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return getOpenHelper().getWritableDatabase().compileStatement(str);
    }

    public List<Migration> createAutoMigrations(Map<ne4<? extends AutoMigrationSpec>, ? extends AutoMigrationSpec> map) {
        map.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(d31.n((ne4) entry.getKey()), entry.getValue());
        }
        return getAutoMigrations(linkedHashMap);
    }

    public final RoomConnectionManager createConnectionManager$room_runtime(DatabaseConfiguration databaseConfiguration) {
        RoomOpenDelegate roomOpenDelegate;
        databaseConfiguration.getClass();
        try {
            RoomOpenDelegateMarker roomOpenDelegateMarkerCreateOpenDelegate = createOpenDelegate();
            roomOpenDelegateMarkerCreateOpenDelegate.getClass();
            roomOpenDelegate = (RoomOpenDelegate) roomOpenDelegateMarkerCreateOpenDelegate;
        } catch (oo5 unused) {
            roomOpenDelegate = null;
        }
        return roomOpenDelegate == null ? new RoomConnectionManager(databaseConfiguration, new t17(this, 1), new RoomDatabase$createConnectionManager$2(this)) : new RoomConnectionManager(databaseConfiguration, roomOpenDelegate, new RoomDatabase$createConnectionManager$3(this));
    }

    public abstract InvalidationTracker createInvalidationTracker();

    public RoomOpenDelegateMarker createOpenDelegate() {
        throw new oo5(0);
    }

    @ul2
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        databaseConfiguration.getClass();
        throw new oo5(0);
    }

    @ul2
    public void endTransaction() {
        internalEndTransaction();
    }

    @ul2
    public List<Migration> getAutoMigrations(Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> map) {
        map.getClass();
        return kx2.b;
    }

    public final CloseBarrier getCloseBarrier$room_runtime() {
        return this.closeBarrier;
    }

    public final y22 getCoroutineScope() {
        y22 y22Var = this.coroutineScope;
        if (y22Var != null) {
            return y22Var;
        }
        aa4.j("coroutineScope");
        throw null;
    }

    public final SQLiteDriver getDriver() {
        DatabaseConfiguration databaseConfiguration = this.configuration;
        if (databaseConfiguration == null) {
            aa4.j("configuration");
            throw null;
        }
        SQLiteDriver sQLiteDriver = databaseConfiguration.sqliteDriver;
        if (sQLiteDriver != null) {
            return sQLiteDriver;
        }
        ah.f("No SQLiteDriver was configured with Room.");
        return null;
    }

    public InvalidationTracker getInvalidationTracker() {
        InvalidationTracker invalidationTracker = this.internalTracker;
        if (invalidationTracker != null) {
            return invalidationTracker;
        }
        aa4.j("internalTracker");
        throw null;
    }

    public SupportSQLiteOpenHelper getOpenHelper() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            aa4.j("connectionManager");
            throw null;
        }
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime = roomConnectionManager.getSupportOpenHelper$room_runtime();
        if (supportOpenHelper$room_runtime != null) {
            return supportOpenHelper$room_runtime;
        }
        ah.f("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
        return null;
    }

    public final String getPath() {
        DatabaseConfiguration databaseConfiguration = this.configuration;
        if (databaseConfiguration == null) {
            aa4.j("configuration");
            throw null;
        }
        String str = databaseConfiguration.name;
        if (str == null) {
            return null;
        }
        if (databaseConfiguration != null) {
            return databaseConfiguration.context.getDatabasePath(str).getPath();
        }
        aa4.j("configuration");
        throw null;
    }

    public final o22 getQueryContext() {
        y22 y22Var = this.coroutineScope;
        if (y22Var != null) {
            return y22Var.getCoroutineContext();
        }
        aa4.j("coroutineScope");
        throw null;
    }

    public Executor getQueryExecutor() {
        Executor executor = this.internalQueryExecutor;
        if (executor != null) {
            return executor;
        }
        aa4.j("internalQueryExecutor");
        throw null;
    }

    public Set<ne4<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecClasses() {
        Set<Class<? extends AutoMigrationSpec>> requiredAutoMigrationSpecs = getRequiredAutoMigrationSpecs();
        ArrayList arrayList = new ArrayList(kn1.q(requiredAutoMigrationSpecs, 10));
        Iterator<T> it = requiredAutoMigrationSpecs.iterator();
        while (it.hasNext()) {
            Class cls = (Class) it.next();
            cls.getClass();
            arrayList.add(x07.a(cls));
        }
        return qn1.y0(arrayList);
    }

    @ul2
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return ox2.b;
    }

    public Map<ne4<?>, List<ne4<?>>> getRequiredTypeConverterClasses() {
        Set<Map.Entry<Class<?>, List<Class<?>>>> setEntrySet = getRequiredTypeConverters().entrySet();
        int iB = m05.b(kn1.q(setEntrySet, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Class cls = (Class) entry.getKey();
            List list = (List) entry.getValue();
            cls.getClass();
            zk1 zk1VarA = x07.a(cls);
            List<Class> list2 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
            for (Class cls2 : list2) {
                cls2.getClass();
                arrayList.add(x07.a(cls2));
            }
            linkedHashMap.put(zk1VarA, arrayList);
        }
        return linkedHashMap;
    }

    public final Map<ne4<?>, List<ne4<?>>> getRequiredTypeConverterClassesMap$room_runtime() {
        return getRequiredTypeConverterClasses();
    }

    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        return mx2.b;
    }

    public final ThreadLocal<o22> getSuspendingTransactionContext() {
        return this.suspendingTransactionContext;
    }

    public final o22 getTransactionContext$room_runtime() {
        o22 o22Var = this.transactionContext;
        if (o22Var != null) {
            return o22Var;
        }
        aa4.j("transactionContext");
        throw null;
    }

    public Executor getTransactionExecutor() {
        Executor executor = this.internalTransactionExecutor;
        if (executor != null) {
            return executor;
        }
        aa4.j("internalTransactionExecutor");
        throw null;
    }

    @ul2
    public <T> T getTypeConverter(Class<T> cls) {
        cls.getClass();
        return (T) this.typeConverters.get(x07.a(cls));
    }

    public final boolean getUseTempTrackingTable$room_runtime() {
        return this.useTempTrackingTable;
    }

    public final boolean inCompatibilityMode() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager != null) {
            return roomConnectionManager.getSupportOpenHelper$room_runtime() != null;
        }
        aa4.j("connectionManager");
        throw null;
    }

    public boolean inTransaction() {
        return isOpenInternal$room_runtime() && getOpenHelper().getWritableDatabase().inTransaction();
    }

    public void init(DatabaseConfiguration databaseConfiguration) {
        o22 coroutineContext;
        databaseConfiguration.getClass();
        this.configuration = databaseConfiguration;
        this.useTempTrackingTable = databaseConfiguration.getUseTempTrackingTable$room_runtime();
        this.connectionManager = createConnectionManager$room_runtime(databaseConfiguration);
        this.internalTracker = createInvalidationTracker();
        RoomDatabaseKt.validateAutoMigrations(this, databaseConfiguration);
        RoomDatabaseKt.validateTypeConverters(this, databaseConfiguration);
        o22 o22Var = databaseConfiguration.queryCoroutineContext;
        if (o22Var != null) {
            o22.a aVar = o22Var.get(g02.a.b);
            aVar.getClass();
            r22 r22Var = (r22) aVar;
            Executor executorA = aq5.a(r22Var);
            this.internalQueryExecutor = executorA;
            this.internalTransactionExecutor = new TransactionExecutor(executorA);
            this.coroutineScope = z22.a(databaseConfiguration.queryCoroutineContext.plus(new jd8((mb4) databaseConfiguration.queryCoroutineContext.get(mb4.a.b))));
            boolean zInCompatibilityMode = inCompatibilityMode();
            y22 y22Var = this.coroutineScope;
            if (zInCompatibilityMode) {
                if (y22Var == null) {
                    aa4.j("coroutineScope");
                    throw null;
                }
                coroutineContext = y22Var.getCoroutineContext().plus(r22Var.limitedParallelism(1));
            } else {
                if (y22Var == null) {
                    aa4.j("coroutineScope");
                    throw null;
                }
                coroutineContext = y22Var.getCoroutineContext();
            }
            this.transactionContext = coroutineContext;
        } else {
            this.internalQueryExecutor = databaseConfiguration.queryExecutor;
            this.internalTransactionExecutor = new TransactionExecutor(databaseConfiguration.transactionExecutor);
            Executor executor = this.internalQueryExecutor;
            if (executor == null) {
                aa4.j("internalQueryExecutor");
                throw null;
            }
            kz1 kz1VarA = z22.a(aq5.x(executor).plus(rm9.b()));
            this.coroutineScope = kz1VarA;
            o22 o22Var2 = kz1VarA.b;
            Executor executor2 = this.internalTransactionExecutor;
            if (executor2 == null) {
                aa4.j("internalTransactionExecutor");
                throw null;
            }
            this.transactionContext = o22Var2.plus(aq5.x(executor2));
        }
        this.allowMainThreadQueries = databaseConfiguration.allowMainThreadQueries;
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            aa4.j("connectionManager");
            throw null;
        }
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime = roomConnectionManager.getSupportOpenHelper$room_runtime();
        if (supportOpenHelper$room_runtime != null) {
            while (!(supportOpenHelper$room_runtime instanceof PrePackagedCopyOpenHelper)) {
                if (!(supportOpenHelper$room_runtime instanceof DelegatingOpenHelper)) {
                    supportOpenHelper$room_runtime = null;
                    break;
                }
                supportOpenHelper$room_runtime = ((DelegatingOpenHelper) supportOpenHelper$room_runtime).getDelegate();
            }
        } else {
            supportOpenHelper$room_runtime = null;
            break;
        }
        PrePackagedCopyOpenHelper prePackagedCopyOpenHelper = (PrePackagedCopyOpenHelper) supportOpenHelper$room_runtime;
        if (prePackagedCopyOpenHelper != null) {
            prePackagedCopyOpenHelper.setDatabaseConfiguration(databaseConfiguration);
        }
        RoomConnectionManager roomConnectionManager2 = this.connectionManager;
        if (roomConnectionManager2 == null) {
            aa4.j("connectionManager");
            throw null;
        }
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime2 = roomConnectionManager2.getSupportOpenHelper$room_runtime();
        if (supportOpenHelper$room_runtime2 != null) {
            while (!(supportOpenHelper$room_runtime2 instanceof AutoClosingRoomOpenHelper)) {
                if (!(supportOpenHelper$room_runtime2 instanceof DelegatingOpenHelper)) {
                    supportOpenHelper$room_runtime2 = null;
                    break;
                }
                supportOpenHelper$room_runtime2 = ((DelegatingOpenHelper) supportOpenHelper$room_runtime2).getDelegate();
            }
        } else {
            supportOpenHelper$room_runtime2 = null;
            break;
        }
        AutoClosingRoomOpenHelper autoClosingRoomOpenHelper = (AutoClosingRoomOpenHelper) supportOpenHelper$room_runtime2;
        if (autoClosingRoomOpenHelper != null) {
            this.autoCloser = autoClosingRoomOpenHelper.getAutoCloser$room_runtime();
            AutoCloser autoCloser$room_runtime = autoClosingRoomOpenHelper.getAutoCloser$room_runtime();
            y22 y22Var2 = this.coroutineScope;
            if (y22Var2 == null) {
                aa4.j("coroutineScope");
                throw null;
            }
            autoCloser$room_runtime.initCoroutineScope(y22Var2);
            getInvalidationTracker().setAutoCloser$room_runtime(autoClosingRoomOpenHelper.getAutoCloser$room_runtime());
        }
        if (databaseConfiguration.multiInstanceInvalidationServiceIntent != null) {
            if (databaseConfiguration.name != null) {
                getInvalidationTracker().initMultiInstanceInvalidation$room_runtime(databaseConfiguration.context, databaseConfiguration.name, databaseConfiguration.multiInstanceInvalidationServiceIntent);
            } else {
                fg.c("Required value was null.");
            }
        }
    }

    @ul2
    public void internalInitInvalidationTracker(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        internalInitInvalidationTracker(new SupportSQLiteConnection(supportSQLiteDatabase));
    }

    public final boolean isMainThread$room_runtime() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public boolean isOpen() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser != null) {
            return autoCloser.isActive();
        }
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager != null) {
            return roomConnectionManager.isSupportDatabaseOpen();
        }
        aa4.j("connectionManager");
        throw null;
    }

    public final boolean isOpenInternal$room_runtime() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser != null) {
            SupportSQLiteDatabase delegateDatabase$room_runtime = autoCloser.getDelegateDatabase$room_runtime();
            if (delegateDatabase$room_runtime != null) {
                return delegateDatabase$room_runtime.isOpen();
            }
            return false;
        }
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager != null) {
            return roomConnectionManager.isSupportDatabaseOpen();
        }
        aa4.j("connectionManager");
        throw null;
    }

    public final void performClear(boolean z, String... strArr) {
        strArr.getClass();
        assertNotMainThread();
        assertNotSuspendingTransaction();
        RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new AnonymousClass1(z, strArr, null));
    }

    public Cursor query(SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal) {
        supportSQLiteQuery.getClass();
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return cancellationSignal != null ? getOpenHelper().getWritableDatabase().query(supportSQLiteQuery, cancellationSignal) : getOpenHelper().getWritableDatabase().query(supportSQLiteQuery);
    }

    @ul2
    public void setTransactionSuccessful() {
        getOpenHelper().getWritableDatabase().setTransactionSuccessful();
    }

    public final void setUseTempTrackingTable$room_runtime(boolean z) {
        this.useTempTrackingTable = z;
    }

    public final <R> Object useConnection(boolean z, bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager != null) {
            return roomConnectionManager.useConnection(z, bm3Var, e02Var);
        }
        aa4.j("connectionManager");
        throw null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public static class Builder<T extends RoomDatabase> {
        private boolean allowDestructiveMigrationForAllTables;
        private boolean allowDestructiveMigrationOnDowngrade;
        private boolean allowMainThreadQueries;
        private TimeUnit autoCloseTimeUnit;
        private long autoCloseTimeout;
        private final List<AutoMigrationSpec> autoMigrationSpecs;
        private final List<Callback> callbacks;
        private final Context context;
        private String copyFromAssetPath;
        private File copyFromFile;
        private Callable<InputStream> copyFromInputStream;
        private SQLiteDriver driver;
        private final ll3<T> factory;
        private boolean inMemoryTrackingTableMode;
        private JournalMode journalMode;
        private final ne4<T> klass;
        private final MigrationContainer migrationContainer;
        private final Set<Integer> migrationStartAndEndVersions;
        private Set<Integer> migrationsNotRequiredFrom;
        private Intent multiInstanceInvalidationIntent;
        private final String name;
        private PrepackagedDatabaseCallback prepackagedDatabaseCallback;
        private QueryCallback queryCallback;
        private o22 queryCallbackCoroutineContext;
        private Executor queryCallbackExecutor;
        private o22 queryCoroutineContext;
        private Executor queryExecutor;
        private boolean requireMigration;
        private SupportSQLiteOpenHelper.Factory supportOpenHelperFactory;
        private Executor transactionExecutor;
        private final List<Object> typeConverters;

        public Builder(Context context, Class<T> cls, String str) {
            context.getClass();
            cls.getClass();
            this.callbacks = new ArrayList();
            this.typeConverters = new ArrayList();
            this.journalMode = JournalMode.AUTOMATIC;
            this.autoCloseTimeout = -1L;
            this.migrationContainer = new MigrationContainer();
            this.migrationsNotRequiredFrom = new LinkedHashSet();
            this.migrationStartAndEndVersions = new LinkedHashSet();
            this.autoMigrationSpecs = new ArrayList();
            this.requireMigration = true;
            this.inMemoryTrackingTableMode = true;
            this.klass = x07.a(cls);
            this.context = context;
            this.name = str;
            this.factory = null;
        }

        public Builder<T> addAutoMigrationSpec(AutoMigrationSpec autoMigrationSpec) {
            autoMigrationSpec.getClass();
            this.autoMigrationSpecs.add(autoMigrationSpec);
            return this;
        }

        public Builder<T> addCallback(Callback callback) {
            callback.getClass();
            this.callbacks.add(callback);
            return this;
        }

        public Builder<T> addMigrations(Migration... migrationArr) {
            migrationArr.getClass();
            for (Migration migration : migrationArr) {
                this.migrationStartAndEndVersions.add(Integer.valueOf(migration.startVersion));
                this.migrationStartAndEndVersions.add(Integer.valueOf(migration.endVersion));
            }
            this.migrationContainer.addMigrations((Migration[]) Arrays.copyOf(migrationArr, migrationArr.length));
            return this;
        }

        public Builder<T> addTypeConverter(Object obj) {
            obj.getClass();
            this.typeConverters.add(obj);
            return this;
        }

        public Builder<T> allowMainThreadQueries() {
            this.allowMainThreadQueries = true;
            return this;
        }

        public T build() {
            SupportSQLiteOpenHelper.Factory queryInterceptorOpenHelperFactory;
            SupportSQLiteOpenHelper.Factory factory;
            T tInvoke;
            o22 o22VarX;
            Executor executor = this.queryExecutor;
            if (executor == null && this.transactionExecutor == null) {
                Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
                this.transactionExecutor = iOThreadExecutor;
                this.queryExecutor = iOThreadExecutor;
            } else if (executor != null && this.transactionExecutor == null) {
                this.transactionExecutor = executor;
            } else if (executor == null) {
                this.queryExecutor = this.transactionExecutor;
            }
            RoomDatabaseKt.validateMigrationsNotRequired(this.migrationStartAndEndVersions, this.migrationsNotRequiredFrom);
            SQLiteDriver sQLiteDriver = this.driver;
            if (sQLiteDriver == null && this.supportOpenHelperFactory == null) {
                queryInterceptorOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
            } else {
                SupportSQLiteOpenHelper.Factory factory2 = this.supportOpenHelperFactory;
                if (sQLiteDriver == null) {
                    queryInterceptorOpenHelperFactory = factory2;
                } else {
                    if (factory2 != null) {
                        fg.c("A RoomDatabase cannot be configured with both a SQLiteDriver and a SupportOpenHelper.Factory.");
                        return null;
                    }
                    queryInterceptorOpenHelperFactory = null;
                }
            }
            boolean z = this.autoCloseTimeout > 0;
            boolean z2 = (this.copyFromAssetPath == null && this.copyFromFile == null && this.copyFromInputStream == null) ? false : true;
            boolean z3 = this.queryCallback != null;
            if (queryInterceptorOpenHelperFactory != null) {
                if (z) {
                    if (this.name == null) {
                        fg.c("Cannot create auto-closing database for an in-memory database.");
                        return null;
                    }
                    long j = this.autoCloseTimeout;
                    TimeUnit timeUnit = this.autoCloseTimeUnit;
                    if (timeUnit == null) {
                        fg.c("Required value was null.");
                        return null;
                    }
                    queryInterceptorOpenHelperFactory = new AutoClosingRoomOpenHelperFactory(queryInterceptorOpenHelperFactory, new AutoCloser(j, timeUnit, null, 4, null));
                }
                if (z2) {
                    if (this.name == null) {
                        fg.c("Cannot create from asset or file for an in-memory database.");
                        return null;
                    }
                    String str = this.copyFromAssetPath;
                    int i = str == null ? 0 : 1;
                    File file = this.copyFromFile;
                    int i2 = file == null ? 0 : 1;
                    Callable<InputStream> callable = this.copyFromInputStream;
                    if (i + i2 + (callable != null ? 1 : 0) != 1) {
                        fg.c("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
                        return null;
                    }
                    queryInterceptorOpenHelperFactory = new PrePackagedCopyOpenHelperFactory(str, file, callable, queryInterceptorOpenHelperFactory);
                }
                if (z3) {
                    Executor executor2 = this.queryCallbackExecutor;
                    if (executor2 != null) {
                        o22VarX = aq5.x(executor2);
                    } else {
                        o22VarX = this.queryCallbackCoroutineContext;
                        if (o22VarX == null) {
                            fg.c("Required value was null.");
                            return null;
                        }
                    }
                    kz1 kz1VarA = z22.a(o22VarX);
                    QueryCallback queryCallback = this.queryCallback;
                    if (queryCallback == null) {
                        fg.c("Required value was null.");
                        return null;
                    }
                    queryInterceptorOpenHelperFactory = new QueryInterceptorOpenHelperFactory(queryInterceptorOpenHelperFactory, kz1VarA, queryCallback);
                }
                factory = queryInterceptorOpenHelperFactory;
            } else {
                factory = null;
            }
            if (factory == null) {
                if (z) {
                    fg.c("Auto Closing Database is not supported when an SQLiteDriver is configured.");
                    return null;
                }
                if (z2) {
                    fg.c("Pre-Package Database is not supported when an SQLiteDriver is configured.");
                    return null;
                }
                if (z3) {
                    fg.c("Query Callback is not supported when an SQLiteDriver is configured.");
                    return null;
                }
            }
            Context context = this.context;
            String str2 = this.name;
            MigrationContainer migrationContainer = this.migrationContainer;
            List<Callback> list = this.callbacks;
            boolean z4 = this.allowMainThreadQueries;
            JournalMode journalModeResolve$room_runtime = this.journalMode.resolve$room_runtime(context);
            Executor executor3 = this.queryExecutor;
            if (executor3 == null) {
                fg.c("Required value was null.");
                return null;
            }
            Executor executor4 = this.transactionExecutor;
            if (executor4 == null) {
                fg.c("Required value was null.");
                return null;
            }
            DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, str2, factory, migrationContainer, list, z4, journalModeResolve$room_runtime, executor3, executor4, this.multiInstanceInvalidationIntent, this.requireMigration, this.allowDestructiveMigrationOnDowngrade, this.migrationsNotRequiredFrom, this.copyFromAssetPath, this.copyFromFile, this.copyFromInputStream, this.prepackagedDatabaseCallback, this.typeConverters, this.autoMigrationSpecs, this.allowDestructiveMigrationForAllTables, this.driver, this.queryCoroutineContext);
            databaseConfiguration.setUseTempTrackingTable$room_runtime(this.inMemoryTrackingTableMode);
            ll3<T> ll3Var = this.factory;
            if (ll3Var == null || (tInvoke = ll3Var.invoke()) == null) {
                tInvoke = (T) KClassUtil.findAndInstantiateDatabaseImpl$default(d31.n(this.klass), null, 2, null);
            }
            tInvoke.init(databaseConfiguration);
            return tInvoke;
        }

        public Builder<T> createFromAsset(String str, PrepackagedDatabaseCallback prepackagedDatabaseCallback) {
            str.getClass();
            prepackagedDatabaseCallback.getClass();
            this.prepackagedDatabaseCallback = prepackagedDatabaseCallback;
            this.copyFromAssetPath = str;
            return this;
        }

        public Builder<T> createFromFile(File file, PrepackagedDatabaseCallback prepackagedDatabaseCallback) {
            file.getClass();
            prepackagedDatabaseCallback.getClass();
            this.prepackagedDatabaseCallback = prepackagedDatabaseCallback;
            this.copyFromFile = file;
            return this;
        }

        public Builder<T> createFromInputStream(Callable<InputStream> callable, PrepackagedDatabaseCallback prepackagedDatabaseCallback) {
            callable.getClass();
            prepackagedDatabaseCallback.getClass();
            this.prepackagedDatabaseCallback = prepackagedDatabaseCallback;
            this.copyFromInputStream = callable;
            return this;
        }

        public Builder<T> enableMultiInstanceInvalidation() {
            this.multiInstanceInvalidationIntent = this.name != null ? new Intent(this.context, (Class<?>) MultiInstanceInvalidationService.class) : null;
            return this;
        }

        public final Builder<T> fallbackToDestructiveMigration(boolean z) {
            this.requireMigration = false;
            this.allowDestructiveMigrationOnDowngrade = true;
            this.allowDestructiveMigrationForAllTables = z;
            return this;
        }

        public Builder<T> fallbackToDestructiveMigrationFrom(boolean z, int... iArr) {
            iArr.getClass();
            for (int i : iArr) {
                this.migrationsNotRequiredFrom.add(Integer.valueOf(i));
            }
            this.allowDestructiveMigrationForAllTables = z;
            return this;
        }

        public final Builder<T> fallbackToDestructiveMigrationOnDowngrade(boolean z) {
            this.requireMigration = true;
            this.allowDestructiveMigrationOnDowngrade = true;
            this.allowDestructiveMigrationForAllTables = z;
            return this;
        }

        public Builder<T> openHelperFactory(SupportSQLiteOpenHelper.Factory factory) {
            this.supportOpenHelperFactory = factory;
            return this;
        }

        public Builder<T> setAutoCloseTimeout(long j, TimeUnit timeUnit) {
            timeUnit.getClass();
            if (j < 0) {
                fg.c("autoCloseTimeout must be >= 0");
                return null;
            }
            this.autoCloseTimeout = j;
            this.autoCloseTimeUnit = timeUnit;
            return this;
        }

        public final Builder<T> setDriver(SQLiteDriver sQLiteDriver) {
            sQLiteDriver.getClass();
            this.driver = sQLiteDriver;
            return this;
        }

        public final Builder<T> setInMemoryTrackingMode(boolean z) {
            this.inMemoryTrackingTableMode = z;
            return this;
        }

        public Builder<T> setJournalMode(JournalMode journalMode) {
            journalMode.getClass();
            this.journalMode = journalMode;
            return this;
        }

        public Builder<T> setMultiInstanceInvalidationServiceIntent(Intent intent) {
            intent.getClass();
            if (this.name == null) {
                intent = null;
            }
            this.multiInstanceInvalidationIntent = intent;
            return this;
        }

        public Builder<T> setQueryCallback(QueryCallback queryCallback, Executor executor) {
            queryCallback.getClass();
            executor.getClass();
            this.queryCallback = queryCallback;
            this.queryCallbackExecutor = executor;
            this.queryCallbackCoroutineContext = null;
            return this;
        }

        public final Builder<T> setQueryCoroutineContext(o22 o22Var) {
            o22Var.getClass();
            if (this.queryExecutor != null || this.transactionExecutor != null) {
                fg.c("This builder has already been configured with an Executor. A RoomDatabase canonly be configured with either an Executor or a CoroutineContext.");
                return null;
            }
            if (o22Var.get(g02.a.b) != null) {
                this.queryCoroutineContext = o22Var;
                return this;
            }
            fg.c("It is required that the coroutine context contain a dispatcher.");
            return null;
        }

        public Builder<T> setQueryExecutor(Executor executor) {
            executor.getClass();
            if (this.queryCoroutineContext == null) {
                this.queryExecutor = executor;
                return this;
            }
            fg.c("This builder has already been configured with a CoroutineContext. A RoomDatabasecan only be configured with either an Executor or a CoroutineContext.");
            return null;
        }

        public Builder<T> setTransactionExecutor(Executor executor) {
            executor.getClass();
            if (this.queryCoroutineContext == null) {
                this.transactionExecutor = executor;
                return this;
            }
            fg.c("This builder has already been configured with a CoroutineContext. A RoomDatabasecan only be configured with either an Executor or a CoroutineContext.");
            return null;
        }

        @ul2
        public Builder<T> fallbackToDestructiveMigrationOnDowngrade() {
            this.requireMigration = true;
            this.allowDestructiveMigrationOnDowngrade = true;
            return this;
        }

        @ul2
        public Builder<T> fallbackToDestructiveMigration() {
            this.requireMigration = false;
            this.allowDestructiveMigrationOnDowngrade = true;
            return this;
        }

        public Builder<T> createFromAsset(String str) {
            str.getClass();
            this.copyFromAssetPath = str;
            return this;
        }

        public Builder<T> createFromFile(File file) {
            file.getClass();
            this.copyFromFile = file;
            return this;
        }

        public Builder<T> createFromInputStream(Callable<InputStream> callable) {
            callable.getClass();
            this.copyFromInputStream = callable;
            return this;
        }

        public final Builder<T> setQueryCallback(o22 o22Var, QueryCallback queryCallback) {
            o22Var.getClass();
            queryCallback.getClass();
            this.queryCallback = queryCallback;
            this.queryCallbackExecutor = null;
            this.queryCallbackCoroutineContext = o22Var;
            return this;
        }

        @ul2
        public Builder<T> fallbackToDestructiveMigrationFrom(int... iArr) {
            iArr.getClass();
            for (int i : iArr) {
                this.migrationsNotRequiredFrom.add(Integer.valueOf(i));
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder(ne4<T> ne4Var, String str, ll3<? extends T> ll3Var, Context context) {
            ne4Var.getClass();
            context.getClass();
            this.callbacks = new ArrayList();
            this.typeConverters = new ArrayList();
            this.journalMode = JournalMode.AUTOMATIC;
            this.autoCloseTimeout = -1L;
            this.migrationContainer = new MigrationContainer();
            this.migrationsNotRequiredFrom = new LinkedHashSet();
            this.migrationStartAndEndVersions = new LinkedHashSet();
            this.autoMigrationSpecs = new ArrayList();
            this.requireMigration = true;
            this.inMemoryTrackingTableMode = true;
            this.klass = ne4Var;
            this.context = context;
            this.name = str;
            this.factory = ll3Var;
        }
    }

    public final void internalInitInvalidationTracker(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        getInvalidationTracker().internalInit$room_runtime(sQLiteConnection);
    }

    public final <T> T getTypeConverter(ne4<T> ne4Var) {
        ne4Var.getClass();
        T t = (T) this.typeConverters.get(ne4Var);
        t.getClass();
        return t;
    }

    public static abstract class Callback {
        public void onCreate(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            if (sQLiteConnection instanceof SupportSQLiteConnection) {
                onCreate(((SupportSQLiteConnection) sQLiteConnection).getDb());
            }
        }

        public void onDestructiveMigration(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            if (sQLiteConnection instanceof SupportSQLiteConnection) {
                onDestructiveMigration(((SupportSQLiteConnection) sQLiteConnection).getDb());
            }
        }

        public void onOpen(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            if (sQLiteConnection instanceof SupportSQLiteConnection) {
                onOpen(((SupportSQLiteConnection) sQLiteConnection).getDb());
            }
        }

        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.getClass();
        }

        public void onDestructiveMigration(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.getClass();
        }

        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.getClass();
        }
    }

    public static class MigrationContainer {
        private final Map<Integer, TreeMap<Integer, Migration>> migrations = new LinkedHashMap();

        public final void addMigration(Migration migration) {
            migration.getClass();
            int i = migration.startVersion;
            int i2 = migration.endVersion;
            Map<Integer, TreeMap<Integer, Migration>> map = this.migrations;
            Integer numValueOf = Integer.valueOf(i);
            TreeMap<Integer, Migration> treeMap = map.get(numValueOf);
            if (treeMap == null) {
                treeMap = new TreeMap<>();
                map.put(numValueOf, treeMap);
            }
            TreeMap<Integer, Migration> treeMap2 = treeMap;
            if (treeMap2.containsKey(Integer.valueOf(i2))) {
                Log.w(Room.LOG_TAG, "Overriding migration " + treeMap2.get(Integer.valueOf(i2)) + " with " + migration);
            }
            treeMap2.put(Integer.valueOf(i2), migration);
        }

        public void addMigrations(List<? extends Migration> list) {
            list.getClass();
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                addMigration((Migration) it.next());
            }
        }

        public final boolean contains(int i, int i2) {
            return MigrationUtil.contains(this, i, i2);
        }

        public List<Migration> findMigrationPath(int i, int i2) {
            return MigrationUtil.findMigrationPath(this, i, i2);
        }

        public Map<Integer, Map<Integer, Migration>> getMigrations() {
            return this.migrations;
        }

        public final b36<Map<Integer, Migration>, Iterable<Integer>> getSortedDescendingNodes$room_runtime(int i) {
            TreeMap<Integer, Migration> treeMap = this.migrations.get(Integer.valueOf(i));
            if (treeMap == null) {
                return null;
            }
            return new b36<>(treeMap, treeMap.descendingKeySet());
        }

        public final b36<Map<Integer, Migration>, Iterable<Integer>> getSortedNodes$room_runtime(int i) {
            TreeMap<Integer, Migration> treeMap = this.migrations.get(Integer.valueOf(i));
            if (treeMap == null) {
                return null;
            }
            return new b36<>(treeMap, treeMap.keySet());
        }

        public void addMigrations(Migration... migrationArr) {
            migrationArr.getClass();
            for (Migration migration : migrationArr) {
                addMigration(migration);
            }
        }
    }

    public Cursor query(String str, Object[] objArr) {
        str.getClass();
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return getOpenHelper().getWritableDatabase().query(new SimpleSQLiteQuery(str, objArr));
    }

    public <V> V runInTransaction(Callable<V> callable) {
        callable.getClass();
        return (V) runInTransaction(new w77(callable, 0));
    }

    public void runInTransaction(Runnable runnable) {
        runnable.getClass();
        runInTransaction(new v77(runnable, 0));
    }

    public final Cursor query(SupportSQLiteQuery supportSQLiteQuery) {
        supportSQLiteQuery.getClass();
        return query$default(this, supportSQLiteQuery, null, 2, null);
    }
}
