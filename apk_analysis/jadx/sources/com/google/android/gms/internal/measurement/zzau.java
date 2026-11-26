package com.google.android.gms.internal.measurement;

import defpackage.c9;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzau extends zzav {
    public zzau() {
        this.a.add(zzbk.BITWISE_AND);
        this.a.add(zzbk.BITWISE_LEFT_SHIFT);
        this.a.add(zzbk.BITWISE_NOT);
        this.a.add(zzbk.BITWISE_OR);
        this.a.add(zzbk.BITWISE_RIGHT_SHIFT);
        this.a.add(zzbk.BITWISE_UNSIGNED_RIGHT_SHIFT);
        this.a.add(zzbk.BITWISE_XOR);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        zzbk zzbkVar = zzbk.ADD;
        switch (zzh.zze(str).ordinal()) {
            case 4:
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzao) c9.b(zzbk.BITWISE_AND, 2, list, 0)).zzd().doubleValue()) & zzh.zzg(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue())));
            case 5:
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzao) c9.b(zzbk.BITWISE_LEFT_SHIFT, 2, list, 0)).zzd().doubleValue()) << ((int) (zzh.zzh(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue()) & 31))));
            case 6:
                return new zzah(Double.valueOf(~zzh.zzg(zzgVar.zza((zzao) c9.b(zzbk.BITWISE_NOT, 1, list, 0)).zzd().doubleValue())));
            case 7:
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzao) c9.b(zzbk.BITWISE_OR, 2, list, 0)).zzd().doubleValue()) | zzh.zzg(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue())));
            case 8:
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzao) c9.b(zzbk.BITWISE_RIGHT_SHIFT, 2, list, 0)).zzd().doubleValue()) >> ((int) (zzh.zzh(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue()) & 31))));
            case 9:
                return new zzah(Double.valueOf(zzh.zzh(zzgVar.zza((zzao) c9.b(zzbk.BITWISE_UNSIGNED_RIGHT_SHIFT, 2, list, 0)).zzd().doubleValue()) >>> ((int) (zzh.zzh(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue()) & 31))));
            case 10:
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzao) c9.b(zzbk.BITWISE_XOR, 2, list, 0)).zzd().doubleValue()) ^ zzh.zzg(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue())));
            default:
                a(str);
                throw null;
        }
    }
}
