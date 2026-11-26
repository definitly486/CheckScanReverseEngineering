package defpackage;

import android.content.SharedPreferences;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzba;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class o0c implements Runnable {
    public final /* synthetic */ zzba b;
    public final /* synthetic */ zzlj c;

    public o0c(zzlj zzljVar, zzba zzbaVar) {
        this.b = zzbaVar;
        this.c = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzic zzicVar = this.c.a;
        hnb hnbVarZzd = zzicVar.zzd();
        zzic zzicVar2 = hnbVarZzd.a;
        hnbVarZzd.zzg();
        hnbVarZzd.zzg();
        zzba zzbaVarZzg = zzba.zzg(hnbVarZzd.d().getString("dma_consent_settings", null));
        zzba zzbaVar = this.b;
        if (!zzjl.zzu(zzbaVar.zzb(), zzbaVarZzg.zzb())) {
            zzicVar.zzaW().zzi().zzb("Lower precedence consent source ignored, proposed source", Integer.valueOf(zzbaVar.zzb()));
            return;
        }
        SharedPreferences.Editor editorEdit = hnbVarZzd.d().edit();
        editorEdit.putString("dma_consent_settings", zzbaVar.zze());
        editorEdit.apply();
        zzicVar.zzaW().zzk().zzb("Setting DMA consent(FE)", zzbaVar);
        zznl zznlVarZzt = zzicVar.zzt();
        zznlVarZzt.zzg();
        zznlVarZzt.a();
        if (!zznlVarZzt.c() || zznlVarZzt.a.zzk().zzak() >= 241200) {
            final zznl zznlVarZzt2 = zzicVar.zzt();
            zznlVarZzt2.zzg();
            zznlVarZzt2.a();
            zznlVarZzt2.h(new Runnable() { // from class: e7c
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zznl zznlVar = zznlVarZzt2;
                    zzic zzicVar3 = zznlVar.a;
                    zzgb zzgbVar = zznlVar.d;
                    if (zzgbVar == null) {
                        u4.e(zzicVar3, "Failed to send Dma consent settings to service");
                        return;
                    }
                    try {
                        zzr zzrVarJ = zznlVar.j(false);
                        Preconditions.checkNotNull(zzrVarJ);
                        zzgbVar.zzz(zzrVarJ);
                        zznlVar.g();
                    } catch (RemoteException e) {
                        zzicVar3.zzaW().zzb().zzb("Failed to send Dma consent settings to the service", e);
                    }
                }
            });
            return;
        }
        zznl zznlVarZzt3 = zzicVar.zzt();
        zznlVarZzt3.zzg();
        zznlVarZzt3.a();
        if (zznlVarZzt3.d()) {
            zznlVarZzt3.h(new q5c(zznlVarZzt3, zznlVarZzt3.j(false)));
        }
    }
}
