package androidx.room.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
final class MigrationImpl extends Migration {
    private final nl3<SupportSQLiteDatabase, j59> migrateCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MigrationImpl(int i, int i2, nl3<? super SupportSQLiteDatabase, j59> nl3Var) {
        super(i, i2);
        nl3Var.getClass();
        this.migrateCallback = nl3Var;
    }

    public final nl3<SupportSQLiteDatabase, j59> getMigrateCallback() {
        return this.migrateCallback;
    }

    @Override // androidx.room.migration.Migration
    public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        this.migrateCallback.invoke(supportSQLiteDatabase);
    }
}
