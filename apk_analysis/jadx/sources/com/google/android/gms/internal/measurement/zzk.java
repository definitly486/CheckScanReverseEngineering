package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzk extends zzai {
    public final zzab d;

    public zzk(zzab zzabVar) {
        super("internal.eventLogger");
        this.d = zzabVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao zza(zzg zzgVar, List list) {
        zzh.zza(this.b, 3, list);
        String strZzc = zzgVar.zza((zzao) list.get(0)).zzc();
        long jZzi = (long) zzh.zzi(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue());
        zzao zzaoVarZza = zzgVar.zza((zzao) list.get(2));
        this.d.zze(strZzc, jZzi, zzaoVarZza instanceof zzal ? zzh.zzk((zzal) zzaoVarZza) : new HashMap());
        return zzao.zzf;
    }
}
