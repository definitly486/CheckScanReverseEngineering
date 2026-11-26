package com.google.android.gms.internal.measurement;

import defpackage.c9;
import defpackage.fg;
import defpackage.owa;
import defpackage.twa;
import defpackage.yla;
import defpackage.zwa;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbg extends zzav {
    public zzbg() {
        this.a.add(zzbk.FOR_IN);
        this.a.add(zzbk.FOR_IN_CONST);
        this.a.add(zzbk.FOR_IN_LET);
        this.a.add(zzbk.FOR_LET);
        this.a.add(zzbk.FOR_OF);
        this.a.add(zzbk.FOR_OF_CONST);
        this.a.add(zzbk.FOR_OF_LET);
        this.a.add(zzbk.WHILE);
    }

    public static zzao b(twa twaVar, zzao zzaoVar, zzao zzaoVar2) {
        if (!(zzaoVar instanceof Iterable)) {
            fg.c("Non-iterable type in for...of loop.");
            return null;
        }
        Iterator it = ((Iterable) zzaoVar).iterator();
        if (it != null) {
            while (it.hasNext()) {
                zzao zzaoVarZzb = twaVar.a((zzao) it.next()).zzb((zzae) zzaoVar2);
                if (zzaoVarZzb instanceof zzag) {
                    zzag zzagVar = (zzag) zzaoVarZzb;
                    if ("break".equals(zzagVar.zzg())) {
                        return zzao.zzf;
                    }
                    if ("return".equals(zzagVar.zzg())) {
                        return zzagVar;
                    }
                }
            }
        }
        return zzao.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        zzbk zzbkVar = zzbk.ADD;
        int iOrdinal = zzh.zze(str).ordinal();
        if (iOrdinal == 65) {
            zzao zzaoVar = (zzao) c9.b(zzbk.WHILE, 4, list, 0);
            zzao zzaoVar2 = (zzao) list.get(1);
            zzao zzaoVar3 = (zzao) list.get(2);
            zzao zzaoVarZza = zzgVar.zza((zzao) list.get(3));
            if (zzgVar.zza(zzaoVar3).zze().booleanValue()) {
                zzao zzaoVarZzb = zzgVar.zzb((zzae) zzaoVarZza);
                if (zzaoVarZzb instanceof zzag) {
                    zzag zzagVar = (zzag) zzaoVarZzb;
                    if ("break".equals(zzagVar.zzg())) {
                        return zzao.zzf;
                    }
                    if ("return".equals(zzagVar.zzg())) {
                        return zzagVar;
                    }
                }
            }
            while (zzgVar.zza(zzaoVar).zze().booleanValue()) {
                zzao zzaoVarZzb2 = zzgVar.zzb((zzae) zzaoVarZza);
                if (zzaoVarZzb2 instanceof zzag) {
                    zzag zzagVar2 = (zzag) zzaoVarZzb2;
                    if ("break".equals(zzagVar2.zzg())) {
                        return zzao.zzf;
                    }
                    if ("return".equals(zzagVar2.zzg())) {
                        return zzagVar2;
                    }
                }
                zzgVar.zza(zzaoVar2);
            }
            return zzao.zzf;
        }
        switch (iOrdinal) {
            case 26:
                if (!(c9.b(zzbk.FOR_IN, 3, list, 0) instanceof zzas)) {
                    fg.c("Variable name in FOR_IN must be a string");
                    return null;
                }
                String strZzc = ((zzao) list.get(0)).zzc();
                zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(1));
                zzao zzaoVarZza3 = zzgVar.zza((zzao) list.get(2));
                Iterator itZzf = zzaoVarZza2.zzf();
                if (itZzf != null) {
                    while (itZzf.hasNext()) {
                        zzgVar.zzf(strZzc, (zzao) itZzf.next());
                        zzao zzaoVarZzb3 = zzgVar.zzb((zzae) zzaoVarZza3);
                        if (zzaoVarZzb3 instanceof zzag) {
                            zzag zzagVar3 = (zzag) zzaoVarZzb3;
                            if ("break".equals(zzagVar3.zzg())) {
                                return zzao.zzf;
                            }
                            if ("return".equals(zzagVar3.zzg())) {
                                return zzagVar3;
                            }
                        }
                    }
                }
                return zzao.zzf;
            case 27:
                if (!(c9.b(zzbk.FOR_IN_CONST, 3, list, 0) instanceof zzas)) {
                    fg.c("Variable name in FOR_IN_CONST must be a string");
                    return null;
                }
                String strZzc2 = ((zzao) list.get(0)).zzc();
                zzao zzaoVarZza4 = zzgVar.zza((zzao) list.get(1));
                zzao zzaoVarZza5 = zzgVar.zza((zzao) list.get(2));
                Iterator itZzf2 = zzaoVarZza4.zzf();
                if (itZzf2 != null) {
                    while (itZzf2.hasNext()) {
                        zzao zzaoVar4 = (zzao) itZzf2.next();
                        zzg zzgVarZzc = zzgVar.zzc();
                        zzgVarZzc.zzg(strZzc2, zzaoVar4);
                        zzao zzaoVarZzb4 = zzgVarZzc.zzb((zzae) zzaoVarZza5);
                        if (zzaoVarZzb4 instanceof zzag) {
                            zzag zzagVar4 = (zzag) zzaoVarZzb4;
                            if ("break".equals(zzagVar4.zzg())) {
                                return zzao.zzf;
                            }
                            if ("return".equals(zzagVar4.zzg())) {
                                return zzagVar4;
                            }
                        }
                    }
                }
                return zzao.zzf;
            case 28:
                if (!(c9.b(zzbk.FOR_IN_LET, 3, list, 0) instanceof zzas)) {
                    fg.c("Variable name in FOR_IN_LET must be a string");
                    return null;
                }
                String strZzc3 = ((zzao) list.get(0)).zzc();
                zzao zzaoVarZza6 = zzgVar.zza((zzao) list.get(1));
                zzao zzaoVarZza7 = zzgVar.zza((zzao) list.get(2));
                Iterator itZzf3 = zzaoVarZza6.zzf();
                if (itZzf3 != null) {
                    while (itZzf3.hasNext()) {
                        zzao zzaoVar5 = (zzao) itZzf3.next();
                        zzg zzgVarZzc2 = zzgVar.zzc();
                        zzgVarZzc2.zzf(strZzc3, zzaoVar5);
                        zzao zzaoVarZzb5 = zzgVarZzc2.zzb((zzae) zzaoVarZza7);
                        if (zzaoVarZzb5 instanceof zzag) {
                            zzag zzagVar5 = (zzag) zzaoVarZzb5;
                            if ("break".equals(zzagVar5.zzg())) {
                                return zzao.zzf;
                            }
                            if ("return".equals(zzagVar5.zzg())) {
                                return zzagVar5;
                            }
                        }
                    }
                }
                return zzao.zzf;
            case 29:
                zzao zzaoVarZza8 = zzgVar.zza((zzao) c9.b(zzbk.FOR_LET, 4, list, 0));
                if (!(zzaoVarZza8 instanceof zzae)) {
                    fg.c("Initializer variables in FOR_LET must be an ArrayList");
                    return null;
                }
                zzae zzaeVar = (zzae) zzaoVarZza8;
                zzao zzaoVar6 = (zzao) list.get(1);
                zzao zzaoVar7 = (zzao) list.get(2);
                zzao zzaoVarZza9 = zzgVar.zza((zzao) list.get(3));
                zzg zzgVarZzc3 = zzgVar.zzc();
                for (int i = 0; i < zzaeVar.zzh(); i++) {
                    String strZzc4 = zzaeVar.zzl(i).zzc();
                    zzgVarZzc3.zze(strZzc4, zzgVar.zzh(strZzc4));
                }
                while (zzgVar.zza(zzaoVar6).zze().booleanValue()) {
                    zzao zzaoVarZzb6 = zzgVar.zzb((zzae) zzaoVarZza9);
                    if (zzaoVarZzb6 instanceof zzag) {
                        zzag zzagVar6 = (zzag) zzaoVarZzb6;
                        if ("break".equals(zzagVar6.zzg())) {
                            return zzao.zzf;
                        }
                        if ("return".equals(zzagVar6.zzg())) {
                            return zzagVar6;
                        }
                    }
                    zzg zzgVarZzc4 = zzgVar.zzc();
                    for (int i2 = 0; i2 < zzaeVar.zzh(); i2++) {
                        String strZzc5 = zzaeVar.zzl(i2).zzc();
                        zzgVarZzc4.zze(strZzc5, zzgVarZzc3.zzh(strZzc5));
                    }
                    zzgVarZzc4.zza(zzaoVar7);
                    zzgVarZzc3 = zzgVarZzc4;
                }
                return zzao.zzf;
            case 30:
                if (!(c9.b(zzbk.FOR_OF, 3, list, 0) instanceof zzas)) {
                    fg.c("Variable name in FOR_OF must be a string");
                    return null;
                }
                return b(new zwa(zzgVar, ((zzao) list.get(0)).zzc()), zzgVar.zza((zzao) list.get(1)), zzgVar.zza((zzao) list.get(2)));
            case 31:
                if (!(c9.b(zzbk.FOR_OF_CONST, 3, list, 0) instanceof zzas)) {
                    fg.c("Variable name in FOR_OF_CONST must be a string");
                    return null;
                }
                return b(new yla(zzgVar, ((zzao) list.get(0)).zzc()), zzgVar.zza((zzao) list.get(1)), zzgVar.zza((zzao) list.get(2)));
            case 32:
                if (!(c9.b(zzbk.FOR_OF_LET, 3, list, 0) instanceof zzas)) {
                    fg.c("Variable name in FOR_OF_LET must be a string");
                    return null;
                }
                return b(new owa(zzgVar, ((zzao) list.get(0)).zzc()), zzgVar.zza((zzao) list.get(1)), zzgVar.zza((zzao) list.get(2)));
            default:
                a(str);
                throw null;
        }
    }
}
