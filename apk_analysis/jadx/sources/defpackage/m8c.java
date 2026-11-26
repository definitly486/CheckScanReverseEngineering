package defpackage;

import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzoc;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class m8c implements Runnable {
    public final long b;
    public final long c;
    public final /* synthetic */ bm2 d;

    public m8c(bm2 bm2Var, long j, long j2) {
        Objects.requireNonNull(bm2Var);
        this.d = bm2Var;
        this.b = j;
        this.c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((zzoc) this.d.b).a.zzaX().zzj(new Runnable() { // from class: j8c
            @Override // java.lang.Runnable
            public final void run() {
                m8c m8cVar = this.b;
                zzoc zzocVar = (zzoc) m8cVar.d.b;
                zzocVar.zzg();
                zzic zzicVar = zzocVar.a;
                zzicVar.zzaW().zzj().zza("Application going to the background");
                zzicVar.zzd().s.zzb(true);
                zzocVar.zzg();
                zzocVar.d = true;
                if (!zzicVar.zzc().zzv()) {
                    long j = m8cVar.c;
                    c9c c9cVar = zzocVar.f;
                    c9cVar.a(j, false, false);
                    c9cVar.c.c();
                }
                zzicVar.zzaW().zzi().zzb("Application backgrounded at: timestamp_millis", Long.valueOf(m8cVar.b));
                zzlj zzljVarZzj = zzicVar.zzj();
                zzljVarZzj.zzg();
                zzic zzicVar2 = zzljVarZzj.a;
                zzljVarZzj.a();
                zznl zznlVarZzt = zzicVar2.zzt();
                zznlVarZzt.zzg();
                zznlVarZzt.a();
                if (!zznlVarZzt.c() || zznlVarZzt.a.zzk().zzak() >= 242600) {
                    zznl zznlVarZzt2 = zzicVar2.zzt();
                    zznlVarZzt2.zzg();
                    zznlVarZzt2.a();
                    zznlVarZzt2.h(new xxb(zznlVarZzt2, zznlVarZzt2.j(true)));
                }
                if (zzicVar.zzc().zzp(null, zzfy.zzaN)) {
                    long jZzl = zzicVar.zzk().B(zzicVar.zzaZ().getPackageName(), zzicVar.zzc().zzz()) ? 1000L : zzicVar.zzc().zzl(zzicVar.zzaZ().getPackageName(), zzfy.zzD);
                    zzicVar.zzaW().zzk().zzb("[sgtm] Scheduling batch upload with minimum latency in millis", Long.valueOf(jZzl));
                    zzicVar.zzx().zzh(jZzl);
                }
            }
        });
    }
}
