package defpackage;

import com.google.android.gms.internal.measurement.zzr;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzht;
import com.google.android.gms.measurement.internal.zzic;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cob implements zzr {
    public final /* synthetic */ zzht a;

    public cob(zzht zzhtVar) {
        this.a = zzhtVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzr
    public final void zza(int i, String str, List list, boolean z, boolean z2) {
        zzgs zzgsVarZzj;
        zzic zzicVar = this.a.a;
        int i2 = i - 1;
        if (i2 == 0) {
            zzgsVarZzj = zzicVar.zzaW().zzj();
        } else if (i2 != 1) {
            if (i2 == 3) {
                zzgsVarZzj = zzicVar.zzaW().zzk();
            } else if (i2 != 4) {
                zzgsVarZzj = zzicVar.zzaW().zzi();
            } else if (z) {
                zzgsVarZzj = zzicVar.zzaW().zzf();
            } else {
                zzgsVarZzj = !z2 ? zzicVar.zzaW().zzh() : zzicVar.zzaW().zze();
            }
        } else if (z) {
            zzgsVarZzj = zzicVar.zzaW().zzc();
        } else {
            zzgsVarZzj = !z2 ? zzicVar.zzaW().zzd() : zzicVar.zzaW().zzb();
        }
        int size = list.size();
        if (size == 1) {
            zzgsVarZzj.zzb(str, list.get(0));
            return;
        }
        if (size == 2) {
            zzgsVarZzj.zzc(str, list.get(0), list.get(1));
        } else if (size != 3) {
            zzgsVarZzj.zza(str);
        } else {
            zzgsVarZzj.zzd(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
