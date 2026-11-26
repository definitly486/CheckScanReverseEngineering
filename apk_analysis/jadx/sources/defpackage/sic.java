package defpackage;

import com.google.android.gms.internal.measurement.zzyl;
import com.google.android.gms.internal.measurement.zzzm;
import com.google.android.gms.internal.measurement.zzzo;
import com.google.android.gms.internal.measurement.zzzp;
import com.google.android.gms.internal.measurement.zzzq;
import com.google.android.gms.internal.measurement.zzzt;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class sic extends zzzq {
    public final HashMap a;
    public final HashMap b;
    public final tic c;
    public final zzzo d;

    public /* synthetic */ sic(zzzm zzzmVar) {
        HashMap map = new HashMap();
        this.a = map;
        HashMap map2 = new HashMap();
        this.b = map2;
        map.putAll(zzzmVar.a);
        map2.putAll(zzzmVar.b);
        this.c = zzzt.a;
        this.d = zzzmVar.c;
    }

    @Override // com.google.android.gms.internal.measurement.zzzq
    public final void a(zzyl zzylVar, Object obj, Object obj2) {
        zzzp zzzpVar = (zzzp) this.a.get(zzylVar);
        if (zzzpVar != null) {
            zzzpVar.zza(zzylVar, obj, obj2);
        } else {
            this.c.zza(zzylVar, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzq
    public final void b(zzyl zzylVar, Iterator it, Object obj) {
        zzzo zzzoVar = (zzzo) this.b.get(zzylVar);
        if (zzzoVar != null) {
            zzzoVar.zza(zzylVar, it, obj);
            return;
        }
        zzzo zzzoVar2 = this.d;
        if (zzzoVar2 != null && !this.a.containsKey(zzylVar)) {
            zzzoVar2.zza(zzylVar, it, obj);
        } else {
            while (it.hasNext()) {
                a(zzylVar, it.next(), obj);
            }
        }
    }
}
