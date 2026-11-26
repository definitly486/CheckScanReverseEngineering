package androidx.sqlite;

import android.database.SQLException;
import defpackage.aq5;
import defpackage.jh;

/* JADX INFO: loaded from: classes3.dex */
public final class SQLite {
    public static final int SQLITE_DATA_BLOB = 4;
    public static final int SQLITE_DATA_FLOAT = 2;
    public static final int SQLITE_DATA_INTEGER = 1;
    public static final int SQLITE_DATA_NULL = 5;
    public static final int SQLITE_DATA_TEXT = 3;

    public static final void execSQL(SQLiteConnection sQLiteConnection, String str) {
        sQLiteConnection.getClass();
        str.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.step();
            aq5.c(sQLiteStatementPrepare, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public static final Void throwSQLiteException(int i, String str) {
        StringBuilder sb = new StringBuilder(jh.b(i, "Error code: "));
        if (str != null) {
            sb.append(", message: ".concat(str));
        }
        throw new SQLException(sb.toString());
    }
}
