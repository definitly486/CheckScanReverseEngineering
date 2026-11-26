package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes4.dex */
public final class dv9 implements ft9 {
    public final SQLiteDatabase b;

    public dv9(SQLiteDatabase sQLiteDatabase) {
        this.b = sQLiteDatabase;
    }

    public static SQLiteDatabase b(Context context) {
        SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = context.openOrCreateDatabase("com_my_target_sdk.db", 0, null);
        sQLiteDatabaseOpenOrCreateDatabase.setVersion(2);
        try {
            sQLiteDatabaseOpenOrCreateDatabase.execSQL("CREATE TABLE IF NOT EXISTS table_url_resolver_cookie( uri_key TEXT NOT NULL, uri TEXT NOT NULL, cookie_json TEXT NOT NULL)");
        } catch (Throwable th) {
            y14.r(null, "CookieStore: create table cookie error, " + th);
        }
        try {
            sQLiteDatabaseOpenOrCreateDatabase.execSQL("CREATE TABLE IF NOT EXISTS table_stat_send( id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT NOT NULL, type TEXT NOT NULL, timestampMs INTEGER(8) NOT NULL, deadlineMs INTEGER(8) NOT NULL, adId TEXT NOT NULL, monitoring TEXT NOT NULL, neededDetailedMonitoring INTEGER(8) NOT NULL)");
        } catch (Throwable th2) {
            y14.r(null, "StatSend: create table statSender error, " + th2);
        }
        try {
            sQLiteDatabaseOpenOrCreateDatabase.execSQL("CREATE TABLE IF NOT EXISTS table_audit_pixel_attempts( id INTEGER PRIMARY KEY AUTOINCREMENT, adId TEXT NOT NULL, pixelUrl TEXT NOT NULL, type TEXT, attempt INTEGER(8) NOT NULL, timestamp INTEGER(8) NOT NULL, error TEXT, isCompleted INTEGER(8) NOT NULL DEFAULT 0, monitoring TEXT NOT NULL DEFAULT '')");
        } catch (Throwable th3) {
            y14.r(null, "AuditPixelDbTableReal.createTableDefinitions() error, " + th3);
        }
        return sQLiteDatabaseOpenOrCreateDatabase;
    }

    @Override // defpackage.ft9
    public final SQLiteDatabase a() {
        return this.b;
    }
}
