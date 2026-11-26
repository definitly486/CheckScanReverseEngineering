package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzan extends zzai implements zzak {
    public final ArrayList d;
    public final ArrayList e;
    public final zzg f;

    public zzan(String str, List list, List list2, zzg zzgVar) {
        super(str);
        this.d = new ArrayList();
        this.f = zzgVar;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.d.add(((zzao) it.next()).zzc());
            }
        }
        this.e = new ArrayList(list2);
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao zza(zzg zzgVar, List list) {
        zzg zzgVarZzc = this.f.zzc();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.d;
            if (i >= arrayList.size()) {
                break;
            }
            if (i < list.size()) {
                zzgVarZzc.zzf((String) arrayList.get(i), zzgVar.zza((zzao) list.get(i)));
            } else {
                zzgVarZzc.zzf((String) arrayList.get(i), zzao.zzf);
            }
            i++;
        }
        for (zzao zzaoVar : this.e) {
            zzao zzaoVarZza = zzgVarZzc.zza(zzaoVar);
            if (zzaoVarZza instanceof zzap) {
                zzaoVarZza = zzgVarZzc.zza(zzaoVar);
            }
            if (zzaoVarZza instanceof zzag) {
                return ((zzag) zzaoVarZza).zzb();
            }
        }
        return zzao.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzai, com.google.android.gms.internal.measurement.zzao
    public final zzao zzt() {
        return new zzan(this);
    }

    public zzan(zzan zzanVar) {
        super(zzanVar.b);
        ArrayList arrayList = new ArrayList(zzanVar.d.size());
        this.d = arrayList;
        arrayList.addAll(zzanVar.d);
        ArrayList arrayList2 = new ArrayList(zzanVar.e.size());
        this.e = arrayList2;
        arrayList2.addAll(zzanVar.e);
        this.f = zzanVar.f;
    }
}
