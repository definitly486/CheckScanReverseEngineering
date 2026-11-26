package androidx.room.util;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import defpackage.aq5;

/* JADX INFO: loaded from: classes3.dex */
public final class SQLiteConnectionUtil {
    public static final long getLastInsertedRowId(SQLiteConnection sQLiteConnection) throws Exception {
        sQLiteConnection.getClass();
        if (getTotalChangedRows(sQLiteConnection) == 0) {
            return -1L;
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT last_insert_rowid()");
        try {
            sQLiteStatementPrepare.step();
            long j = sQLiteStatementPrepare.getLong(0);
            aq5.c(sQLiteStatementPrepare, null);
            return j;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public static final int getTotalChangedRows(SQLiteConnection sQLiteConnection) throws Exception {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT changes()");
        try {
            sQLiteStatementPrepare.step();
            int i = (int) sQLiteStatementPrepare.getLong(0);
            aq5.c(sQLiteStatementPrepare, null);
            return i;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }
}
