package defpackage;

import androidx.room.migration.Migration;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;

/* JADX INFO: loaded from: classes5.dex */
public final class sc1 extends Migration {
    public final qc1 a;

    public sc1() {
        super(7, 8);
        this.a = new qc1();
    }

    @Override // androidx.room.migration.Migration
    public final void migrate(SQLiteConnection sQLiteConnection) {
        SQLite.execSQL(sQLiteConnection, "DROP TABLE `stories`");
        SQLite.execSQL(sQLiteConnection, "DROP TABLE `story_ord`");
        SQLite.execSQL(sQLiteConnection, "DROP TABLE `publishers_table`");
        SQLite.execSQL(sQLiteConnection, "ALTER TABLE `notifications` ADD COLUMN `buttonTitle` TEXT DEFAULT NULL");
        SQLite.execSQL(sQLiteConnection, "ALTER TABLE `notifications` ADD COLUMN `logoUrl` TEXT DEFAULT NULL");
        SQLite.execSQL(sQLiteConnection, "ALTER TABLE `notifications` ADD COLUMN `ordInfoPromotion` INTEGER DEFAULT NULL");
        SQLite.execSQL(sQLiteConnection, "ALTER TABLE `notifications` ADD COLUMN `ordPromotionText` TEXT DEFAULT NULL");
        SQLite.execSQL(sQLiteConnection, "ALTER TABLE `notifications` ADD COLUMN `ordToken` TEXT DEFAULT NULL");
        SQLite.execSQL(sQLiteConnection, "ALTER TABLE `notifications` ADD COLUMN `ordTitle` TEXT DEFAULT NULL");
        SQLite.execSQL(sQLiteConnection, "ALTER TABLE `notifications` ADD COLUMN `ordText` TEXT DEFAULT NULL");
        this.a.onPostMigrate(sQLiteConnection);
    }
}
