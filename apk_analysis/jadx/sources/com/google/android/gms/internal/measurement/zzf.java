package com.google.android.gms.internal.measurement;

import defpackage.v8b;

/* JADX INFO: loaded from: classes4.dex */
public final class zzf {
    public final zzaw a;
    public final zzg b;
    public final zzg c;
    public final zzj d;

    public zzf() {
        zzaw zzawVar = new zzaw();
        this.a = zzawVar;
        zzg zzgVar = new zzg(null, zzawVar);
        this.c = zzgVar;
        this.b = zzgVar.zzc();
        zzj zzjVar = new zzj();
        this.d = zzjVar;
        zzgVar.zze("require", new zzw(zzjVar));
        zzjVar.zza("internal.platform", v8b.b);
        zzgVar.zze("runtime.counter", new zzah(Double.valueOf(0.0d)));
    }

    public final zzao zza(zzg zzgVar, zzje... zzjeVarArr) {
        zzao zzaoVarZzb = zzao.zzf;
        for (zzje zzjeVar : zzjeVarArr) {
            zzaoVarZzb = zzi.zzb(zzjeVar);
            zzh.zzl(this.c);
            if ((zzaoVarZzb instanceof zzap) || (zzaoVarZzb instanceof zzan)) {
                zzaoVarZzb = this.a.zzb(zzgVar, zzaoVarZzb);
            }
        }
        return zzaoVarZzb;
    }
}
