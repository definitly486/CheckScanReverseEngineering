package androidx.sqlite.driver;

import android.database.sqlite.SQLiteDatabase;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidSQLiteDriver implements SQLiteDriver {
    public static /* synthetic */ void hasConnectionPool$annotations() {
    }

    @Override // androidx.sqlite.SQLiteDriver
    public boolean hasConnectionPool() {
        return true;
    }

    @Override // androidx.sqlite.SQLiteDriver
    public SQLiteConnection open(String str) {
        str.getClass();
        SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = SQLiteDatabase.openOrCreateDatabase(str, (SQLiteDatabase.CursorFactory) null);
        sQLiteDatabaseOpenOrCreateDatabase.getClass();
        return new SupportSQLiteConnection(new FrameworkSQLiteDatabase(sQLiteDatabaseOpenOrCreateDatabase));
    }
}
