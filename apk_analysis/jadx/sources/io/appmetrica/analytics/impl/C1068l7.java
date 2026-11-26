package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.io.Closeable;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.l7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1068l7 extends SQLiteOpenHelper implements Closeable {
    public final String a;
    public final PublicLogger b;
    public final C1317un c;

    public C1068l7(Context context, String str, C1317un c1317un, PublicLogger publicLogger) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, H5.b);
        this.c = c1317un;
        this.a = str;
        this.b = publicLogger;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getReadableDatabase() {
        try {
            return super.getReadableDatabase();
        } catch (Throwable th) {
            this.b.error(th, "Could not get readable database %s due to an exception. AppMetrica SDK may behave unexpectedly.", this.a);
            C0900ek c0900ek = Bj.a;
            c0900ek.getClass();
            c0900ek.a(new Cj("db_read_error", th));
            return null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (Throwable th) {
            this.b.error(th, "Could not get writable database %s due to an exception. AppMetrica SDK may behave unexpectedly.", this.a);
            C0900ek c0900ek = Bj.a;
            c0900ek.getClass();
            c0900ek.a(new Cj("db_write_error", th));
            return null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            this.c.a.runScript(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C1317un c1317un = this.c;
        if (i <= i2) {
            c1317un.getClass();
            return;
        }
        try {
            c1317un.b.runScript(sQLiteDatabase);
        } catch (Throwable unused) {
        }
        try {
            c1317un.a.runScript(sQLiteDatabase);
        } catch (Throwable unused2) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        C1317un c1317un = this.c;
        c1317un.getClass();
        try {
            InterfaceC1342vn interfaceC1342vn = c1317un.d;
            if (interfaceC1342vn == null || interfaceC1342vn.a(sQLiteDatabase)) {
                return;
            }
            try {
                c1317un.b.runScript(sQLiteDatabase);
            } catch (Throwable unused) {
            }
            c1317un.a.runScript(sQLiteDatabase);
        } catch (Throwable unused2) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        boolean z;
        C1317un c1317un = this.c;
        c1317un.getClass();
        if (i2 > i) {
            for (int i3 = i + 1; i3 <= i2; i3++) {
                try {
                    Collection collection = (Collection) c1317un.c.a.get(Integer.valueOf(i3));
                    if (collection != null) {
                        Iterator it = collection.iterator();
                        while (it.hasNext()) {
                            ((DatabaseScript) it.next()).runScript(sQLiteDatabase);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
            z = false;
        } else {
            z = true;
        }
        if (z || (!c1317un.d.a(sQLiteDatabase))) {
            try {
                c1317un.b.runScript(sQLiteDatabase);
            } catch (Throwable unused2) {
            }
            try {
                c1317un.a.runScript(sQLiteDatabase);
            } catch (Throwable unused3) {
            }
        }
    }
}
