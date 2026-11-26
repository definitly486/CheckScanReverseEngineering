package androidx.room;

import androidx.room.concurrent.CloseBarrier;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.google.firebase.perf.FirebasePerformance;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.b36;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.fg;
import defpackage.gg1;
import defpackage.hd3;
import defpackage.i39;
import defpackage.ir7;
import defpackage.j59;
import defpackage.jh2;
import defpackage.l1;
import defpackage.ll3;
import defpackage.m7;
import defpackage.n05;
import defpackage.nl3;
import defpackage.ox2;
import defpackage.pk5;
import defpackage.qk5;
import defpackage.r57;
import defpackage.ra8;
import defpackage.tb7;
import defpackage.vi2;
import defpackage.w22;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final class TriggerBasedInvalidationTracker {
    private static final String CREATE_TRACKING_TABLE_SQL = "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)";
    private static final String DROP_TRACKING_TABLE_SQL = "DROP TABLE IF EXISTS room_table_modification_log";
    private static final String INVALIDATED_COLUMN_NAME = "invalidated";
    private static final String RESET_UPDATED_TABLES_SQL = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1";
    private static final String SELECT_UPDATED_TABLES_SQL = "SELECT * FROM room_table_modification_log WHERE invalidated = 1";
    private static final String TABLE_ID_COLUMN_NAME = "table_id";
    private static final String UPDATE_TABLE_NAME = "room_table_modification_log";
    private final RoomDatabase database;
    private final ObservedTableStates observedTableStates;
    private final ObservedTableVersions observedTableVersions;
    private ll3<Boolean> onAllowRefresh;
    private final nl3<Set<Integer>, j59> onInvalidatedTablesIds;
    private final AtomicBoolean pendingRefresh;
    private final Map<String, String> shadowTablesMap;
    private final Map<String, Integer> tableIdLookup;
    private final String[] tablesNames;
    private final boolean useTempTable;
    private final Map<String, Set<String>> viewTables;
    public static final Companion Companion = new Companion(null);
    private static final String[] TRIGGERS = {"INSERT", "UPDATE", FirebasePerformance.HttpMethod.DELETE};

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1, reason: invalid class name */
    @bd2(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", l = {445, 453}, m = "checkInvalidatedTables")
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.checkInvalidatedTables(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", l = {417}, m = "notifyInvalidation")
    public static final class C07251 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C07251(e02<? super C07251> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.notifyInvalidation(this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$startTrackingTable$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", l = {328, 333}, m = "startTrackingTable")
    public static final class C07261 extends f02 {
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C07261(e02<? super C07261> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.startTrackingTable(null, 0, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", l = {347}, m = "stopTrackingTable")
    public static final class C07271 extends f02 {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C07271(e02<? super C07271> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.stopTrackingTable(null, 0, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TriggerBasedInvalidationTracker(RoomDatabase roomDatabase, Map<String, String> map, Map<String, ? extends Set<String>> map2, String[] strArr, boolean z, nl3<? super Set<Integer>, j59> nl3Var) {
        String lowerCase;
        roomDatabase.getClass();
        map.getClass();
        map2.getClass();
        strArr.getClass();
        nl3Var.getClass();
        this.database = roomDatabase;
        this.shadowTablesMap = map;
        this.viewTables = map2;
        this.useTempTable = z;
        this.onInvalidatedTablesIds = nl3Var;
        this.pendingRefresh = new AtomicBoolean(false);
        this.onAllowRefresh = new pk5(1);
        this.tableIdLookup = new LinkedHashMap();
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.ROOT;
            String lowerCase2 = str.toLowerCase(locale);
            lowerCase2.getClass();
            this.tableIdLookup.put(lowerCase2, Integer.valueOf(i));
            String str2 = this.shadowTablesMap.get(strArr[i]);
            if (str2 != null) {
                lowerCase = str2.toLowerCase(locale);
                lowerCase.getClass();
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr2[i] = lowerCase2;
        }
        this.tablesNames = strArr2;
        for (Map.Entry<String, String> entry : this.shadowTablesMap.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.ROOT;
            String lowerCase3 = value.toLowerCase(locale2);
            lowerCase3.getClass();
            if (this.tableIdLookup.containsKey(lowerCase3)) {
                String lowerCase4 = entry.getKey().toLowerCase(locale2);
                lowerCase4.getClass();
                Map<String, Integer> map3 = this.tableIdLookup;
                map3.put(lowerCase4, (Integer) n05.c(lowerCase3, map3));
            }
        }
        this.observedTableStates = new ObservedTableStates(this.tablesNames.length);
        this.observedTableVersions = new ObservedTableVersions(this.tablesNames.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object checkInvalidatedTables(PooledConnection pooledConnection, e02<? super Set<Integer>> e02Var) {
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
        Object objUsePrepared = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objUsePrepared);
            gg1 gg1Var = new gg1(4);
            anonymousClass1.L$0 = pooledConnection;
            anonymousClass1.label = 1;
            objUsePrepared = pooledConnection.usePrepared(SELECT_UPDATED_TABLES_SQL, gg1Var, anonymousClass1);
            if (objUsePrepared != a32Var) {
            }
            return a32Var;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Set set = (Set) anonymousClass1.L$0;
            r57.b(objUsePrepared);
            return set;
        }
        pooledConnection = (PooledConnection) anonymousClass1.L$0;
        r57.b(objUsePrepared);
        Set set2 = (Set) objUsePrepared;
        if (!set2.isEmpty()) {
            anonymousClass1.L$0 = set2;
            anonymousClass1.label = 2;
            if (TransactorKt.execSQL(pooledConnection, RESET_UPDATED_TABLES_SQL, anonymousClass1) == a32Var) {
                return a32Var;
            }
        }
        return set2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set checkInvalidatedTables$lambda$14(SQLiteStatement sQLiteStatement) {
        sQLiteStatement.getClass();
        ir7 ir7Var = new ir7();
        while (sQLiteStatement.step()) {
            ir7Var.add(Integer.valueOf((int) sQLiteStatement.getLong(0)));
        }
        return l1.d(ir7Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object notifyInvalidation(e02<? super Set<Integer>> e02Var) throws Throwable {
        C07251 c07251;
        CloseBarrier closeBarrier;
        if (e02Var instanceof C07251) {
            c07251 = (C07251) e02Var;
            int i = c07251.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07251.label = i - Integer.MIN_VALUE;
            } else {
                c07251 = new C07251(e02Var);
            }
        } else {
            c07251 = new C07251(e02Var);
        }
        Object obj = c07251.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c07251.label;
        if (i2 == 0) {
            r57.b(obj);
            CloseBarrier closeBarrier$room_runtime = this.database.getCloseBarrier$room_runtime();
            boolean zBlock$room_runtime = closeBarrier$room_runtime.block$room_runtime();
            ox2 ox2Var = ox2.b;
            if (!zBlock$room_runtime) {
                return ox2Var;
            }
            try {
                if (!this.pendingRefresh.compareAndSet(true, false)) {
                    closeBarrier$room_runtime.unblock$room_runtime();
                    return ox2Var;
                }
                if (!this.onAllowRefresh.invoke().booleanValue()) {
                    closeBarrier$room_runtime.unblock$room_runtime();
                    return ox2Var;
                }
                RoomDatabase roomDatabase = this.database;
                TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(this, null);
                c07251.L$0 = closeBarrier$room_runtime;
                c07251.label = 1;
                Object objUseConnection = roomDatabase.useConnection(false, triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1, c07251);
                if (objUseConnection == a32Var) {
                    return a32Var;
                }
                closeBarrier = closeBarrier$room_runtime;
                obj = objUseConnection;
            } catch (Throwable th) {
                th = th;
                closeBarrier = closeBarrier$room_runtime;
                closeBarrier.unblock$room_runtime();
                throw th;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            closeBarrier = (CloseBarrier) c07251.L$0;
            try {
                r57.b(obj);
            } catch (Throwable th2) {
                th = th2;
                closeBarrier.unblock$room_runtime();
                throw th;
            }
        }
        Set<Integer> set = (Set) obj;
        if (!set.isEmpty()) {
            this.observedTableVersions.increment(set);
            this.onInvalidatedTablesIds.invoke(set);
        }
        closeBarrier.unblock$room_runtime();
        return set;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onAllowRefresh$lambda$0() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object refreshInvalidation$room_runtime$default(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, String[] strArr, ll3 ll3Var, ll3 ll3Var2, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            ll3Var = new i39();
        }
        if ((i & 4) != 0) {
            ll3Var2 = new m7(1);
        }
        return triggerBasedInvalidationTracker.refreshInvalidation$room_runtime(strArr, ll3Var, ll3Var2, e02Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void refreshInvalidationAsync$room_runtime$default(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, ll3 ll3Var, ll3 ll3Var2, int i, Object obj) {
        if ((i & 1) != 0) {
            ll3Var = new qk5(1);
        }
        if ((i & 2) != 0) {
            ll3Var2 = new vi2(1);
        }
        triggerBasedInvalidationTracker.refreshInvalidationAsync$room_runtime(ll3Var, ll3Var2);
    }

    private final String[] resolveViews(String[] strArr) {
        ir7 ir7Var = new ir7();
        for (String str : strArr) {
            Map<String, Set<String>> map = this.viewTables;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Set<String> set = map.get(lowerCase);
            if (set != null) {
                ir7Var.addAll(set);
            } else {
                ir7Var.add(str);
            }
        }
        return (String[]) l1.d(ir7Var).toArray(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:21:0x0090  */
    /* JADX WARN: Code duplicated, block: B:23:0x0096  */
    /* JADX WARN: Code duplicated, block: B:24:0x0099  */
    /* JADX WARN: Code duplicated, block: B:29:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007d, code lost:
    
        if (androidx.room.TransactorKt.execSQL(r1, r3, r4) == r5) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cc, code lost:
    
        if (androidx.room.TransactorKt.execSQL(r11, r3, r4) == r5) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ce, code lost:
    
        return r5;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00cc -> B:28:0x00cf). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object startTrackingTable(androidx.room.PooledConnection r18, int r19, defpackage.e02<? super defpackage.j59> r20) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.startTrackingTable(androidx.room.PooledConnection, int, e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:16:0x0053  */
    /* JADX WARN: Code duplicated, block: B:18:0x0075 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0073 -> B:19:0x0076). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object stopTrackingTable(androidx.room.PooledConnection r9, int r10, defpackage.e02<? super defpackage.j59> r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof androidx.room.TriggerBasedInvalidationTracker.C07271
            if (r0 == 0) goto L13
            r0 = r11
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = (androidx.room.TriggerBasedInvalidationTracker.C07271) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L40
            if (r2 != r3) goto L39
            int r8 = r0.I$1
            int r9 = r0.I$0
            java.lang.Object r10 = r0.L$2
            java.lang.String[] r10 = (java.lang.String[]) r10
            java.lang.Object r2 = r0.L$1
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r4 = r0.L$0
            androidx.room.PooledConnection r4 = (androidx.room.PooledConnection) r4
            defpackage.r57.b(r11)
            r11 = r10
            r10 = r4
            goto L76
        L39:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            r8 = 0
            return r8
        L40:
            defpackage.r57.b(r11)
            java.lang.String[] r8 = r8.tablesNames
            r8 = r8[r10]
            java.lang.String[] r10 = androidx.room.TriggerBasedInvalidationTracker.TRIGGERS
            int r11 = r10.length
            r2 = 0
            r7 = r2
            r2 = r8
            r8 = r11
            r11 = r10
            r10 = r9
            r9 = r7
        L51:
            if (r9 >= r8) goto L78
            r4 = r11[r9]
            androidx.room.TriggerBasedInvalidationTracker$Companion r5 = androidx.room.TriggerBasedInvalidationTracker.Companion
            java.lang.String r4 = androidx.room.TriggerBasedInvalidationTracker.Companion.access$getTriggerName(r5, r2, r4)
            java.lang.String r5 = "DROP TRIGGER IF EXISTS `"
            r6 = 96
            java.lang.String r4 = defpackage.lt0.d(r6, r5, r4)
            r0.L$0 = r10
            r0.L$1 = r2
            r0.L$2 = r11
            r0.I$0 = r9
            r0.I$1 = r8
            r0.label = r3
            java.lang.Object r4 = androidx.room.TransactorKt.execSQL(r10, r4, r0)
            if (r4 != r1) goto L76
            return r1
        L76:
            int r9 = r9 + r3
            goto L51
        L78:
            j59 r8 = defpackage.j59.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.stopTrackingTable(androidx.room.PooledConnection, int, e02):java.lang.Object");
    }

    public final void configureConnection(SQLiteConnection sQLiteConnection) throws Exception {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("PRAGMA query_only");
        try {
            sQLiteStatementPrepare.step();
            boolean z = sQLiteStatementPrepare.getBoolean(0);
            aq5.c(sQLiteStatementPrepare, null);
            if (z) {
                return;
            }
            SQLite.execSQL(sQLiteConnection, "PRAGMA temp_store = MEMORY");
            SQLite.execSQL(sQLiteConnection, "PRAGMA recursive_triggers = 1");
            SQLite.execSQL(sQLiteConnection, DROP_TRACKING_TABLE_SQL);
            if (this.useTempTable) {
                SQLite.execSQL(sQLiteConnection, CREATE_TRACKING_TABLE_SQL);
            } else {
                SQLite.execSQL(sQLiteConnection, ra8.y(CREATE_TRACKING_TABLE_SQL, "TEMP", ""));
            }
            this.observedTableStates.forceNeedSync$room_runtime();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public final hd3<Set<String>> createFlow$room_runtime(String[] strArr, int[] iArr, boolean z) {
        strArr.getClass();
        iArr.getClass();
        return new tb7(new TriggerBasedInvalidationTracker$createFlow$1(this, iArr, z, strArr, null));
    }

    public final ll3<Boolean> getOnAllowRefresh$room_runtime() {
        return this.onAllowRefresh;
    }

    public final boolean onObserverAdded$room_runtime(int[] iArr) {
        iArr.getClass();
        return this.observedTableStates.onObserverAdded$room_runtime(iArr);
    }

    public final boolean onObserverRemoved$room_runtime(int[] iArr) {
        iArr.getClass();
        return this.observedTableStates.onObserverRemoved$room_runtime(iArr);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object refreshInvalidation$room_runtime(String[] strArr, ll3<j59> ll3Var, ll3<j59> ll3Var2, e02<? super Boolean> e02Var) {
        TriggerBasedInvalidationTracker$refreshInvalidation$1 triggerBasedInvalidationTracker$refreshInvalidation$1;
        int[] iArr;
        if (e02Var instanceof TriggerBasedInvalidationTracker$refreshInvalidation$1) {
            triggerBasedInvalidationTracker$refreshInvalidation$1 = (TriggerBasedInvalidationTracker$refreshInvalidation$1) e02Var;
            int i = triggerBasedInvalidationTracker$refreshInvalidation$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$refreshInvalidation$1.label = i - Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$refreshInvalidation$1 = new TriggerBasedInvalidationTracker$refreshInvalidation$1(this, e02Var);
            }
        } else {
            triggerBasedInvalidationTracker$refreshInvalidation$1 = new TriggerBasedInvalidationTracker$refreshInvalidation$1(this, e02Var);
        }
        Object objNotifyInvalidation = triggerBasedInvalidationTracker$refreshInvalidation$1.result;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i2 = triggerBasedInvalidationTracker$refreshInvalidation$1.label;
        boolean z = true;
        try {
            if (i2 == 0) {
                r57.b(objNotifyInvalidation);
                int[] iArr2 = validateTableNames$room_runtime(strArr).c;
                ll3Var.invoke();
                triggerBasedInvalidationTracker$refreshInvalidation$1.L$0 = ll3Var2;
                triggerBasedInvalidationTracker$refreshInvalidation$1.L$1 = iArr2;
                triggerBasedInvalidationTracker$refreshInvalidation$1.label = 1;
                objNotifyInvalidation = notifyInvalidation(triggerBasedInvalidationTracker$refreshInvalidation$1);
                if (objNotifyInvalidation == obj) {
                    return obj;
                }
                iArr = iArr2;
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                iArr = (int[]) triggerBasedInvalidationTracker$refreshInvalidation$1.L$1;
                ll3Var2 = (ll3) triggerBasedInvalidationTracker$refreshInvalidation$1.L$0;
                r57.b(objNotifyInvalidation);
            }
            Set set = (Set) objNotifyInvalidation;
            if (!(iArr.length == 0)) {
                int length = iArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z = false;
                        break;
                    }
                    if (set.contains(new Integer(iArr[i3]))) {
                        break;
                    }
                    i3++;
                }
            } else if (set.isEmpty()) {
                z = false;
                break;
            }
            Boolean boolValueOf = Boolean.valueOf(z);
            ll3Var2.invoke();
            return boolValueOf;
        } catch (Throwable th) {
            ll3Var2.invoke();
            throw th;
        }
    }

    public final void refreshInvalidationAsync$room_runtime(ll3<j59> ll3Var, ll3<j59> ll3Var2) {
        ll3Var.getClass();
        ll3Var2.getClass();
        if (this.pendingRefresh.compareAndSet(false, true)) {
            ll3Var.invoke();
            av0.c(this.database.getCoroutineScope(), new w22("Room Invalidation Tracker Refresh"), null, new TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(this, ll3Var2, null), 2);
        }
    }

    public final void resetSync$room_runtime() {
        this.observedTableStates.resetTriggerState$room_runtime();
    }

    public final void setOnAllowRefresh$room_runtime(ll3<Boolean> ll3Var) {
        ll3Var.getClass();
        this.onAllowRefresh = ll3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object syncTriggers$room_runtime(e02<? super j59> e02Var) throws Throwable {
        TriggerBasedInvalidationTracker$syncTriggers$1 triggerBasedInvalidationTracker$syncTriggers$1;
        Throwable th;
        CloseBarrier closeBarrier;
        if (e02Var instanceof TriggerBasedInvalidationTracker$syncTriggers$1) {
            triggerBasedInvalidationTracker$syncTriggers$1 = (TriggerBasedInvalidationTracker$syncTriggers$1) e02Var;
            int i = triggerBasedInvalidationTracker$syncTriggers$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$syncTriggers$1.label = i - Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$syncTriggers$1 = new TriggerBasedInvalidationTracker$syncTriggers$1(this, e02Var);
            }
        } else {
            triggerBasedInvalidationTracker$syncTriggers$1 = new TriggerBasedInvalidationTracker$syncTriggers$1(this, e02Var);
        }
        Object obj = triggerBasedInvalidationTracker$syncTriggers$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = triggerBasedInvalidationTracker$syncTriggers$1.label;
        if (i2 == 0) {
            r57.b(obj);
            CloseBarrier closeBarrier$room_runtime = this.database.getCloseBarrier$room_runtime();
            if (closeBarrier$room_runtime.block$room_runtime()) {
                try {
                    RoomDatabase roomDatabase = this.database;
                    TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this, null);
                    triggerBasedInvalidationTracker$syncTriggers$1.L$0 = closeBarrier$room_runtime;
                    triggerBasedInvalidationTracker$syncTriggers$1.label = 1;
                    if (roomDatabase.useConnection(false, triggerBasedInvalidationTracker$syncTriggers$2$1, triggerBasedInvalidationTracker$syncTriggers$1) == a32Var) {
                        return a32Var;
                    }
                    closeBarrier = closeBarrier$room_runtime;
                    closeBarrier.unblock$room_runtime();
                } catch (Throwable th2) {
                    th = th2;
                    closeBarrier = closeBarrier$room_runtime;
                    closeBarrier.unblock$room_runtime();
                    throw th;
                }
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            closeBarrier = (CloseBarrier) triggerBasedInvalidationTracker$syncTriggers$1.L$0;
            try {
                r57.b(obj);
                closeBarrier.unblock$room_runtime();
            } catch (Throwable th3) {
                th = th3;
                closeBarrier.unblock$room_runtime();
                throw th;
            }
        }
        return j59.a;
    }

    public final b36<String[], int[]> validateTableNames$room_runtime(String[] strArr) {
        strArr.getClass();
        String[] strArrResolveViews = resolveViews(strArr);
        int length = strArrResolveViews.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            String str = strArrResolveViews[i];
            Map<String, Integer> map = this.tableIdLookup;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Integer num = map.get(lowerCase);
            if (num == null) {
                fg.c("There is no table with name ".concat(str));
                return null;
            }
            iArr[i] = num.intValue();
        }
        return new b36<>(strArrResolveViews, iArr);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getTriggerName(String str, String str2) {
            return "room_table_modification_trigger_" + str + '_' + str2;
        }

        private Companion() {
        }
    }
}
