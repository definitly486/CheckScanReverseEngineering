package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zznf;
import com.google.android.gms.measurement.internal.zznl;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class c0c implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ c0c(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj2;
        this.d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                AtomicReference atomicReference = (AtomicReference) this.c;
                synchronized (atomicReference) {
                    try {
                        try {
                            zzlj zzljVar = (zzlj) this.d;
                            atomicReference.set(zzljVar.a.zzc().zzk(zzljVar.a.zzv().zzj(), zzfy.zzab));
                            ((AtomicReference) this.c).notify();
                        } catch (Throwable th) {
                            ((AtomicReference) this.c).notify();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return;
            default:
                zznf zznfVar = (zznf) this.d;
                synchronized (zznfVar) {
                    try {
                        zznfVar.b = false;
                        zznl zznlVar = zznfVar.d;
                        if (!zznlVar.zzh()) {
                            zznlVar.a.zzaW().zzj().zza("Connected to remote service");
                            zzgb zzgbVar = (zzgb) this.c;
                            zznlVar.zzg();
                            Preconditions.checkNotNull(zzgbVar);
                            zznlVar.d = zzgbVar;
                            zznlVar.g();
                            zznlVar.i();
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                    break;
                }
                zznl zznlVar2 = ((zznf) this.d).d;
                ScheduledExecutorService scheduledExecutorService = zznlVar2.g;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                    zznlVar2.g = null;
                    return;
                }
                return;
        }
    }
}
