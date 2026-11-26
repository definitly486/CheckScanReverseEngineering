package com.my.target;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.my.target.c2.a;
import defpackage.i7a;
import defpackage.tk2;
import defpackage.y14;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class u2 implements j2 {
    public final SQLiteDatabase a;
    public final SQLiteStatement b;
    public final SQLiteStatement c;

    public u2(SQLiteDatabase sQLiteDatabase) {
        this.a = sQLiteDatabase;
        this.b = sQLiteDatabase.compileStatement("INSERT INTO table_audit_pixel_attempts(adId, pixelUrl, type, attempt, timestamp, error, isCompleted, monitoring) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
        this.c = sQLiteDatabase.compileStatement("DELETE FROM table_audit_pixel_attempts WHERE adId=?");
    }

    @Override // com.my.target.j2
    public final void a(String str, String str2, String str3, c2.a aVar, boolean z, i7a i7aVar) {
        int i = aVar.a;
        long j = aVar.b;
        String str4 = aVar.c;
        SQLiteStatement sQLiteStatement = this.b;
        try {
            String strB = tk2.b(i7aVar);
            sQLiteStatement.bindString(1, str);
            sQLiteStatement.bindString(2, str2);
            sQLiteStatement.bindString(3, str3);
            sQLiteStatement.bindLong(4, i);
            sQLiteStatement.bindLong(5, j);
            sQLiteStatement.bindString(6, String.valueOf(str4));
            sQLiteStatement.bindLong(7, z ? 1L : 0L);
            sQLiteStatement.bindString(8, strB);
            sQLiteStatement.executeInsert();
            sQLiteStatement.clearBindings();
        } catch (Throwable th) {
            try {
                y14.r(null, "AuditPixelDbTableReal.insertAttempt() error: " + th);
            } finally {
                sQLiteStatement.clearBindings();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0078 A[PHI: r4
      0x0078: PHI (r4v5 com.my.target.c2) = (r4v4 com.my.target.c2), (r4v9 com.my.target.c2) binds: [B:17:0x0065, B:19:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.my.target.j2
    public final ConcurrentHashMap getAll() {
        c2 c2Var;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        try {
            Cursor cursorRawQuery = this.a.rawQuery("SELECT adId, pixelUrl, type, attempt, timestamp, error, isCompleted, monitoring FROM table_audit_pixel_attempts", null);
            while (cursorRawQuery.moveToNext()) {
                try {
                    String string = cursorRawQuery.getString(0);
                    String string2 = cursorRawQuery.getString(1);
                    String string3 = cursorRawQuery.getString(2);
                    int i = cursorRawQuery.getInt(3);
                    long j = cursorRawQuery.getLong(4);
                    String string4 = cursorRawQuery.getString(5);
                    boolean z = cursorRawQuery.getLong(6) == 1;
                    String string5 = cursorRawQuery.getString(7);
                    ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) concurrentHashMap.get(string);
                    if (concurrentHashMap2 == null) {
                        concurrentHashMap2 = new ConcurrentHashMap();
                        ConcurrentHashMap concurrentHashMap3 = (ConcurrentHashMap) concurrentHashMap.putIfAbsent(string, concurrentHashMap2);
                        if (concurrentHashMap3 != null) {
                            concurrentHashMap2 = concurrentHashMap3;
                        }
                    }
                    c2 c2Var2 = (c2) concurrentHashMap2.get(string2);
                    if (c2Var2 == null) {
                        c2 c2Var3 = new c2(string2, string3, tk2.e(string5));
                        c2Var2 = (c2) concurrentHashMap2.putIfAbsent(string2, c2Var3);
                        if (c2Var2 != null) {
                            c2Var = c2Var2;
                        } else {
                            c2Var = c2Var3;
                        }
                    } else {
                        c2Var = c2Var2;
                    }
                    c2Var.f.add(c2Var.new a(i, j, string4));
                    if (z) {
                        c2Var.d = true;
                    }
                } catch (Throwable th) {
                    if (cursorRawQuery == null) {
                        throw th;
                    }
                    try {
                        cursorRawQuery.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
            cursorRawQuery.close();
            return concurrentHashMap;
        } catch (Throwable th3) {
            y14.r(null, "AuditPixelDbTableReal.getAll() error: " + th3);
            return concurrentHashMap;
        }
    }

    @Override // com.my.target.j2
    public final void a(String str) {
        SQLiteStatement sQLiteStatement = this.c;
        try {
            sQLiteStatement.bindString(1, str);
            sQLiteStatement.executeUpdateDelete();
            sQLiteStatement.clearBindings();
        } catch (Throwable th) {
            try {
                y14.r(null, "AuditPixelDbTableReal.deleteAuditBanner() error: " + th);
            } finally {
                sQLiteStatement.clearBindings();
            }
        }
    }
}
