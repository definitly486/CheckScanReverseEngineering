package androidx.room.coroutines;

import androidx.sqlite.SQLiteDriver;

/* JADX INFO: loaded from: classes3.dex */
public final class ConnectionPoolKt {
    public static final ConnectionPool newConnectionPool(SQLiteDriver sQLiteDriver, String str, int i, int i2, int i3) {
        sQLiteDriver.getClass();
        str.getClass();
        return new ConnectionPoolImpl(sQLiteDriver, str, i, i2, i3);
    }

    public static /* synthetic */ ConnectionPool newConnectionPool$default(SQLiteDriver sQLiteDriver, String str, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            i3 = 25;
        }
        return newConnectionPool(sQLiteDriver, str, i, i2, i3);
    }

    public static final ConnectionPool newSingleConnectionPool(SQLiteDriver sQLiteDriver, String str, int i) {
        sQLiteDriver.getClass();
        str.getClass();
        return new ConnectionPoolImpl(sQLiteDriver, str, i);
    }

    public static /* synthetic */ ConnectionPool newSingleConnectionPool$default(SQLiteDriver sQLiteDriver, String str, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 25;
        }
        return newSingleConnectionPool(sQLiteDriver, str, i);
    }
}
