package androidx.room;

import androidx.room.coroutines.ConnectionPool;
import androidx.room.coroutines.ConnectionPoolKt;
import androidx.room.coroutines.PassthroughConnectionPool;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.driver.SupportSQLiteConnection;
import androidx.sqlite.driver.SupportSQLiteDriver;
import defpackage.bm3;
import defpackage.e02;
import defpackage.fg;
import defpackage.j59;
import defpackage.kx2;
import defpackage.nl3;
import defpackage.ny2;
import defpackage.qn1;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class RoomConnectionManager extends BaseRoomConnectionManager {
    private final List<RoomDatabase.Callback> callbacks;
    private final DatabaseConfiguration configuration;
    private final ConnectionPool connectionPool;
    private final RoomOpenDelegate openDelegate;
    private SupportSQLiteDatabase supportDatabase;
    private final SupportSQLiteOpenHelper supportOpenHelper;

    public static final class NoOpOpenDelegate extends RoomOpenDelegate {
        public NoOpOpenDelegate() {
            super(-1, "", "");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void createAllTables(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void dropAllTables(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onCreate(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onOpen(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPostMigrate(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPreMigrate(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public RoomOpenDelegate.ValidationResult onValidateSchema(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }
    }

    public final class SupportOpenHelperCallback extends SupportSQLiteOpenHelper.Callback {
        public SupportOpenHelperCallback(int i) {
            super(i);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) throws Exception {
            supportSQLiteDatabase.getClass();
            RoomConnectionManager.this.onCreate(new SupportSQLiteConnection(supportSQLiteDatabase));
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onDowngrade(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2) throws Exception {
            supportSQLiteDatabase.getClass();
            onUpgrade(supportSQLiteDatabase, i, i2);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) throws Exception {
            supportSQLiteDatabase.getClass();
            RoomConnectionManager.this.onOpen(new SupportSQLiteConnection(supportSQLiteDatabase));
            RoomConnectionManager.this.supportDatabase = supportSQLiteDatabase;
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onUpgrade(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2) throws Exception {
            supportSQLiteDatabase.getClass();
            RoomConnectionManager.this.onMigrate(new SupportSQLiteConnection(supportSQLiteDatabase), i, i2);
        }
    }

    public RoomConnectionManager(DatabaseConfiguration databaseConfiguration, RoomOpenDelegate roomOpenDelegate, bm3<? super nl3<? super e02<Object>, ? extends Object>, ? super e02<Object>, ? extends Object> bm3Var) {
        ConnectionPool connectionPoolNewSingleConnectionPool;
        databaseConfiguration.getClass();
        roomOpenDelegate.getClass();
        bm3Var.getClass();
        this.configuration = databaseConfiguration;
        this.openDelegate = roomOpenDelegate;
        List<RoomDatabase.Callback> list = databaseConfiguration.callbacks;
        this.callbacks = list == null ? kx2.b : list;
        SQLiteDriver sQLiteDriver = databaseConfiguration.sqliteDriver;
        if (sQLiteDriver != null) {
            this.supportOpenHelper = null;
            if (sQLiteDriver.hasConnectionPool()) {
                BaseRoomConnectionManager.DriverWrapper driverWrapper = new BaseRoomConnectionManager.DriverWrapper(this, databaseConfiguration.sqliteDriver);
                String str = databaseConfiguration.name;
                connectionPoolNewSingleConnectionPool = new PassthroughConnectionPool(driverWrapper, str != null ? str : ":memory:", bm3Var);
            } else {
                String str2 = databaseConfiguration.name;
                SQLiteDriver sQLiteDriver2 = databaseConfiguration.sqliteDriver;
                connectionPoolNewSingleConnectionPool = str2 == null ? ConnectionPoolKt.newSingleConnectionPool(new BaseRoomConnectionManager.DriverWrapper(this, sQLiteDriver2), ":memory:", databaseConfiguration.getPreparedStatementCacheSize$room_runtime()) : ConnectionPoolKt.newConnectionPool(new BaseRoomConnectionManager.DriverWrapper(this, sQLiteDriver2), databaseConfiguration.name, getMaxNumberOfReaders(databaseConfiguration.journalMode), getMaxNumberOfWriters(databaseConfiguration.journalMode), databaseConfiguration.getPreparedStatementCacheSize$room_runtime());
            }
            this.connectionPool = connectionPoolNewSingleConnectionPool;
        } else {
            if (databaseConfiguration.sqliteOpenHelperFactory == null) {
                fg.c("SQLiteManager was constructed with both null driver and open helper factory!");
                throw null;
            }
            SupportSQLiteOpenHelper supportSQLiteOpenHelperCreate = databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.Companion.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new SupportOpenHelperCallback(roomOpenDelegate.getVersion())).build());
            this.supportOpenHelper = supportSQLiteOpenHelperCreate;
            SupportSQLiteDriver supportSQLiteDriver = new SupportSQLiteDriver(supportSQLiteOpenHelperCreate);
            String str3 = databaseConfiguration.name;
            this.connectionPool = new PassthroughConnectionPool(supportSQLiteDriver, str3 != null ? str3 : ":memory:", bm3Var);
        }
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$1(RoomConnectionManager roomConnectionManager, SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        roomConnectionManager.supportDatabase = supportSQLiteDatabase;
        return j59.a;
    }

    private final void init() {
        boolean z = getConfiguration().journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.supportOpenHelper;
        if (supportSQLiteOpenHelper != null) {
            supportSQLiteOpenHelper.setWriteAheadLoggingEnabled(z);
        }
    }

    private final DatabaseConfiguration installOnOpenCallback(DatabaseConfiguration databaseConfiguration, final nl3<? super SupportSQLiteDatabase, j59> nl3Var) {
        Collection collection = databaseConfiguration.callbacks;
        if (collection == null) {
            collection = kx2.b;
        }
        return DatabaseConfiguration.copy$default(databaseConfiguration, null, null, null, null, qn1.i0(new RoomDatabase.Callback() { // from class: androidx.room.RoomConnectionManager$installOnOpenCallback$newCallbacks$1
            @Override // androidx.room.RoomDatabase.Callback
            public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.getClass();
                nl3Var.invoke(supportSQLiteDatabase);
            }
        }, collection), false, null, null, null, null, false, false, null, null, null, null, null, null, null, false, null, null, 4194287, null);
    }

    public final void close() {
        this.connectionPool.close();
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.supportOpenHelper;
        if (supportSQLiteOpenHelper != null) {
            supportSQLiteOpenHelper.close();
        }
    }

    @Override // androidx.room.BaseRoomConnectionManager
    public List<RoomDatabase.Callback> getCallbacks() {
        return this.callbacks;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    public DatabaseConfiguration getConfiguration() {
        return this.configuration;
    }

    public final ConnectionPool getConnectionPool$room_runtime() {
        return this.connectionPool;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    public RoomOpenDelegate getOpenDelegate() {
        return this.openDelegate;
    }

    public final SupportSQLiteOpenHelper getSupportOpenHelper$room_runtime() {
        return this.supportOpenHelper;
    }

    public final boolean isSupportDatabaseOpen() {
        SupportSQLiteDatabase supportSQLiteDatabase = this.supportDatabase;
        if (supportSQLiteDatabase != null) {
            return supportSQLiteDatabase.isOpen();
        }
        return false;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    public String resolveFileName$room_runtime(String str) {
        str.getClass();
        if (str.equals(":memory:")) {
            return str;
        }
        String absolutePath = getConfiguration().context.getDatabasePath(str).getAbsolutePath();
        absolutePath.getClass();
        return absolutePath;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    public <R> Object useConnection(boolean z, bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        return this.connectionPool.useConnection(z, bm3Var, e02Var);
    }

    public RoomConnectionManager(DatabaseConfiguration databaseConfiguration, nl3<? super DatabaseConfiguration, ? extends SupportSQLiteOpenHelper> nl3Var, bm3<? super nl3<? super e02<Object>, ? extends Object>, ? super e02<Object>, ? extends Object> bm3Var) {
        databaseConfiguration.getClass();
        nl3Var.getClass();
        bm3Var.getClass();
        this.configuration = databaseConfiguration;
        this.openDelegate = new NoOpOpenDelegate();
        List<RoomDatabase.Callback> list = databaseConfiguration.callbacks;
        this.callbacks = list == null ? kx2.b : list;
        SupportSQLiteOpenHelper supportSQLiteOpenHelperInvoke = nl3Var.invoke(installOnOpenCallback(databaseConfiguration, new ny2(this, 3)));
        this.supportOpenHelper = supportSQLiteOpenHelperInvoke;
        SupportSQLiteDriver supportSQLiteDriver = new SupportSQLiteDriver(supportSQLiteOpenHelperInvoke);
        String str = databaseConfiguration.name;
        this.connectionPool = new PassthroughConnectionPool(supportSQLiteDriver, str == null ? ":memory:" : str, bm3Var);
        init();
    }
}
