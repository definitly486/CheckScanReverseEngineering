package com.google.android.gms.internal.measurement;

import defpackage.ah;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzw extends zzai {
    public final zzj d;
    public final HashMap e;

    public zzw(zzj zzjVar) {
        super("require");
        this.e = new HashMap();
        this.d = zzjVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao zza(zzg zzgVar, List list) {
        zzao zzaoVar;
        zzh.zza("require", 1, list);
        String strZzc = zzgVar.zza((zzao) list.get(0)).zzc();
        HashMap map = this.e;
        if (map.containsKey(strZzc)) {
            return (zzao) map.get(strZzc);
        }
        HashMap map2 = this.d.a;
        if (map2.containsKey(strZzc)) {
            try {
                zzaoVar = (zzao) ((Callable) map2.get(strZzc)).call();
            } catch (Exception unused) {
                ah.f("Failed to create API implementation: ".concat(String.valueOf(strZzc)));
                return null;
            }
        } else {
            zzaoVar = zzao.zzf;
        }
        if (zzaoVar instanceof zzai) {
            map.put(strZzc, (zzai) zzaoVar);
        }
        return zzaoVar;
    }
}
