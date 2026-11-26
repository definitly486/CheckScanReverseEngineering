package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzahh;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzr;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class msb implements Runnable {
    public final /* synthetic */ zzr b;
    public final /* synthetic */ zzjd c;

    public msb(zzjd zzjdVar, zzr zzrVar) {
        this.b = zzrVar;
        this.c = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpg zzpgVar = this.c.a;
        zzpgVar.Q();
        if (zzpgVar.y != null) {
            ArrayList arrayList = new ArrayList();
            zzpgVar.z = arrayList;
            arrayList.addAll(zzpgVar.y);
        }
        kva kvaVarZzj = zzpgVar.zzj();
        zzr zzrVar = this.b;
        String str = (String) Preconditions.checkNotNull(zzrVar.zza);
        Preconditions.checkNotEmpty(str);
        kvaVarZzj.zzg();
        zzic zzicVar = kvaVarZzj.a;
        kvaVarZzj.a();
        try {
            SQLiteDatabase sQLiteDatabaseM = kvaVarZzj.M();
            String[] strArr = {str};
            int iDelete = sQLiteDatabaseM.delete("apps", "app_id=?", strArr) + sQLiteDatabaseM.delete("events", "app_id=?", strArr) + sQLiteDatabaseM.delete("events_snapshot", "app_id=?", strArr) + sQLiteDatabaseM.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseM.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseM.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseM.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseM.delete("queue", "app_id=?", strArr) + sQLiteDatabaseM.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseM.delete("main_event_params", "app_id=?", strArr) + sQLiteDatabaseM.delete("default_event_params", "app_id=?", strArr) + sQLiteDatabaseM.delete("trigger_uris", "app_id=?", strArr) + sQLiteDatabaseM.delete("upload_queue", "app_id=?", strArr);
            zzahh.zza();
            if (zzicVar.zzc().zzp(null, zzfy.zzbc)) {
                iDelete += sQLiteDatabaseM.delete("no_data_mode_events", "app_id=?", strArr);
            }
            int iDelete2 = iDelete + sQLiteDatabaseM.delete("diagnostic_signals", "app_id=?", strArr);
            if (iDelete2 > 0) {
                zzicVar.zzaW().zzk().zzc("Reset analytics data. app, records", str, Integer.valueOf(iDelete2));
            }
        } catch (SQLiteException e) {
            zzicVar.zzaW().zzb().zzc("Error resetting analytics data. appId, error", zzgu.d(str), e);
        }
        if (zzrVar.zzh) {
            zzpgVar.T(zzrVar);
        }
    }
}
