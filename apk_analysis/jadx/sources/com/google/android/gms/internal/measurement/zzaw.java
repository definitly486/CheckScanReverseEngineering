package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaw {
    public final HashMap a = new HashMap();
    public final zzbi b = new zzbi();

    public zzaw() {
        a(new zzau());
        a(new zzax());
        a(new zzay());
        a(new zzbb());
        a(new zzbg());
        a(new zzbh());
        a(new zzbj());
    }

    public final void a(zzav zzavVar) {
        Iterator it = zzavVar.a.iterator();
        while (it.hasNext()) {
            this.a.put(((zzbk) it.next()).zzb().toString(), zzavVar);
        }
    }

    public final zzao zzb(zzg zzgVar, zzao zzaoVar) {
        zzh.zzl(zzgVar);
        if (!(zzaoVar instanceof zzap)) {
            return zzaoVar;
        }
        zzap zzapVar = (zzap) zzaoVar;
        ArrayList arrayListZzg = zzapVar.zzg();
        String strZzb = zzapVar.zzb();
        HashMap map = this.a;
        return (map.containsKey(strZzb) ? (zzav) map.get(strZzb) : this.b).zza(strZzb, zzgVar, arrayListZzg);
    }
}
