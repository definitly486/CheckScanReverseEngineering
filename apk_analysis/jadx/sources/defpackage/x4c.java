package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcs;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class x4c implements Runnable {
    public final /* synthetic */ zzr b;
    public final /* synthetic */ zzcs c;
    public final /* synthetic */ zznl d;

    public x4c(zznl zznlVar, zzr zzrVar, zzcs zzcsVar) {
        this.b = zzrVar;
        this.c = zzcsVar;
        this.d = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcs zzcsVar = this.c;
        zznl zznlVar = this.d;
        zzic zzicVar = zznlVar.a;
        String strZzm = null;
        try {
            try {
                if (zzicVar.zzd().g().zzo(zzjk.ANALYTICS_STORAGE)) {
                    zzgb zzgbVar = zznlVar.d;
                    if (zzgbVar == null) {
                        zzicVar.zzaW().zzb().zza("Failed to get app instance id");
                    } else {
                        zzr zzrVar = this.b;
                        Preconditions.checkNotNull(zzrVar);
                        strZzm = zzgbVar.zzm(zzrVar);
                        if (strZzm != null) {
                            zzicVar.zzj().g.set(strZzm);
                            zzicVar.zzd().g.zzb(strZzm);
                        }
                        zznlVar.g();
                    }
                } else {
                    zzicVar.zzaW().zzh().zza("Analytics storage consent denied; will not get app instance id");
                    zzicVar.zzj().g.set(null);
                    zzicVar.zzd().g.zzb(null);
                }
            } catch (RemoteException e) {
                zzicVar.zzaW().zzb().zzb("Failed to get app instance id", e);
            }
        } finally {
            zzicVar.zzk().zzao(zzcsVar, null);
        }
    }
}
