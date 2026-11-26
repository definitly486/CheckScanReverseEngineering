package com.google.android.gms.internal.measurement;

import defpackage.bj;
import defpackage.c9;
import defpackage.fg;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzay extends zzav {
    public zzay() {
        this.a.add(zzbk.APPLY);
        this.a.add(zzbk.BLOCK);
        this.a.add(zzbk.BREAK);
        this.a.add(zzbk.CASE);
        this.a.add(zzbk.DEFAULT);
        this.a.add(zzbk.CONTINUE);
        this.a.add(zzbk.DEFINE_FUNCTION);
        this.a.add(zzbk.FN);
        this.a.add(zzbk.IF);
        this.a.add(zzbk.QUOTE);
        this.a.add(zzbk.RETURN);
        this.a.add(zzbk.SWITCH);
        this.a.add(zzbk.TERNARY);
    }

    public static zzan b(zzg zzgVar, List list) {
        zzh.zzb(zzbk.FN.name(), 2, list);
        zzao zzaoVarZza = zzgVar.zza((zzao) list.get(0));
        zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(1));
        if (!(zzaoVarZza2 instanceof zzae)) {
            fg.c(bj.c("FN requires an ArrayValue of parameter names found ", zzaoVarZza2.getClass().getCanonicalName()));
            return null;
        }
        List listZzb = ((zzae) zzaoVarZza2).zzb();
        List arrayList = new ArrayList();
        if (list.size() > 2) {
            arrayList = list.subList(2, list.size());
        }
        return new zzan(zzaoVarZza.zzc(), listZzb, arrayList, zzgVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        zzbk zzbkVar = zzbk.ADD;
        int iOrdinal = zzh.zze(str).ordinal();
        if (iOrdinal == 2) {
            zzao zzaoVarZza = zzgVar.zza((zzao) c9.b(zzbk.APPLY, 3, list, 0));
            String strZzc = zzgVar.zza((zzao) list.get(1)).zzc();
            zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(2));
            if (!(zzaoVarZza2 instanceof zzae)) {
                fg.c(bj.c("Function arguments for Apply are not a list found ", zzaoVarZza2.getClass().getCanonicalName()));
                return null;
            }
            if (!strZzc.isEmpty()) {
                return zzaoVarZza.zzcG(strZzc, zzgVar, ((zzae) zzaoVarZza2).zzb());
            }
            fg.c("Function name for apply is undefined");
            return null;
        }
        if (iOrdinal == 15) {
            zzh.zza(zzbk.BREAK.name(), 0, list);
            return zzao.zzh;
        }
        if (iOrdinal == 25) {
            return b(zzgVar, list);
        }
        if (iOrdinal == 41) {
            zzh.zzb(zzbk.IF.name(), 2, list);
            zzao zzaoVarZza3 = zzgVar.zza((zzao) list.get(0));
            zzao zzaoVarZza4 = zzgVar.zza((zzao) list.get(1));
            zzao zzaoVarZza5 = list.size() > 2 ? zzgVar.zza((zzao) list.get(2)) : null;
            zzao zzaoVar = zzao.zzf;
            zzao zzaoVarZzb = zzaoVarZza3.zze().booleanValue() ? zzgVar.zzb((zzae) zzaoVarZza4) : zzaoVarZza5 != null ? zzgVar.zzb((zzae) zzaoVarZza5) : zzaoVar;
            return true != (zzaoVarZzb instanceof zzag) ? zzaoVar : zzaoVarZzb;
        }
        if (iOrdinal == 54) {
            return new zzae(list);
        }
        if (iOrdinal == 57) {
            return list.isEmpty() ? zzao.zzj : new zzag("return", zzgVar.zza((zzao) c9.b(zzbk.RETURN, 1, list, 0)));
        }
        if (iOrdinal != 19) {
            if (iOrdinal == 20) {
                zzh.zzb(zzbk.DEFINE_FUNCTION.name(), 2, list);
                zzan zzanVarB = b(zzgVar, list);
                if (zzanVarB.zzg() == null) {
                    zzgVar.zze("", zzanVarB);
                    return zzanVarB;
                }
                zzgVar.zze(zzanVarB.zzg(), zzanVarB);
                return zzanVarB;
            }
            if (iOrdinal == 60) {
                zzao zzaoVarZza6 = zzgVar.zza((zzao) c9.b(zzbk.SWITCH, 3, list, 0));
                zzao zzaoVarZza7 = zzgVar.zza((zzao) list.get(1));
                zzao zzaoVarZza8 = zzgVar.zza((zzao) list.get(2));
                if (!(zzaoVarZza7 instanceof zzae)) {
                    fg.c("Malformed SWITCH statement, cases are not a list");
                    return null;
                }
                if (!(zzaoVarZza8 instanceof zzae)) {
                    fg.c("Malformed SWITCH statement, case statements are not a list");
                    return null;
                }
                zzae zzaeVar = (zzae) zzaoVarZza7;
                zzae zzaeVar2 = (zzae) zzaoVarZza8;
                boolean z = false;
                for (int i = 0; i < zzaeVar.zzh(); i++) {
                    if (z || zzaoVarZza6.equals(zzgVar.zza(zzaeVar.zzl(i)))) {
                        zzao zzaoVarZza9 = zzgVar.zza(zzaeVar2.zzl(i));
                        if (zzaoVarZza9 instanceof zzag) {
                            return ((zzag) zzaoVarZza9).zzg().equals("break") ? zzao.zzf : zzaoVarZza9;
                        }
                        z = true;
                    } else {
                        z = false;
                    }
                }
                if (zzaeVar.zzh() + 1 == zzaeVar2.zzh()) {
                    zzao zzaoVarZza10 = zzgVar.zza(zzaeVar2.zzl(zzaeVar.zzh()));
                    if (zzaoVarZza10 instanceof zzag) {
                        String strZzg = ((zzag) zzaoVarZza10).zzg();
                        if (strZzg.equals("return") || strZzg.equals("continue")) {
                            return zzaoVarZza10;
                        }
                    }
                }
                return zzao.zzf;
            }
            if (iOrdinal == 61) {
                return zzgVar.zza((zzao) c9.b(zzbk.TERNARY, 3, list, 0)).zze().booleanValue() ? zzgVar.zza((zzao) list.get(1)) : zzgVar.zza((zzao) list.get(2));
            }
            switch (iOrdinal) {
                case 11:
                    return zzgVar.zzc().zzb(new zzae(list));
                case 12:
                    zzh.zza(zzbk.BREAK.name(), 0, list);
                    return zzao.zzi;
                case 13:
                    break;
                default:
                    a(str);
                    throw null;
            }
        }
        if (list.isEmpty()) {
            return zzao.zzf;
        }
        zzao zzaoVarZza11 = zzgVar.zza((zzao) list.get(0));
        return zzaoVarZza11 instanceof zzae ? zzgVar.zzb((zzae) zzaoVarZza11) : zzao.zzf;
    }
}
