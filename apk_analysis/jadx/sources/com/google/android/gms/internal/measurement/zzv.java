package com.google.android.gms.internal.measurement;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.fg;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzv extends zzai {
    public final zzz d;

    public zzv(zzz zzzVar) {
        super("internal.registerCallback");
        this.d = zzzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao zza(zzg zzgVar, List list) {
        zzh.zza(this.b, 3, list);
        String strZzc = zzgVar.zza((zzao) list.get(0)).zzc();
        zzao zzaoVarZza = zzgVar.zza((zzao) list.get(1));
        if (!(zzaoVarZza instanceof zzan)) {
            fg.c("Invalid callback type");
            return null;
        }
        zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(2));
        if (!(zzaoVarZza2 instanceof zzal)) {
            fg.c("Invalid callback params");
            return null;
        }
        zzal zzalVar = (zzal) zzaoVarZza2;
        if (!zzalVar.zzj(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)) {
            fg.c("Undefined rule type");
            return null;
        }
        this.d.zza(strZzc, zzalVar.zzj("priority") ? zzh.zzg(zzalVar.zzk("priority").zzd().doubleValue()) : 1000, (zzan) zzaoVarZza, zzalVar.zzk(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY).zzc());
        return zzao.zzf;
    }
}
