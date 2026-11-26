package yads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.io.Closeable;

/* JADX INFO: loaded from: classes6.dex */
public final class te implements Closeable {
    public final SQLiteDatabase b;
    public final /* synthetic */ we c;

    public te(we weVar, SQLiteDatabase sQLiteDatabase) {
        this.c = weVar;
        this.b = sQLiteDatabase;
    }

    public final Cursor a(String str, String[] strArr) {
        return this.b.rawQuery(str, strArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ue ueVar = this.c.a;
        SQLiteDatabase sQLiteDatabase = this.b;
        synchronized (ueVar) {
            try {
                if (defpackage.aa4.e(sQLiteDatabase, ueVar.g)) {
                    ueVar.e.remove(Thread.currentThread());
                    if (ueVar.e.isEmpty()) {
                        while (true) {
                            int i = ueVar.f;
                            ueVar.f = i - 1;
                            if (i <= 0) {
                                break;
                            }
                            SQLiteDatabase sQLiteDatabase2 = ueVar.g;
                            sQLiteDatabase2.getClass();
                            sQLiteDatabase2.close();
                        }
                    }
                } else if (defpackage.aa4.e(sQLiteDatabase, ueVar.d)) {
                    ueVar.b.remove(Thread.currentThread());
                    if (ueVar.b.isEmpty()) {
                        while (true) {
                            int i2 = ueVar.c;
                            ueVar.c = i2 - 1;
                            if (i2 <= 0) {
                                break;
                            }
                            SQLiteDatabase sQLiteDatabase3 = ueVar.d;
                            sQLiteDatabase3.getClass();
                            sQLiteDatabase3.close();
                        }
                    }
                } else {
                    sQLiteDatabase.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
