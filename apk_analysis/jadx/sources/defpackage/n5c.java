package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class n5c implements Runnable {
    public final /* synthetic */ zzr b;
    public final /* synthetic */ zznl c;

    public n5c(zznl zznlVar, zzr zzrVar) {
        this.b = zzrVar;
        this.c = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.c;
        zzic zzicVar = zznlVar.a;
        zzgb zzgbVar = zznlVar.d;
        if (zzgbVar == null) {
            u4.e(zzicVar, "Failed to send measurementEnabled to service");
            return;
        }
        try {
            zzr zzrVar = this.b;
            Preconditions.checkNotNull(zzrVar);
            zzgbVar.zzi(zzrVar);
            zznlVar.g();
        } catch (RemoteException e) {
            zzicVar.zzaW().zzb().zzb("Failed to send measurementEnabled to the service", e);
        }
    }
}
