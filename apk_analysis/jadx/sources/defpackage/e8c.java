package defpackage;

import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzoc;

/* JADX INFO: loaded from: classes4.dex */
public final class e8c implements Runnable {
    public final /* synthetic */ long b;
    public final /* synthetic */ zzoc c;

    public e8c(zzoc zzocVar, long j) {
        this.b = j;
        this.c = zzocVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzoc zzocVar = this.c;
        c9c c9cVar = zzocVar.f;
        zzocVar.zzg();
        zzocVar.b();
        zzic zzicVar = zzocVar.a;
        zzgs zzgsVarZzk = zzicVar.zzaW().zzk();
        long j = this.b;
        zzgsVarZzk.zzb("Activity resumed, time", Long.valueOf(j));
        if (zzicVar.zzc().zzp(null, zzfy.zzaS)) {
            if (zzicVar.zzc().zzv() || zzocVar.d) {
                c9cVar.d.zzg();
                c9cVar.c.c();
                c9cVar.a = j;
                c9cVar.b = j;
            }
        } else if (zzicVar.zzc().zzv() || zzicVar.zzd().s.zza()) {
            c9cVar.d.zzg();
            c9cVar.c.c();
            c9cVar.a = j;
            c9cVar.b = j;
        }
        bm2 bm2Var = zzocVar.g;
        zzoc zzocVar2 = (zzoc) bm2Var.b;
        zzocVar2.zzg();
        m8c m8cVar = (m8c) bm2Var.a;
        if (m8cVar != null) {
            zzocVar2.c.removeCallbacks(m8cVar);
        }
        zzocVar2.a.zzd().s.zzb(false);
        zzocVar2.zzg();
        zzocVar2.d = false;
        f9c f9cVar = zzocVar.e;
        zzoc zzocVar3 = f9cVar.a;
        zzocVar3.zzg();
        zzic zzicVar2 = zzocVar3.a;
        if (zzicVar2.zzB()) {
            f9cVar.b(zzicVar2.zzba().currentTimeMillis(), zzicVar2.zzc().zzp(null, zzfy.zzbe) ? zzicVar2.zzba().elapsedRealtime() : 0L);
        }
    }
}
