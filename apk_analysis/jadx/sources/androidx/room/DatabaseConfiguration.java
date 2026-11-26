package androidx.room;

import android.content.Context;
import android.content.Intent;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import defpackage.kx2;
import defpackage.n1;
import defpackage.o22;
import defpackage.ul2;
import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public class DatabaseConfiguration {
    public final boolean allowDestructiveMigrationForAllTables;
    public final boolean allowDestructiveMigrationOnDowngrade;
    public final boolean allowMainThreadQueries;
    public final List<AutoMigrationSpec> autoMigrationSpecs;
    public final List<RoomDatabase.Callback> callbacks;
    public final Context context;
    public final String copyFromAssetPath;
    public final File copyFromFile;
    public final Callable<InputStream> copyFromInputStream;
    public final RoomDatabase.JournalMode journalMode;
    public final RoomDatabase.MigrationContainer migrationContainer;
    private final Set<Integer> migrationNotRequiredFrom;
    public final boolean multiInstanceInvalidation;
    public final Intent multiInstanceInvalidationServiceIntent;
    public final String name;
    public final RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback;
    private int preparedStatementCacheSize;
    public final o22 queryCoroutineContext;
    public final Executor queryExecutor;
    public final boolean requireMigration;
    public final SQLiteDriver sqliteDriver;
    public final SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory;
    public final Executor transactionExecutor;
    public final List<Object> typeConverters;
    private boolean useTempTrackingTable;

    /* JADX WARN: Multi-variable type inference failed */
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<? extends RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, Intent intent, boolean z2, boolean z3, Set<Integer> set, String str2, File file, Callable<InputStream> callable, RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, List<? extends Object> list2, List<? extends AutoMigrationSpec> list3, boolean z4, SQLiteDriver sQLiteDriver, o22 o22Var) {
        context.getClass();
        migrationContainer.getClass();
        journalMode.getClass();
        executor.getClass();
        executor2.getClass();
        list2.getClass();
        list3.getClass();
        this.context = context;
        this.name = str;
        this.sqliteOpenHelperFactory = factory;
        this.migrationContainer = migrationContainer;
        this.callbacks = list;
        this.allowMainThreadQueries = z;
        this.journalMode = journalMode;
        this.queryExecutor = executor;
        this.transactionExecutor = executor2;
        this.multiInstanceInvalidationServiceIntent = intent;
        this.requireMigration = z2;
        this.allowDestructiveMigrationOnDowngrade = z3;
        this.migrationNotRequiredFrom = set;
        this.copyFromAssetPath = str2;
        this.copyFromFile = file;
        this.copyFromInputStream = callable;
        this.prepackagedDatabaseCallback = prepackagedDatabaseCallback;
        this.typeConverters = list2;
        this.autoMigrationSpecs = list3;
        this.allowDestructiveMigrationForAllTables = z4;
        this.sqliteDriver = sQLiteDriver;
        this.queryCoroutineContext = o22Var;
        this.multiInstanceInvalidation = intent != null;
        this.useTempTrackingTable = true;
        this.preparedStatementCacheSize = 25;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DatabaseConfiguration copy$default(DatabaseConfiguration databaseConfiguration, Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, Intent intent, boolean z2, boolean z3, Set set, String str2, File file, Callable callable, RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, List list2, List list3, boolean z4, SQLiteDriver sQLiteDriver, o22 o22Var, int i, Object obj) {
        o22 o22Var2;
        SQLiteDriver sQLiteDriver2;
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: copy");
            return null;
        }
        Context context2 = (i & 1) != 0 ? databaseConfiguration.context : context;
        String str3 = (i & 2) != 0 ? databaseConfiguration.name : str;
        SupportSQLiteOpenHelper.Factory factory2 = (i & 4) != 0 ? databaseConfiguration.sqliteOpenHelperFactory : factory;
        RoomDatabase.MigrationContainer migrationContainer2 = (i & 8) != 0 ? databaseConfiguration.migrationContainer : migrationContainer;
        List list4 = (i & 16) != 0 ? databaseConfiguration.callbacks : list;
        boolean z5 = (i & 32) != 0 ? databaseConfiguration.allowMainThreadQueries : z;
        RoomDatabase.JournalMode journalMode2 = (i & 64) != 0 ? databaseConfiguration.journalMode : journalMode;
        Executor executor3 = (i & 128) != 0 ? databaseConfiguration.queryExecutor : executor;
        Executor executor4 = (i & 256) != 0 ? databaseConfiguration.transactionExecutor : executor2;
        Intent intent2 = (i & 512) != 0 ? databaseConfiguration.multiInstanceInvalidationServiceIntent : intent;
        boolean z6 = (i & 1024) != 0 ? databaseConfiguration.requireMigration : z2;
        boolean z7 = (i & 2048) != 0 ? databaseConfiguration.allowDestructiveMigrationOnDowngrade : z3;
        Set set2 = (i & 4096) != 0 ? databaseConfiguration.migrationNotRequiredFrom : set;
        String str4 = (i & 8192) != 0 ? databaseConfiguration.copyFromAssetPath : str2;
        Context context3 = context2;
        File file2 = (i & 16384) != 0 ? databaseConfiguration.copyFromFile : file;
        Callable callable2 = (i & 32768) != 0 ? databaseConfiguration.copyFromInputStream : callable;
        RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback2 = (i & 65536) != 0 ? databaseConfiguration.prepackagedDatabaseCallback : prepackagedDatabaseCallback;
        List list5 = (i & 131072) != 0 ? databaseConfiguration.typeConverters : list2;
        List list6 = (i & 262144) != 0 ? databaseConfiguration.autoMigrationSpecs : list3;
        boolean z8 = (i & 524288) != 0 ? databaseConfiguration.allowDestructiveMigrationForAllTables : z4;
        SQLiteDriver sQLiteDriver3 = (i & 1048576) != 0 ? databaseConfiguration.sqliteDriver : sQLiteDriver;
        if ((i & 2097152) != 0) {
            sQLiteDriver2 = sQLiteDriver3;
            o22Var2 = databaseConfiguration.queryCoroutineContext;
        } else {
            o22Var2 = o22Var;
            sQLiteDriver2 = sQLiteDriver3;
        }
        return databaseConfiguration.copy(context3, str3, factory2, migrationContainer2, list4, z5, journalMode2, executor3, executor4, intent2, z6, z7, set2, str4, file2, callable2, prepackagedDatabaseCallback2, list5, list6, z8, sQLiteDriver2, o22Var2);
    }

    public final DatabaseConfiguration copy(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<? extends RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, Intent intent, boolean z2, boolean z3, Set<Integer> set, String str2, File file, Callable<InputStream> callable, RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, List<? extends Object> list2, List<? extends AutoMigrationSpec> list3, boolean z4, SQLiteDriver sQLiteDriver, o22 o22Var) {
        context.getClass();
        migrationContainer.getClass();
        journalMode.getClass();
        executor.getClass();
        executor2.getClass();
        list2.getClass();
        list3.getClass();
        DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, str, factory, migrationContainer, list, z, journalMode, executor, executor2, intent, z2, z3, set, str2, file, callable, prepackagedDatabaseCallback, list2, list3, z4, sQLiteDriver, o22Var);
        databaseConfiguration.useTempTrackingTable = this.useTempTrackingTable;
        databaseConfiguration.preparedStatementCacheSize = this.preparedStatementCacheSize;
        return databaseConfiguration;
    }

    public final Set<Integer> getMigrationNotRequiredFrom$room_runtime() {
        return this.migrationNotRequiredFrom;
    }

    public final int getPreparedStatementCacheSize$room_runtime() {
        return this.preparedStatementCacheSize;
    }

    public final boolean getUseTempTrackingTable$room_runtime() {
        return this.useTempTrackingTable;
    }

    public boolean isMigrationRequired(int i, int i2) {
        return MigrationUtil.isMigrationRequired(this, i, i2);
    }

    @ul2
    public boolean isMigrationRequiredFrom(int i) {
        return isMigrationRequired(i, i + 1);
    }

    public final void setPreparedStatementCacheSize$room_runtime(int i) {
        this.preparedStatementCacheSize = i;
    }

    public final void setUseTempTrackingTable$room_runtime(boolean z) {
        this.useTempTrackingTable = z;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @ul2
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<? extends RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, boolean z2, Set<Integer> set) {
        context.getClass();
        factory.getClass();
        migrationContainer.getClass();
        journalMode.getClass();
        executor.getClass();
        kx2 kx2Var = kx2.b;
        this(context, str, factory, migrationContainer, list, z, journalMode, executor, executor, null, z2, false, set, null, null, null, null, kx2Var, kx2Var, false, null, null);
    }

    @ul2
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<? extends RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set) {
        Context context2;
        Intent intent;
        context.getClass();
        factory.getClass();
        migrationContainer.getClass();
        journalMode.getClass();
        executor.getClass();
        executor2.getClass();
        if (z2) {
            context2 = context;
            intent = new Intent(context2, (Class<?>) MultiInstanceInvalidationService.class);
        } else {
            context2 = context;
            intent = null;
        }
        Intent intent2 = intent;
        kx2 kx2Var = kx2.b;
        this(context2, str, factory, migrationContainer, list, z, journalMode, executor, executor2, intent2, z3, z4, set, null, null, null, null, kx2Var, kx2Var, false, null, null);
    }

    @ul2
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<? extends RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file) {
        Context context2;
        Intent intent;
        context.getClass();
        factory.getClass();
        migrationContainer.getClass();
        journalMode.getClass();
        executor.getClass();
        executor2.getClass();
        if (z2) {
            context2 = context;
            intent = new Intent(context2, (Class<?>) MultiInstanceInvalidationService.class);
        } else {
            context2 = context;
            intent = null;
        }
        Intent intent2 = intent;
        kx2 kx2Var = kx2.b;
        this(context2, str, factory, migrationContainer, list, z, journalMode, executor, executor2, intent2, z3, z4, set, str2, file, null, null, kx2Var, kx2Var, false, null, null);
    }

    @ul2
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<? extends RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file, Callable<InputStream> callable) {
        Context context2;
        Intent intent;
        context.getClass();
        factory.getClass();
        migrationContainer.getClass();
        journalMode.getClass();
        executor.getClass();
        executor2.getClass();
        if (z2) {
            context2 = context;
            intent = new Intent(context2, (Class<?>) MultiInstanceInvalidationService.class);
        } else {
            context2 = context;
            intent = null;
        }
        Intent intent2 = intent;
        kx2 kx2Var = kx2.b;
        this(context2, str, factory, migrationContainer, list, z, journalMode, executor, executor2, intent2, z3, z4, set, str2, file, callable, null, kx2Var, kx2Var, false, null, null);
    }

    @ul2
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<? extends RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file, Callable<InputStream> callable, RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback) {
        Context context2;
        Intent intent;
        context.getClass();
        factory.getClass();
        migrationContainer.getClass();
        journalMode.getClass();
        executor.getClass();
        executor2.getClass();
        if (z2) {
            context2 = context;
            intent = new Intent(context2, (Class<?>) MultiInstanceInvalidationService.class);
        } else {
            context2 = context;
            intent = null;
        }
        Intent intent2 = intent;
        kx2 kx2Var = kx2.b;
        this(context2, str, factory, migrationContainer, list, z, journalMode, executor, executor2, intent2, z3, z4, set, str2, file, callable, prepackagedDatabaseCallback, kx2Var, kx2Var, false, null, null);
    }

    @ul2
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<? extends RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file, Callable<InputStream> callable, RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, List<? extends Object> list2) {
        Context context2;
        Intent intent;
        context.getClass();
        factory.getClass();
        migrationContainer.getClass();
        journalMode.getClass();
        executor.getClass();
        executor2.getClass();
        list2.getClass();
        if (z2) {
            context2 = context;
            intent = new Intent(context2, (Class<?>) MultiInstanceInvalidationService.class);
        } else {
            context2 = context;
            intent = null;
        }
        this(context2, str, factory, migrationContainer, list, z, journalMode, executor, executor2, intent, z3, z4, set, str2, file, callable, prepackagedDatabaseCallback, list2, kx2.b, false, null, null);
    }

    @ul2
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<? extends RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file, Callable<InputStream> callable, RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, List<? extends Object> list2, List<? extends AutoMigrationSpec> list3) {
        Context context2;
        Intent intent;
        context.getClass();
        factory.getClass();
        migrationContainer.getClass();
        journalMode.getClass();
        executor.getClass();
        executor2.getClass();
        list2.getClass();
        list3.getClass();
        if (z2) {
            context2 = context;
            intent = new Intent(context2, (Class<?>) MultiInstanceInvalidationService.class);
        } else {
            context2 = context;
            intent = null;
        }
        this(context2, str, factory, migrationContainer, list, z, journalMode, executor, executor2, intent, z3, z4, set, str2, file, callable, null, list2, list3, false, null, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ul2
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<? extends RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, Intent intent, boolean z2, boolean z3, Set<Integer> set, String str2, File file, Callable<InputStream> callable, RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, List<? extends Object> list2, List<? extends AutoMigrationSpec> list3) {
        this(context, str, factory, migrationContainer, list, z, journalMode, executor, executor2, intent, z2, z3, set, str2, file, callable, null, list2, list3, false, null, null);
        context.getClass();
        factory.getClass();
        migrationContainer.getClass();
        journalMode.getClass();
        executor.getClass();
        executor2.getClass();
        list2.getClass();
        list3.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ul2
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<? extends RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, Intent intent, boolean z2, boolean z3, Set<Integer> set, String str2, File file, Callable<InputStream> callable, RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, List<? extends Object> list2, List<? extends AutoMigrationSpec> list3, boolean z4) {
        this(context, str, factory, migrationContainer, list, z, journalMode, executor, executor2, intent, z2, z3, set, str2, file, callable, null, list2, list3, z4, null, null);
        context.getClass();
        factory.getClass();
        migrationContainer.getClass();
        journalMode.getClass();
        executor.getClass();
        executor2.getClass();
        list2.getClass();
        list3.getClass();
    }
}
