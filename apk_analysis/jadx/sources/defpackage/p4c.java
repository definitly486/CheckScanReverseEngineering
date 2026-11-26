package defpackage;

import com.google.android.gms.measurement.internal.zzgg;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzoq;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class p4c extends zzgg {
    public final /* synthetic */ AtomicReference a;
    public final /* synthetic */ zznl b;

    public p4c(zznl zznlVar, AtomicReference atomicReference) {
        this.a = atomicReference;
        this.b = zznlVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgh
    public final void zze(zzoq zzoqVar) {
        AtomicReference atomicReference = this.a;
        synchronized (atomicReference) {
            this.b.a.zzaW().zzk().zzb("[sgtm] Got upload batches from service. count", Integer.valueOf(zzoqVar.zza.size()));
            atomicReference.set(zzoqVar);
            atomicReference.notifyAll();
        }
    }
}
