package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlu;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class dyb implements Runnable {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public dyb(zznl zznlVar, zzlu zzluVar) {
        this.c = zzluVar;
        Objects.requireNonNull(zznlVar);
        this.d = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                k1c k1cVar = (k1c) this.d;
                synchronized (k1cVar.c) {
                    try {
                        OnFailureListener onFailureListener = k1cVar.d;
                        if (onFailureListener != null) {
                            onFailureListener.onFailure((Exception) Preconditions.checkNotNull(((Task) this.c).getException()));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            default:
                zznl zznlVar = (zznl) this.d;
                zzgb zzgbVar = zznlVar.d;
                zzic zzicVar = zznlVar.a;
                if (zzgbVar == null) {
                    u4.e(zzicVar, "Failed to send current screen to service");
                    return;
                }
                try {
                    zzlu zzluVar = (zzlu) this.c;
                    if (zzluVar == null) {
                        zzgbVar.zzl(0L, null, null, zzicVar.zzaZ().getPackageName());
                    } else {
                        zzgbVar.zzl(zzluVar.zzc, zzluVar.zza, zzluVar.zzb, zzicVar.zzaZ().getPackageName());
                    }
                    zznlVar.g();
                    return;
                } catch (RemoteException e) {
                    zznlVar.a.zzaW().zzb().zzb("Failed to send current screen to the service", e);
                    return;
                }
        }
    }

    public dyb(k1c k1cVar, Task task) {
        this.c = task;
        this.d = k1cVar;
    }
}
