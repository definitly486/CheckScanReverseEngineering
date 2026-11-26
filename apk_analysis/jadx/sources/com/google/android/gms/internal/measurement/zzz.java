package com.google.android.gms.internal.measurement;

import defpackage.ah;
import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzz {
    public final TreeMap a = new TreeMap();
    public final TreeMap b = new TreeMap();

    public final void zza(String str, int i, zzan zzanVar, String str2) {
        TreeMap treeMap;
        if ("create".equals(str2)) {
            treeMap = this.b;
        } else {
            if (!"edit".equals(str2)) {
                ah.f("Unknown callback type: ".concat(String.valueOf(str2)));
                return;
            }
            treeMap = this.a;
        }
        if (treeMap.containsKey(Integer.valueOf(i))) {
            i = ((Integer) treeMap.lastKey()).intValue() + 1;
        }
        treeMap.put(Integer.valueOf(i), zzanVar);
    }

    public final void zzb(zzg zzgVar, zzab zzabVar) {
        zzl zzlVar = new zzl(zzabVar);
        TreeMap treeMap = this.a;
        for (Integer num : treeMap.keySet()) {
            zzaa zzaaVarClone = zzabVar.zzc().clone();
            zzao zzaoVarZza = ((zzan) treeMap.get(num)).zza(zzgVar, Collections.singletonList(zzlVar));
            int iZzg = zzaoVarZza instanceof zzah ? zzh.zzg(zzaoVarZza.zzd().doubleValue()) : -1;
            if (iZzg == 2 || iZzg == -1) {
                zzabVar.zzd(zzaaVarClone);
            }
        }
        TreeMap treeMap2 = this.b;
        Iterator it = treeMap2.keySet().iterator();
        while (it.hasNext()) {
            zzao zzaoVarZza2 = ((zzan) treeMap2.get((Integer) it.next())).zza(zzgVar, Collections.singletonList(zzlVar));
            if (zzaoVarZza2 instanceof zzah) {
                zzh.zzg(zzaoVarZza2.zzd().doubleValue());
            }
        }
    }
}
