package androidx.room;

import androidx.room.util.SQLiteConnectionUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import defpackage.aq5;
import defpackage.j59;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class EntityDeleteOrUpdateAdapter<T> {
    public abstract void bind(SQLiteStatement sQLiteStatement, T t);

    public abstract String createQuery();

    public final int handle(SQLiteConnection sQLiteConnection, T t) {
        sQLiteConnection.getClass();
        if (t == null) {
            return 0;
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        try {
            bind(sQLiteStatementPrepare, t);
            sQLiteStatementPrepare.step();
            aq5.c(sQLiteStatementPrepare, null);
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public final int handleMultiple(SQLiteConnection sQLiteConnection, T[] tArr) throws Exception {
        sQLiteConnection.getClass();
        if (tArr == null) {
            return 0;
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        int totalChangedRows = 0;
        int i = 0;
        while (true) {
            try {
                if (!(i < tArr.length)) {
                    j59 j59Var = j59.a;
                    aq5.c(sQLiteStatementPrepare, null);
                    return totalChangedRows;
                }
                int i2 = i + 1;
                try {
                    T t = tArr[i];
                    if (t != null) {
                        bind(sQLiteStatementPrepare, t);
                        sQLiteStatementPrepare.step();
                        sQLiteStatementPrepare.reset();
                        totalChangedRows += SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
                    }
                    i = i2;
                } catch (ArrayIndexOutOfBoundsException e) {
                    throw new NoSuchElementException(e.getMessage());
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
    }

    public final int handleMultiple(SQLiteConnection sQLiteConnection, Iterable<? extends T> iterable) throws Exception {
        sQLiteConnection.getClass();
        int totalChangedRows = 0;
        if (iterable == null) {
            return 0;
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        try {
            for (T t : iterable) {
                if (t != null) {
                    bind(sQLiteStatementPrepare, t);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    totalChangedRows += SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
                }
            }
            j59 j59Var = j59.a;
            aq5.c(sQLiteStatementPrepare, null);
            return totalChangedRows;
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
