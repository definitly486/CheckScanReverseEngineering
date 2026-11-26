package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzr;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class v4c implements Runnable {
    public final /* synthetic */ AtomicReference b;
    public final /* synthetic */ zzr c;
    public final /* synthetic */ zznl d;

    public v4c(zznl zznlVar, AtomicReference atomicReference, zzr zzrVar) {
        this.b = atomicReference;
        this.c = zzrVar;
        this.d = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2 = this.b;
        synchronized (atomicReference2) {
            try {
                try {
                    zznl zznlVar = this.d;
                    zzic zzicVar = zznlVar.a;
                    if (zzicVar.zzd().g().zzo(zzjk.ANALYTICS_STORAGE)) {
                        zzgb zzgbVar = zznlVar.d;
                        if (zzgbVar != null) {
                            zzr zzrVar = this.c;
                            Preconditions.checkNotNull(zzrVar);
                            atomicReference2.set(zzgbVar.zzm(zzrVar));
                            String str = (String) atomicReference2.get();
                            if (str != null) {
                                zznlVar.a.zzj().g.set(str);
                                zzicVar.zzd().g.zzb(str);
                            }
                            zznlVar.g();
                            atomicReference = this.b;
                            atomicReference.notify();
                            return;
                        }
                        zzicVar.zzaW().zzb().zza("Failed to get app instance id");
                    } else {
                        zzicVar.zzaW().zzh().zza("Analytics storage consent denied; will not get app instance id");
                        zznlVar.a.zzj().g.set(null);
                        zzicVar.zzd().g.zzb(null);
                        atomicReference2.set(null);
                    }
                    atomicReference2.notify();
                } catch (RemoteException e) {
                    this.d.a.zzaW().zzb().zzb("Failed to get app instance id", e);
                    atomicReference = this.b;
                }
            } catch (Throwable th) {
                this.b.notify();
                throw th;
            }
        }
    }
}
