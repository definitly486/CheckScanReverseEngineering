package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzvm;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzaf;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzlr;
import com.google.android.gms.measurement.internal.zzls;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzpj;
import com.google.android.gms.measurement.internal.zzr;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vub implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ vub(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0114  */
    /* JADX WARN: Code duplicated, block: B:70:0x025f  */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Cursor cursorQuery;
        Cursor cursor;
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                zzaf zzafVar = (zzaf) obj;
                zzpg zzpgVar = ((zzjd) obj3).a;
                zzpgVar.Q();
                String str = (String) Preconditions.checkNotNull(((zzr) obj2).zza);
                HashMap map = zzpgVar.E;
                zzpgVar.zzaX().zzg();
                zzpgVar.Z();
                kva kvaVarZzj = zzpgVar.zzj();
                long j = zzafVar.zza;
                kvaVarZzj.zzg();
                kvaVarZzj.a();
                Cursor cursor2 = null;
                zzpjVarA = null;
                zzpj zzpjVarA = null;
                try {
                    cursorQuery = kvaVarZzj.M().query("upload_queue", new String[]{"rowId", CommonUrlParts.APP_ID, "measurement_batch", "upload_uri", "upload_headers", "upload_type", "retry_count", AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, "associated_row_id", "last_upload_timestamp"}, "rowId=?", new String[]{String.valueOf(j)}, null, null, null, "1");
                    try {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                try {
                                    cursor = cursorQuery;
                                    try {
                                        zzpjVarA = kvaVarZzj.A((String) Preconditions.checkNotNull(cursorQuery.getString(1)), j, cursorQuery.getBlob(2), cursorQuery.getString(3), cursorQuery.getString(4), cursorQuery.getInt(5), cursorQuery.getInt(6), cursorQuery.getLong(7), cursorQuery.getLong(8), cursorQuery.getLong(9));
                                        cursor.close();
                                    } catch (SQLiteException e) {
                                        e = e;
                                        cursorQuery = cursor;
                                        try {
                                            kvaVarZzj.a.zzaW().zzb().zzc("Error to querying MeasurementBatch from upload_queue. rowId", Long.valueOf(j), e);
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            cursor2 = cursorQuery;
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        cursor2 = cursor;
                                        if (cursor2 != null) {
                                            cursor2.close();
                                        }
                                        throw th;
                                    }
                                } catch (SQLiteException e2) {
                                    e = e2;
                                    cursor = cursorQuery;
                                }
                            } else if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            cursor = cursorQuery;
                        }
                    } catch (SQLiteException e3) {
                        e = e3;
                        cursor = cursorQuery;
                    }
                } catch (SQLiteException e4) {
                    e = e4;
                    cursorQuery = null;
                } catch (Throwable th4) {
                    th = th4;
                }
                if (zzpjVarA == null) {
                    zzpgVar.zzaW().zze().zzc("[sgtm] Queued batch doesn't exist. appId, rowId", str, Long.valueOf(j));
                    return;
                }
                String strZze = zzpjVarA.zze();
                if (zzafVar.zzb != zzlr.SUCCESS.zza()) {
                    if (zzafVar.zzb == zzlr.BACKOFF.zza()) {
                        pbc pbcVar = (pbc) map.get(strZze);
                        if (pbcVar == null) {
                            pbcVar = new pbc(zzpgVar);
                            map.put(strZze, pbcVar);
                        } else {
                            pbcVar.b++;
                            pbcVar.c = pbcVar.a();
                        }
                        zzpgVar.zzaW().zzk().zzd("[sgtm] Putting sGTM server in backoff mode. appId, destination, nextRetryInSeconds", str, strZze, Long.valueOf((pbcVar.c - zzpgVar.zzba().currentTimeMillis()) / 1000));
                    }
                    kva kvaVarZzj2 = zzpgVar.zzj();
                    Long lValueOf = Long.valueOf(zzafVar.zza);
                    kvaVarZzj2.j(lValueOf);
                    zzpgVar.zzaW().zzk().zzc("[sgtm] increased batch retry count after failed client upload. appId, rowId", str, lValueOf);
                    return;
                }
                if (map.containsKey(strZze)) {
                    map.remove(strZze);
                }
                kva kvaVarZzj3 = zzpgVar.zzj();
                Long lValueOf2 = Long.valueOf(j);
                kvaVarZzj3.e(lValueOf2);
                zzpgVar.zzaW().zzk().zzc("[sgtm] queued batch deleted after successful client upload. appId, rowId", str, lValueOf2);
                long j2 = zzafVar.zzc;
                if (j2 > 0) {
                    kva kvaVarZzj4 = zzpgVar.zzj();
                    kvaVarZzj4.zzg();
                    zzic zzicVar = kvaVarZzj4.a;
                    kvaVarZzj4.a();
                    Long lValueOf3 = Long.valueOf(j2);
                    Preconditions.checkNotNull(lValueOf3);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("upload_type", Integer.valueOf(zzls.GOOGLE_SIGNAL.zza()));
                    contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzicVar.zzba().currentTimeMillis()));
                    try {
                        if (kvaVarZzj4.M().update("upload_queue", contentValues, "rowid=? AND app_id=? AND upload_type=?", new String[]{String.valueOf(j2), str, String.valueOf(zzls.GOOGLE_SIGNAL_PENDING.zza())}) != 1) {
                            zzicVar.zzaW().zze().zzc("Google Signal pending batch not updated. appId, rowId", str, lValueOf3);
                            break;
                        }
                        zzpgVar.zzaW().zzk().zzc("[sgtm] queued Google Signal batch updated. appId, signalRowId", str, Long.valueOf(zzafVar.zzc));
                        zzpgVar.o(str);
                        return;
                    } catch (SQLiteException e5) {
                        zzicVar.zzaW().zzb().zzd("Failed to update google Signal pending batch. appid, rowId", str, Long.valueOf(j2), e5);
                        throw e5;
                    }
                }
                return;
            default:
                zzvm zzvmVar = (zzvm) obj3;
                nr7 nr7Var = (nr7) obj2;
                xfc xfcVar = (xfc) obj;
                try {
                    Object objV = en3.V(nr7Var);
                    nr7 nr7Var2 = zzvmVar.f;
                    nr7Var2.l(objV);
                    xfcVar.n(nr7Var2);
                    return;
                } catch (Throwable unused) {
                    xfcVar.n(nr7Var);
                    return;
                }
        }
    }
}
