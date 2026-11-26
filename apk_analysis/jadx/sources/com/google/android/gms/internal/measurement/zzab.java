package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzab {
    public zzaa a;
    public zzaa b;
    public final ArrayList c;

    public zzab() {
        this.a = new zzaa("", 0L, null);
        this.b = new zzaa("", 0L, null);
        this.c = new ArrayList();
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        zzab zzabVar = new zzab(this.a.clone());
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            zzabVar.c.add(((zzaa) it.next()).clone());
        }
        return zzabVar;
    }

    public final zzaa zza() {
        return this.a;
    }

    public final void zzb(zzaa zzaaVar) {
        this.a = zzaaVar;
        this.b = zzaaVar.clone();
        this.c.clear();
    }

    public final zzaa zzc() {
        return this.b;
    }

    public final void zzd(zzaa zzaaVar) {
        this.b = zzaaVar;
    }

    public final void zze(String str, long j, Map map) {
        HashMap map2 = new HashMap();
        for (String str2 : map.keySet()) {
            map2.put(str2, zzaa.zzh(str2, this.a.zze(str2), map.get(str2)));
        }
        this.c.add(new zzaa(str, j, map2));
    }

    public final List zzf() {
        return this.c;
    }

    public zzab(zzaa zzaaVar) {
        this.a = zzaaVar;
        this.b = zzaaVar.clone();
        this.c = new ArrayList();
    }
}
