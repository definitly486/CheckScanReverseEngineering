package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzr;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class q5c implements Runnable {
    public final /* synthetic */ zzr b;
    public final /* synthetic */ zznl c;

    public q5c(zznl zznlVar, zzr zzrVar) {
        this.b = zzrVar;
        Objects.requireNonNull(zznlVar);
        this.c = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.c;
        zzgb zzgbVar = zznlVar.d;
        zzic zzicVar = zznlVar.a;
        if (zzgbVar == null) {
            u4.e(zzicVar, "Failed to send consent settings to service");
            return;
        }
        try {
            zzr zzrVar = this.b;
            Preconditions.checkNotNull(zzrVar);
            zzgbVar.zzv(zzrVar);
            zznlVar.g();
        } catch (RemoteException e) {
            zzicVar.zzaW().zzb().zzb("Failed to send consent settings to the service", e);
        }
    }
}
