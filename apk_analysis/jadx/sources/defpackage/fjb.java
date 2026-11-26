package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.internal.measurement.zzcb;
import com.google.android.gms.measurement.internal.zzax;
import com.google.android.gms.measurement.internal.zzgl;
import com.google.android.gms.measurement.internal.zzic;

/* JADX INFO: loaded from: classes4.dex */
public final class fjb extends zzcb {
    public final /* synthetic */ zzgl b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fjb(zzgl zzglVar, Context context) {
        super(context, "google_app_measurement_local.db", null, 1);
        this.b = zzglVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException unused) {
            zzgl zzglVar = this.b;
            zzic zzicVar = zzglVar.a;
            zzicVar.zzaW().zzb().zza("Opening the local database failed, dropping and recreating it");
            zzicVar.zzc();
            if (!zzicVar.zzaZ().getDatabasePath("google_app_measurement_local.db").delete()) {
                zzicVar.zzaW().zzb().zzb("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e2) {
                zzglVar.a.zzaW().zzb().zzb("Failed to open local database. Events will bypass local storage", e2);
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        zzax.b(this.b.a.zzaW(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) throws Throwable {
        zzax.a(this.b.a.zzaW(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", zzgl.e);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
