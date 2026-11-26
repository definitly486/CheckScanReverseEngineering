package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;

/* JADX INFO: loaded from: classes3.dex */
public final class WorkDatabase_AutoMigration_23_24_Impl extends Migration {
    public WorkDatabase_AutoMigration_23_24_Impl() {
        super(23, 24);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLite.execSQL(sQLiteConnection, "ALTER TABLE `WorkSpec` ADD COLUMN `backoff_on_system_interruptions` INTEGER DEFAULT NULL");
    }
}
