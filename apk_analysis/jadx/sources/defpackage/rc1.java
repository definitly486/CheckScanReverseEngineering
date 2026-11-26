package defpackage;

import androidx.room.migration.Migration;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;

/* JADX INFO: loaded from: classes5.dex */
public final class rc1 extends Migration {
    public final pc1 a;

    public rc1() {
        super(10, 11);
        this.a = new pc1();
    }

    @Override // androidx.room.migration.Migration
    public final void migrate(SQLiteConnection sQLiteConnection) {
        SQLite.execSQL(sQLiteConnection, "DROP TABLE `shopping_note_products`");
        SQLite.execSQL(sQLiteConnection, "DROP TABLE `shopping_notes`");
        this.a.onPostMigrate(sQLiteConnection);
    }
}
