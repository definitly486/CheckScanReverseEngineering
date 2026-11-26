package com.google.android.gms.internal.measurement;

import defpackage.bj;
import defpackage.fg;
import defpackage.me0;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbi extends zzav {
    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        if (str == null || str.isEmpty() || !zzgVar.zzd(str)) {
            fg.c(bj.c("Command not found: ", str));
            return null;
        }
        zzao zzaoVarZzh = zzgVar.zzh(str);
        if (zzaoVarZzh instanceof zzai) {
            return ((zzai) zzaoVarZzh).zza(zzgVar, list);
        }
        fg.c(me0.c("Function ", str, " is not defined"));
        return null;
    }
}
