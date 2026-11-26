package com.my.target;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import defpackage.gga;
import defpackage.i7a;
import defpackage.tk2;
import defpackage.y14;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class p2 implements b2 {
    public final SQLiteDatabase a;
    public final SQLiteStatement b;
    public final SQLiteStatement c;
    public final SQLiteStatement d;
    public final tk2 e = new tk2(2);

    public static final class a implements b2.a {
        public final Cursor b;

        public a(Cursor cursor, tk2 tk2Var) {
            this.b = cursor;
        }

        @Override // com.my.target.b2.a
        public final gga a() {
            Cursor cursor = this.b;
            long j = cursor.getLong(0);
            String string = cursor.getString(1);
            String string2 = cursor.getString(2);
            cursor.getLong(3);
            return new gga(j, string, string2, tk2.e(cursor.getString(4)), cursor.getLong(5) == 1);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.b.close();
        }

        @Override // com.my.target.b2.a
        public final boolean moveToNext() {
            return this.b.moveToNext();
        }
    }

    public p2(SQLiteDatabase sQLiteDatabase) {
        this.a = sQLiteDatabase;
        this.b = sQLiteDatabase.compileStatement("INSERT OR IGNORE INTO table_stat_send(url, type, timestampMs, deadlineMs, adId, monitoring, neededDetailedMonitoring) VALUES (?, ?, ?, ?, ?, ?, ?)");
        this.c = sQLiteDatabase.compileStatement("DELETE FROM table_stat_send WHERE id=?");
        this.d = sQLiteDatabase.compileStatement("DELETE FROM table_stat_send WHERE deadlineMs <= ?");
    }

    @Override // com.my.target.b2
    public final void a(String str, String str2, long j, long j2, i7a i7aVar, boolean z) {
        SQLiteStatement sQLiteStatement = this.b;
        try {
            String str3 = i7aVar.a.a;
            String strB = tk2.b(i7aVar);
            sQLiteStatement.bindString(1, str);
            sQLiteStatement.bindString(2, str2);
            sQLiteStatement.bindLong(3, j);
            sQLiteStatement.bindLong(4, j2);
            sQLiteStatement.bindString(5, str3);
            sQLiteStatement.bindString(6, strB);
            sQLiteStatement.bindLong(7, z ? 1L : 0L);
            sQLiteStatement.executeInsert();
            sQLiteStatement.clearBindings();
        } catch (Throwable th) {
            try {
                y14.r(null, "DB insertStat error: " + th);
            } finally {
                sQLiteStatement.clearBindings();
            }
        }
    }

    @Override // com.my.target.b2
    public final Set b() {
        HashSet hashSet = new HashSet();
        try {
            Cursor cursorRawQuery = this.a.rawQuery("SELECT url FROM table_stat_send WHERE neededDetailedMonitoring == 1", null);
            while (cursorRawQuery.moveToNext()) {
                try {
                    hashSet.add(cursorRawQuery.getString(0));
                } catch (Throwable th) {
                    if (cursorRawQuery != null) {
                        try {
                            cursorRawQuery.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            cursorRawQuery.close();
            return hashSet;
        } catch (Throwable th3) {
            y14.r(null, "DB getUrlsWithNeededDetailedMonitoring error: " + th3);
            return hashSet;
        }
    }

    @Override // com.my.target.b2
    public final void b(long j) {
        SQLiteStatement sQLiteStatement = this.c;
        try {
            sQLiteStatement.bindLong(1, j);
            sQLiteStatement.executeUpdateDelete();
            sQLiteStatement.clearBindings();
        } catch (Throwable th) {
            try {
                y14.r(null, "DB deleteInfo error: " + th);
            } finally {
                sQLiteStatement.clearBindings();
            }
        }
    }

    @Override // com.my.target.b2
    public final void a(long j) {
        SQLiteStatement sQLiteStatement = this.d;
        try {
            sQLiteStatement.bindLong(1, j);
            sQLiteStatement.executeUpdateDelete();
            sQLiteStatement.clearBindings();
        } catch (Throwable th) {
            try {
                y14.r(null, "DB deleteOldStats error: " + th);
            } finally {
                sQLiteStatement.clearBindings();
            }
        }
    }

    @Override // com.my.target.b2
    public final b2.a a() {
        try {
            return new a(this.a.rawQuery("SELECT id, url, type, timestampMs, monitoring, neededDetailedMonitoring  FROM table_stat_send", null), this.e);
        } catch (Throwable th) {
            y14.r(null, "DB getStatsToSendIterator error: " + th);
            throw th;
        }
    }
}
