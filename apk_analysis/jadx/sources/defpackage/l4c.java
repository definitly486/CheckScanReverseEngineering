package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzr;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class l4c implements Runnable {
    public final /* synthetic */ AtomicReference b;
    public final /* synthetic */ zzr c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ zznl e;

    public l4c(zznl zznlVar, AtomicReference atomicReference, zzr zzrVar, boolean z) {
        this.b = atomicReference;
        this.c = zzrVar;
        this.d = z;
        this.e = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2 = this.b;
        synchronized (atomicReference2) {
            try {
                try {
                    zznl zznlVar = this.e;
                    zzgb zzgbVar = zznlVar.d;
                    if (zzgbVar == null) {
                        zznlVar.a.zzaW().zzb().zza("Failed to get all user properties; not connected to service");
                        atomicReference2.notify();
                        return;
                    }
                    zzr zzrVar = this.c;
                    Preconditions.checkNotNull(zzrVar);
                    atomicReference2.set(zzgbVar.zzj(zzrVar, this.d));
                    zznlVar.g();
                    atomicReference = this.b;
                    atomicReference.notify();
                } catch (RemoteException e) {
                    this.e.a.zzaW().zzb().zzb("Failed to get all user properties; remote exception", e);
                    atomicReference = this.b;
                }
            } catch (Throwable th) {
                this.b.notify();
                throw th;
            }
        }
    }
}
