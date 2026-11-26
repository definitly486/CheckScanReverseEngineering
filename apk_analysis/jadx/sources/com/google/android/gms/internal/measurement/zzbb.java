package com.google.android.gms.internal.measurement;

import defpackage.c9;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbb extends zzav {
    public zzbb() {
        this.a.add(zzbk.AND);
        this.a.add(zzbk.NOT);
        this.a.add(zzbk.OR);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        zzbk zzbkVar = zzbk.ADD;
        int iOrdinal = zzh.zze(str).ordinal();
        if (iOrdinal == 1) {
            zzao zzaoVarZza = zzgVar.zza((zzao) c9.b(zzbk.AND, 2, list, 0));
            return zzaoVarZza.zze().booleanValue() ? zzgVar.zza((zzao) list.get(1)) : zzaoVarZza;
        }
        if (iOrdinal == 47) {
            return new zzaf(Boolean.valueOf(!zzgVar.zza((zzao) c9.b(zzbk.NOT, 1, list, 0)).zze().booleanValue()));
        }
        if (iOrdinal == 50) {
            zzao zzaoVarZza2 = zzgVar.zza((zzao) c9.b(zzbk.OR, 2, list, 0));
            return !zzaoVarZza2.zze().booleanValue() ? zzgVar.zza((zzao) list.get(1)) : zzaoVarZza2;
        }
        a(str);
        throw null;
    }
}
