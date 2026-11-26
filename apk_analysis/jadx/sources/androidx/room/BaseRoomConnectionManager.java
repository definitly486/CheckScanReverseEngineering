package androidx.room;

import androidx.room.concurrent.ExclusiveLock;
import androidx.room.migration.Migration;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.SQLiteStatement;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aq5;
import defpackage.ar4;
import defpackage.b36;
import defpackage.bm3;
import defpackage.e02;
import defpackage.fe0;
import defpackage.ge0;
import defpackage.j59;
import defpackage.jh2;
import defpackage.k57;
import defpackage.me0;
import defpackage.nl3;
import defpackage.ra8;
import defpackage.u96;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseRoomConnectionManager {
    public static final int BUSY_TIMEOUT_MS = 3000;
    public static final Companion Companion = new Companion(null);
    private boolean isConfigured;
    private boolean isInitializing;

    public final class DriverWrapper implements SQLiteDriver {
        private final SQLiteDriver actual;
        final /* synthetic */ BaseRoomConnectionManager this$0;

        public DriverWrapper(BaseRoomConnectionManager baseRoomConnectionManager, SQLiteDriver sQLiteDriver) {
            sQLiteDriver.getClass();
            this.this$0 = baseRoomConnectionManager;
            this.actual = sQLiteDriver;
        }

        private final SQLiteConnection openLocked(final String str) {
            return (SQLiteConnection) new ExclusiveLock(str, (this.this$0.isConfigured || this.this$0.isInitializing || aa4.e(str, ":memory:")) ? false : true).withLock(new ge0(this.this$0, this, str, 0), new nl3() { // from class: androidx.room.BaseRoomConnectionManager$DriverWrapper$openLocked$2
                @Override // defpackage.nl3
                public final Void invoke(Throwable th) {
                    th.getClass();
                    throw new IllegalStateException(me0.d(new StringBuilder("Unable to open database '"), str, "'. Was a proper path / name used in Room's database builder?"), th);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SQLiteConnection openLocked$lambda$1(BaseRoomConnectionManager baseRoomConnectionManager, DriverWrapper driverWrapper, String str) throws Exception {
            if (baseRoomConnectionManager.isInitializing) {
                ah.f("Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?");
                return null;
            }
            SQLiteConnection sQLiteConnectionOpen = driverWrapper.actual.open(str);
            if (baseRoomConnectionManager.isConfigured) {
                baseRoomConnectionManager.configurationConnection(sQLiteConnectionOpen);
                return sQLiteConnectionOpen;
            }
            try {
                baseRoomConnectionManager.isInitializing = true;
                baseRoomConnectionManager.configureDatabase(sQLiteConnectionOpen);
                return sQLiteConnectionOpen;
            } finally {
                baseRoomConnectionManager.isInitializing = false;
            }
        }

        @Override // androidx.sqlite.SQLiteDriver
        public boolean hasConnectionPool() {
            return this.actual.hasConnectionPool();
        }

        @Override // androidx.sqlite.SQLiteDriver
        public SQLiteConnection open(String str) {
            str.getClass();
            return openLocked(this.this$0.resolveFileName$room_runtime(str));
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RoomDatabase.JournalMode.values().length];
            try {
                iArr[RoomDatabase.JournalMode.TRUNCATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void checkIdentity(SQLiteConnection sQLiteConnection) throws Exception {
        Object aVar;
        if (hasRoomMasterTable(sQLiteConnection)) {
            SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(RoomMasterTable.READ_QUERY);
            try {
                String text = sQLiteStatementPrepare.step() ? sQLiteStatementPrepare.getText(0) : null;
                aq5.c(sQLiteStatementPrepare, null);
                if (aa4.e(getOpenDelegate().getIdentityHash(), text) || aa4.e(getOpenDelegate().getLegacyIdentityHash(), text)) {
                    return;
                }
                throw new IllegalStateException(("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + getOpenDelegate().getIdentityHash() + ", found: " + text).toString());
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    aq5.c(sQLiteStatementPrepare, th);
                    throw th2;
                }
            }
        }
        SQLite.execSQL(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
        try {
            RoomOpenDelegate.ValidationResult validationResultOnValidateSchema = getOpenDelegate().onValidateSchema(sQLiteConnection);
            if (!validationResultOnValidateSchema.isValid) {
                throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + validationResultOnValidateSchema.expectedFoundMsg).toString());
            }
            getOpenDelegate().onPostMigrate(sQLiteConnection);
            updateIdentity(sQLiteConnection);
            aVar = j59.a;
            if (!(aVar instanceof k57.a)) {
                SQLite.execSQL(sQLiteConnection, "END TRANSACTION");
            }
            Throwable thA = k57.a(aVar);
            if (thA == null) {
                return;
            }
            SQLite.execSQL(sQLiteConnection, "ROLLBACK TRANSACTION");
            throw thA;
        } catch (Throwable th3) {
            aVar = new k57.a(th3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configurationConnection(SQLiteConnection sQLiteConnection) throws Exception {
        configureBusyTimeout(sQLiteConnection);
        configureSynchronousFlag(sQLiteConnection);
        getOpenDelegate().onOpen(sQLiteConnection);
    }

    private final void configureBusyTimeout(SQLiteConnection sQLiteConnection) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("PRAGMA busy_timeout");
        try {
            sQLiteStatementPrepare.step();
            long j = sQLiteStatementPrepare.getLong(0);
            aq5.c(sQLiteStatementPrepare, null);
            if (j < 3000) {
                SQLite.execSQL(sQLiteConnection, "PRAGMA busy_timeout = 3000");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configureDatabase(SQLiteConnection sQLiteConnection) throws Exception {
        Object aVar;
        configureBusyTimeout(sQLiteConnection);
        configureJournalMode(sQLiteConnection);
        configureSynchronousFlag(sQLiteConnection);
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("PRAGMA user_version");
        try {
            sQLiteStatementPrepare.step();
            int i = (int) sQLiteStatementPrepare.getLong(0);
            aq5.c(sQLiteStatementPrepare, null);
            if (i != getOpenDelegate().getVersion()) {
                SQLite.execSQL(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    if (i == 0) {
                        onCreate(sQLiteConnection);
                    } else {
                        onMigrate(sQLiteConnection, i, getOpenDelegate().getVersion());
                    }
                    SQLite.execSQL(sQLiteConnection, "PRAGMA user_version = " + getOpenDelegate().getVersion());
                    aVar = j59.a;
                } catch (Throwable th) {
                    aVar = new k57.a(th);
                }
                if (!(aVar instanceof k57.a)) {
                    SQLite.execSQL(sQLiteConnection, "END TRANSACTION");
                }
                Throwable thA = k57.a(aVar);
                if (thA != null) {
                    SQLite.execSQL(sQLiteConnection, "ROLLBACK TRANSACTION");
                    throw thA;
                }
            }
            onOpen(sQLiteConnection);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                aq5.c(sQLiteStatementPrepare, th2);
                throw th3;
            }
        }
    }

    private final void configureJournalMode(SQLiteConnection sQLiteConnection) {
        if (getConfiguration().journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            SQLite.execSQL(sQLiteConnection, "PRAGMA journal_mode = WAL");
        } else {
            SQLite.execSQL(sQLiteConnection, "PRAGMA journal_mode = TRUNCATE");
        }
    }

    private final void configureSynchronousFlag(SQLiteConnection sQLiteConnection) {
        if (getConfiguration().journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            SQLite.execSQL(sQLiteConnection, "PRAGMA synchronous = NORMAL");
        } else {
            SQLite.execSQL(sQLiteConnection, "PRAGMA synchronous = FULL");
        }
    }

    private final void createMasterTableIfNotExists(SQLiteConnection sQLiteConnection) {
        SQLite.execSQL(sQLiteConnection, RoomMasterTable.CREATE_QUERY);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void dropAllTables(SQLiteConnection sQLiteConnection) throws Exception {
        if (!getConfiguration().allowDestructiveMigrationForAllTables) {
            getOpenDelegate().dropAllTables(sQLiteConnection);
            return;
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'");
        try {
            ar4 ar4VarE = u96.e();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(0);
                if (!ra8.C(text, "sqlite_", false) && !text.equals("android_metadata")) {
                    ar4VarE.add(new b36(text, Boolean.valueOf(aa4.e(sQLiteStatementPrepare.getText(1), "view"))));
                }
            }
            ar4 ar4VarD = u96.d(ar4VarE);
            aq5.c(sQLiteStatementPrepare, null);
            ListIterator listIterator = ar4VarD.listIterator(0);
            while (true) {
                ar4.b bVar = (ar4.b) listIterator;
                if (!bVar.hasNext()) {
                    return;
                }
                b36 b36Var = (b36) bVar.next();
                String str = (String) b36Var.b;
                if (((Boolean) b36Var.c).booleanValue()) {
                    SQLite.execSQL(sQLiteConnection, "DROP VIEW IF EXISTS `" + str + '`');
                } else {
                    SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `" + str + '`');
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    private final boolean hasEmptySchema(SQLiteConnection sQLiteConnection) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (sQLiteStatementPrepare.step() && sQLiteStatementPrepare.getLong(0) == 0) {
                z = true;
            }
            aq5.c(sQLiteStatementPrepare, null);
            return z;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    private final boolean hasRoomMasterTable(SQLiteConnection sQLiteConnection) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name = 'room_master_table'");
        try {
            boolean z = false;
            if (sQLiteStatementPrepare.step() && sQLiteStatementPrepare.getLong(0) != 0) {
                z = true;
            }
            aq5.c(sQLiteStatementPrepare, null);
            return z;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    private final void invokeCreateCallback(SQLiteConnection sQLiteConnection) {
        Iterator<T> it = getCallbacks().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.Callback) it.next()).onCreate(sQLiteConnection);
        }
    }

    private final void invokeDestructiveMigrationCallback(SQLiteConnection sQLiteConnection) {
        Iterator<T> it = getCallbacks().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.Callback) it.next()).onDestructiveMigration(sQLiteConnection);
        }
    }

    private final void invokeOpenCallback(SQLiteConnection sQLiteConnection) {
        Iterator<T> it = getCallbacks().iterator();
        while (it.hasNext()) {
            ((RoomDatabase.Callback) it.next()).onOpen(sQLiteConnection);
        }
    }

    private final void updateIdentity(SQLiteConnection sQLiteConnection) {
        createMasterTableIfNotExists(sQLiteConnection);
        SQLite.execSQL(sQLiteConnection, RoomMasterTable.createInsertQuery(getOpenDelegate().getIdentityHash()));
    }

    public abstract List<RoomDatabase.Callback> getCallbacks();

    public abstract DatabaseConfiguration getConfiguration();

    public final int getMaxNumberOfReaders(RoomDatabase.JournalMode journalMode) {
        journalMode.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[journalMode.ordinal()];
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 4;
        }
        throw new IllegalStateException(("Can't get max number of reader for journal mode '" + journalMode + '\'').toString());
    }

    public final int getMaxNumberOfWriters(RoomDatabase.JournalMode journalMode) {
        journalMode.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[journalMode.ordinal()];
        if (i == 1 || i == 2) {
            return 1;
        }
        throw new IllegalStateException(("Can't get max number of writers for journal mode '" + journalMode + '\'').toString());
    }

    public abstract RoomOpenDelegate getOpenDelegate();

    public final void onCreate(SQLiteConnection sQLiteConnection) throws Exception {
        sQLiteConnection.getClass();
        boolean zHasEmptySchema = hasEmptySchema(sQLiteConnection);
        getOpenDelegate().createAllTables(sQLiteConnection);
        if (!zHasEmptySchema) {
            RoomOpenDelegate.ValidationResult validationResultOnValidateSchema = getOpenDelegate().onValidateSchema(sQLiteConnection);
            if (!validationResultOnValidateSchema.isValid) {
                fe0.c(validationResultOnValidateSchema.expectedFoundMsg, "Pre-packaged database has an invalid schema: ");
                return;
            }
        }
        updateIdentity(sQLiteConnection);
        getOpenDelegate().onCreate(sQLiteConnection);
        invokeCreateCallback(sQLiteConnection);
    }

    public final void onMigrate(SQLiteConnection sQLiteConnection, int i, int i2) throws Exception {
        sQLiteConnection.getClass();
        List<Migration> listFindMigrationPath = MigrationUtil.findMigrationPath(getConfiguration().migrationContainer, i, i2);
        if (listFindMigrationPath != null) {
            getOpenDelegate().onPreMigrate(sQLiteConnection);
            Iterator<T> it = listFindMigrationPath.iterator();
            while (it.hasNext()) {
                ((Migration) it.next()).migrate(sQLiteConnection);
            }
            RoomOpenDelegate.ValidationResult validationResultOnValidateSchema = getOpenDelegate().onValidateSchema(sQLiteConnection);
            if (!validationResultOnValidateSchema.isValid) {
                fe0.c(validationResultOnValidateSchema.expectedFoundMsg, "Migration didn't properly handle: ");
                return;
            } else {
                getOpenDelegate().onPostMigrate(sQLiteConnection);
                updateIdentity(sQLiteConnection);
                return;
            }
        }
        if (!MigrationUtil.isMigrationRequired(getConfiguration(), i, i2)) {
            dropAllTables(sQLiteConnection);
            invokeDestructiveMigrationCallback(sQLiteConnection);
            getOpenDelegate().createAllTables(sQLiteConnection);
        } else {
            throw new IllegalStateException(("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions.").toString());
        }
    }

    public final void onOpen(SQLiteConnection sQLiteConnection) throws Exception {
        sQLiteConnection.getClass();
        checkIdentity(sQLiteConnection);
        getOpenDelegate().onOpen(sQLiteConnection);
        invokeOpenCallback(sQLiteConnection);
        this.isConfigured = true;
    }

    public String resolveFileName$room_runtime(String str) {
        str.getClass();
        return str;
    }

    public abstract <R> Object useConnection(boolean z, bm3<? super Transactor, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
