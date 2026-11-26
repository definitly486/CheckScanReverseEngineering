package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzfx;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzhk;
import com.google.android.gms.measurement.internal.zzht;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznn;
import com.google.android.gms.measurement.internal.zzok;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzph;

/* JADX INFO: loaded from: classes4.dex */
public final class rac implements Runnable {
    public final /* synthetic */ zzpg b;

    public rac(zzpg zzpgVar, zzph zzphVar) {
        this.b = zzpgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpg zzpgVar = this.b;
        zzpgVar.zzaX().zzg();
        zzpgVar.k = new zzhk(zzpgVar);
        kva kvaVar = new kva(zzpgVar);
        kvaVar.zzaz();
        zzpgVar.c = kvaVar;
        zzht zzhtVar = zzpgVar.a;
        zzpgVar.zzd().d = (yta) Preconditions.checkNotNull(zzhtVar);
        zznn zznnVar = new zznn(zzpgVar);
        zznnVar.zzaz();
        zzpgVar.i = zznnVar;
        zqa zqaVar = new zqa(zzpgVar);
        zqaVar.zzaz();
        zzpgVar.f = zqaVar;
        x2c x2cVar = new x2c(zzpgVar);
        x2cVar.zzaz();
        zzpgVar.h = x2cVar;
        zzok zzokVar = new zzok(zzpgVar);
        zzokVar.zzaz();
        zzpgVar.e = zzokVar;
        zzpgVar.d = new mmb(zzpgVar);
        if (zzpgVar.r != zzpgVar.s) {
            zzpgVar.zzaW().zzb().zzc("Not all upload components initialized", Integer.valueOf(zzpgVar.r), Integer.valueOf(zzpgVar.s));
        }
        zzpgVar.m.set(true);
        zzpgVar.zzaW().zzk().zza("UploadController is now fully initialized");
        zzpgVar.zzaX().zzg();
        zzpgVar.zzj().h();
        kva kvaVarZzj = zzpgVar.zzj();
        kvaVarZzj.zzg();
        kvaVarZzj.a();
        if (kvaVarZzj.I()) {
            zzfx zzfxVar = zzfy.zzau;
            if (((Long) zzfxVar.zzb(null)).longValue() != 0) {
                SQLiteDatabase sQLiteDatabaseM = kvaVarZzj.M();
                zzic zzicVar = kvaVarZzj.a;
                int iDelete = sQLiteDatabaseM.delete("trigger_uris", "abs(timestamp_millis - ?) > cast(? as integer)", new String[]{String.valueOf(zzicVar.zzba().currentTimeMillis()), String.valueOf(zzfxVar.zzb(null))});
                if (iDelete > 0) {
                    zzicVar.zzaW().zzk().zzb("Deleted stale trigger uris. rowsDeleted", Integer.valueOf(iDelete));
                }
            }
        }
        if (zzpgVar.i.zzd.zza() == 0) {
            zzpgVar.i.zzd.zzb(zzpgVar.zzba().currentTimeMillis());
        }
        zzpgVar.H();
    }
}
