package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class t4c implements Runnable {
    public final /* synthetic */ zzr b;
    public final /* synthetic */ zznl c;

    public t4c(zznl zznlVar, zzr zzrVar) {
        this.b = zzrVar;
        this.c = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.c;
        zzic zzicVar = zznlVar.a;
        zzgb zzgbVar = zznlVar.d;
        if (zzgbVar == null) {
            u4.e(zzicVar, "Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            zzr zzrVar = this.b;
            Preconditions.checkNotNull(zzrVar);
            zzgbVar.zzt(zzrVar);
        } catch (RemoteException e) {
            zzicVar.zzaW().zzb().zzb("Failed to reset data on the service: remote exception", e);
        }
        zznlVar.g();
    }
}
