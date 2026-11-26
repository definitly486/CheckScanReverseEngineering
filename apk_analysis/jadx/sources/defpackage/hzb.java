package defpackage;

import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzoc;
import com.google.android.gms.measurement.internal.zzr;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class hzb implements Runnable {
    public final /* synthetic */ long b;
    public final /* synthetic */ zzlj c;

    public hzb(zzlj zzljVar, long j) {
        this.b = j;
        this.c = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.c;
        zzljVar.zzg();
        zzljVar.a();
        zzic zzicVar = zzljVar.a;
        zzicVar.zzaW().zzj().zza("Resetting analytics data (FE)");
        zzoc zzocVarZzh = zzicVar.zzh();
        zzocVarZzh.zzg();
        c9c c9cVar = zzocVarZzh.f;
        c9cVar.c.c();
        long jElapsedRealtime = c9cVar.d.a.zzba().elapsedRealtime();
        c9cVar.a = jElapsedRealtime;
        c9cVar.b = jElapsedRealtime;
        zzicVar.zzv().c();
        boolean z = !zzicVar.zzB();
        hnb hnbVarZzd = zzicVar.zzd();
        hnbVarZzd.f.zzb(this.b);
        zzic zzicVar2 = hnbVarZzd.a;
        if (!TextUtils.isEmpty(zzicVar2.zzd().v.zza())) {
            hnbVarZzd.v.zzb(null);
        }
        hnbVarZzd.p.zzb(0L);
        hnbVarZzd.q.zzb(0L);
        if (!zzicVar2.zzc().zzt()) {
            hnbVarZzd.h(z);
        }
        hnbVarZzd.w.zzb(null);
        hnbVarZzd.x.zzb(0L);
        hnbVarZzd.y.zzb(null);
        zznl zznlVarZzt = zzicVar.zzt();
        zznlVarZzt.zzg();
        zznlVarZzt.a();
        zzr zzrVarJ = zznlVarZzt.j(false);
        zznlVarZzt.f();
        zznlVarZzt.a.zzm().zzh();
        zznlVarZzt.h(new t4c(zznlVarZzt, zzrVarJ));
        zzicVar.zzh().e.a();
        zzljVar.r = z;
        zzicVar.zzt().zzC(new AtomicReference());
    }
}
