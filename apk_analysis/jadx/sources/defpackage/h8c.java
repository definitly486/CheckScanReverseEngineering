package defpackage;

import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzoc;

/* JADX INFO: loaded from: classes4.dex */
public final class h8c implements Runnable {
    public final /* synthetic */ long b;
    public final /* synthetic */ zzoc c;

    public h8c(zzoc zzocVar, long j) {
        this.b = j;
        this.c = zzocVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzoc zzocVar = this.c;
        zzocVar.zzg();
        zzocVar.b();
        zzic zzicVar = zzocVar.a;
        zzgs zzgsVarZzk = zzicVar.zzaW().zzk();
        long j = this.b;
        zzgsVarZzk.zzb("Activity paused, time", Long.valueOf(j));
        bm2 bm2Var = zzocVar.g;
        zzoc zzocVar2 = (zzoc) bm2Var.b;
        m8c m8cVar = new m8c(bm2Var, zzocVar2.a.zzba().currentTimeMillis(), j);
        bm2Var.a = m8cVar;
        zzocVar2.c.postDelayed(m8cVar, 2000L);
        if (zzicVar.zzc().zzv()) {
            zzocVar.f.c.c();
        }
    }
}
