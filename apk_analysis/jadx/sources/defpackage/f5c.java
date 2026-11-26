package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class f5c implements Runnable {
    public final /* synthetic */ zzr b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ zzbf d;
    public final /* synthetic */ Bundle e;
    public final /* synthetic */ zznl f;

    public f5c(zznl zznlVar, zzr zzrVar, boolean z, zzbf zzbfVar, Bundle bundle) {
        this.b = zzrVar;
        this.c = z;
        this.d = zzbfVar;
        this.e = bundle;
        this.f = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.f;
        zzgb zzgbVar = zznlVar.d;
        zzic zzicVar = zznlVar.a;
        if (zzgbVar == null) {
            u4.e(zzicVar, "Failed to send default event parameters to service");
            return;
        }
        boolean zZzp = zzicVar.zzc().zzp(null, zzfy.zzaW);
        zzr zzrVar = this.b;
        if (zZzp) {
            Preconditions.checkNotNull(zzrVar);
            zznlVar.k(zzgbVar, this.c ? null : this.d, zzrVar);
            return;
        }
        try {
            Preconditions.checkNotNull(zzrVar);
            zzgbVar.zzu(this.e, zzrVar);
            zznlVar.g();
        } catch (RemoteException e) {
            zzicVar.zzaW().zzb().zzb("Failed to send default event parameters to service", e);
        }
    }
}
