package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.zzaa;
import com.google.android.gms.internal.measurement.zzc;
import com.google.android.gms.internal.measurement.zzd;
import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzht;
import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzjm;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzpk;
import com.google.android.gms.measurement.internal.zzr;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class ysb implements Runnable {
    public final /* synthetic */ zzbh b;
    public final /* synthetic */ zzr c;
    public final /* synthetic */ zzjd d;

    public ysb(zzjd zzjdVar, zzbh zzbhVar, zzr zzrVar) {
        this.b = zzbhVar;
        this.c = zzrVar;
        this.d = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbf zzbfVar;
        zzpg zzpgVar = this.d.a;
        zzbh zzbhVar = this.b;
        if ("_cmp".equals(zzbhVar.zza) && (zzbfVar = zzbhVar.zzb) != null && zzbfVar.zze() != 0) {
            String string = zzbfVar.b.getString("_cis");
            if ("referrer broadcast".equals(string) || "referrer API".equals(string)) {
                zzpgVar.zzaW().zzi().zzb("Event has been filtered ", zzbhVar.toString());
                zzbhVar = new zzbh("_cmpx", zzbfVar, zzbhVar.zzc, zzbhVar.zzd, zzbhVar.zze);
            }
        }
        zzht zzhtVarZzh = zzpgVar.zzh();
        zzr zzrVar = this.c;
        String str = zzrVar.zza;
        zzc zzcVar = TextUtils.isEmpty(str) ? null : (zzc) zzhtVarZzh.k.get(str);
        if (zzcVar == null) {
            zzpgVar.zzaW().zzk().zzb("EES not loaded for", zzrVar.zza);
            zzpgVar.Q();
            zzpgVar.e(zzbhVar, zzrVar);
            return;
        }
        try {
            zzpk zzpkVarZzp = zzpgVar.zzp();
            Bundle bundleZzf = zzbhVar.zzb.zzf();
            zzpkVarZzp.getClass();
            HashMap mapK = zzpk.K(bundleZzf, true);
            String str2 = zzbhVar.zza;
            String strZza = zzjm.zza(str2);
            if (strZza != null) {
                str2 = strZza;
            }
            if (zzcVar.zzb(new zzaa(str2, zzbhVar.zzd, mapK))) {
                if (zzcVar.zzc()) {
                    zzpgVar.zzaW().zzk().zzb("EES edited event", zzbhVar.zza);
                    zzpk zzpkVarZzp2 = zzpgVar.zzp();
                    zzaa zzaaVarZzc = zzcVar.zze().zzc();
                    zzpkVarZzp2.getClass();
                    zzbh zzbhVarC = zzpk.c(zzaaVarZzc);
                    zzpgVar.Q();
                    zzpgVar.e(zzbhVarC, zzrVar);
                } else {
                    zzpgVar.Q();
                    zzpgVar.e(zzbhVar, zzrVar);
                }
                if (zzcVar.zzd()) {
                    for (zzaa zzaaVar : zzcVar.zze().zzf()) {
                        zzpgVar.zzaW().zzk().zzb("EES logging created event", zzaaVar.zzb());
                        zzpgVar.zzp().getClass();
                        zzbh zzbhVarC2 = zzpk.c(zzaaVar);
                        zzpgVar.Q();
                        zzpgVar.e(zzbhVarC2, zzrVar);
                    }
                    return;
                }
                return;
            }
        } catch (zzd unused) {
            zzpgVar.zzaW().zzb().zzc("EES error. appId, eventName", zzrVar.zzb, zzbhVar.zza);
        }
        zzpgVar.zzaW().zzk().zzb("EES was not applied to event", zzbhVar.zza);
        zzpgVar.Q();
        zzpgVar.e(zzbhVar, zzrVar);
    }
}
