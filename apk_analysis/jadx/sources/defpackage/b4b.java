package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.play_billing.zzbh;
import com.google.android.gms.internal.play_billing.zzbj;
import com.google.android.gms.internal.play_billing.zzbo;
import com.google.android.gms.internal.play_billing.zzdd;
import com.google.android.gms.internal.play_billing.zzdk;
import com.google.android.gms.internal.play_billing.zzdq;
import com.google.android.gms.internal.play_billing.zzdr;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzls;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzoo;
import com.google.android.gms.measurement.internal.zzr;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class b4b implements Runnable {
    public final /* synthetic */ int b;
    public final Object c;
    public final Object d;

    public /* synthetic */ b4b(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Throwable thZza;
        int i = this.b;
        boolean z = false;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                zzdd zzddVar = (zzdd) obj;
                zzdk zzdkVar = (zzdk) obj2;
                if ((zzdkVar instanceof zzdq) && (thZza = zzdr.zza((zzdq) zzdkVar)) != null) {
                    zzddVar.zza(thZza);
                    return;
                }
                try {
                    boolean zIsDone = zzdkVar.isDone();
                    Future future = zzdkVar;
                    if (!zIsDone) {
                        throw new IllegalStateException(zzbo.zzb("Future was expected to be done: %s", zzdkVar));
                    }
                    while (true) {
                        try {
                            Object obj3 = future.get();
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            zzddVar.zzb(obj3);
                            return;
                        } catch (InterruptedException unused) {
                            z = true;
                            future = future;
                        } catch (Throwable th) {
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    }
                } catch (ExecutionException e) {
                    zzddVar.zza(e.getCause());
                    return;
                } catch (Throwable th2) {
                    zzddVar.zza(th2);
                    return;
                }
                break;
            default:
                final zznl zznlVarZzt = ((zzlj) obj2).a.zzt();
                final zzoo zzooVarZza = zzoo.zza(zzls.SGTM_CLIENT);
                final AtomicReference atomicReference = (AtomicReference) obj;
                zznlVarZzt.zzg();
                zznlVarZzt.a();
                final zzr zzrVarJ = zznlVarZzt.j(false);
                zznlVarZzt.h(new Runnable() { // from class: i7c
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zznl zznlVar = zznlVarZzt;
                        AtomicReference atomicReference2 = atomicReference;
                        zzr zzrVar = zzrVarJ;
                        zzoo zzooVar = zzooVarZza;
                        synchronized (atomicReference2) {
                            try {
                                zzgb zzgbVar = zznlVar.d;
                                if (zzgbVar == null) {
                                    zznlVar.a.zzaW().zzb().zza("[sgtm] Failed to get upload batches; not connected to service");
                                    return;
                                }
                                Preconditions.checkNotNull(zzrVar);
                                zzgbVar.zzB(zzrVar, zzooVar, new p4c(zznlVar, atomicReference2));
                                zznlVar.g();
                            } catch (RemoteException e2) {
                                zznlVar.a.zzaW().zzb().zzb("[sgtm] Failed to get upload batches; remote exception", e2);
                                atomicReference2.notifyAll();
                            }
                        }
                    }
                });
                return;
        }
    }

    public String toString() {
        switch (this.b) {
            case 0:
                zzbh zzbhVarZza = zzbj.zza(this);
                zzbhVarZza.zza((zzdd) this.d);
                return zzbhVarZza.toString();
            default:
                return super.toString();
        }
    }
}
