package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzxo extends zzxz implements zzyi {
    @Override // com.google.android.gms.internal.measurement.zzxz
    public final zzabp a() {
        return zzabl.zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzxz
    public final boolean b(zzyd zzydVar) {
        zzzj zzzjVarZzl = zzl();
        int iZza = zzzjVarZzl.zza();
        for (int i = 0; i < iZza; i++) {
            if (zzzjVarZzl.zzb(i).zzd() == "eye3tag") {
                if (zzzjVarZzl.zzd(zzxx.zza) != null) {
                    break;
                }
                zzyl zzylVar = zzxx.zzi;
                if (zzzjVarZzl.zzd(zzylVar) != null) {
                    break;
                }
                e(zzylVar, zzyv.SMALL);
                break;
            }
        }
        return super.b(zzydVar);
    }
}
