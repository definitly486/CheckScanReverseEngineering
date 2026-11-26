package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzax extends zzav {
    public zzax() {
        this.a.add(zzbk.EQUALS);
        this.a.add(zzbk.GREATER_THAN);
        this.a.add(zzbk.GREATER_THAN_EQUALS);
        this.a.add(zzbk.IDENTITY_EQUALS);
        this.a.add(zzbk.IDENTITY_NOT_EQUALS);
        this.a.add(zzbk.LESS_THAN);
        this.a.add(zzbk.LESS_THAN_EQUALS);
        this.a.add(zzbk.NOT_EQUALS);
    }

    public static boolean b(zzao zzaoVar, zzao zzaoVar2) {
        if (zzaoVar instanceof zzak) {
            zzaoVar = new zzas(zzaoVar.zzc());
        }
        if (zzaoVar2 instanceof zzak) {
            zzaoVar2 = new zzas(zzaoVar2.zzc());
        }
        if ((zzaoVar instanceof zzas) && (zzaoVar2 instanceof zzas)) {
            return zzaoVar.zzc().compareTo(zzaoVar2.zzc()) < 0;
        }
        double dDoubleValue = zzaoVar.zzd().doubleValue();
        double dDoubleValue2 = zzaoVar2.zzd().doubleValue();
        return (Double.isNaN(dDoubleValue) || Double.isNaN(dDoubleValue2) || (dDoubleValue == 0.0d && dDoubleValue2 == 0.0d) || ((dDoubleValue == 0.0d && dDoubleValue2 == 0.0d) || Double.compare(dDoubleValue, dDoubleValue2) >= 0)) ? false : true;
    }

    public static boolean c(zzao zzaoVar, zzao zzaoVar2) {
        if (zzaoVar.getClass().equals(zzaoVar2.getClass())) {
            if ((zzaoVar instanceof zzat) || (zzaoVar instanceof zzam)) {
                return true;
            }
            if (zzaoVar instanceof zzah) {
                return (Double.isNaN(zzaoVar.zzd().doubleValue()) || Double.isNaN(zzaoVar2.zzd().doubleValue()) || zzaoVar.zzd().doubleValue() != zzaoVar2.zzd().doubleValue()) ? false : true;
            }
            if (zzaoVar instanceof zzas) {
                return zzaoVar.zzc().equals(zzaoVar2.zzc());
            }
            if (zzaoVar instanceof zzaf) {
                return zzaoVar.zze().equals(zzaoVar2.zze());
            }
            return zzaoVar == zzaoVar2;
        }
        if (((zzaoVar instanceof zzat) || (zzaoVar instanceof zzam)) && ((zzaoVar2 instanceof zzat) || (zzaoVar2 instanceof zzam))) {
            return true;
        }
        boolean z = zzaoVar instanceof zzah;
        if (z && (zzaoVar2 instanceof zzas)) {
            return c(zzaoVar, new zzah(zzaoVar2.zzd()));
        }
        boolean z2 = zzaoVar instanceof zzas;
        if ((!z2 || !(zzaoVar2 instanceof zzah)) && !(zzaoVar instanceof zzaf)) {
            if (zzaoVar2 instanceof zzaf) {
                return c(zzaoVar, new zzah(zzaoVar2.zzd()));
            }
            if ((z2 || z) && (zzaoVar2 instanceof zzak)) {
                return c(zzaoVar, new zzas(zzaoVar2.zzc()));
            }
            if ((zzaoVar instanceof zzak) && ((zzaoVar2 instanceof zzas) || (zzaoVar2 instanceof zzah))) {
                return c(new zzas(zzaoVar.zzc()), zzaoVar2);
            }
            return false;
        }
        return c(new zzah(zzaoVar.zzd()), zzaoVar2);
    }

    public static boolean d(zzao zzaoVar, zzao zzaoVar2) {
        if (zzaoVar instanceof zzak) {
            zzaoVar = new zzas(zzaoVar.zzc());
        }
        if (zzaoVar2 instanceof zzak) {
            zzaoVar2 = new zzas(zzaoVar2.zzc());
        }
        return (((zzaoVar instanceof zzas) && (zzaoVar2 instanceof zzas)) || !(Double.isNaN(zzaoVar.zzd().doubleValue()) || Double.isNaN(zzaoVar2.zzd().doubleValue()))) && !b(zzaoVar2, zzaoVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        boolean zC;
        boolean zC2;
        zzh.zza(zzh.zze(str).name(), 2, list);
        zzao zzaoVarZza = zzgVar.zza((zzao) list.get(0));
        zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(1));
        int iOrdinal = zzh.zze(str).ordinal();
        if (iOrdinal != 23) {
            if (iOrdinal == 48) {
                zC2 = c(zzaoVarZza, zzaoVarZza2);
            } else if (iOrdinal == 42) {
                zC = b(zzaoVarZza, zzaoVarZza2);
            } else if (iOrdinal != 43) {
                switch (iOrdinal) {
                    case 37:
                        zC = b(zzaoVarZza2, zzaoVarZza);
                        break;
                    case 38:
                        zC = d(zzaoVarZza2, zzaoVarZza);
                        break;
                    case 39:
                        zC = zzh.zzf(zzaoVarZza, zzaoVarZza2);
                        break;
                    case 40:
                        zC2 = zzh.zzf(zzaoVarZza, zzaoVarZza2);
                        break;
                    default:
                        a(str);
                        throw null;
                }
            } else {
                zC = d(zzaoVarZza, zzaoVarZza2);
            }
            zC = !zC2;
        } else {
            zC = c(zzaoVarZza, zzaoVarZza2);
        }
        return zC ? zzao.zzk : zzao.zzl;
    }
}
