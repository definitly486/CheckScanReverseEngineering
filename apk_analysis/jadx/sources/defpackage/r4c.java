package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzpl;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class r4c implements Runnable {
    public final /* synthetic */ zzr b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ zzpl d;
    public final /* synthetic */ zznl e;

    public r4c(zznl zznlVar, zzr zzrVar, boolean z, zzpl zzplVar) {
        this.b = zzrVar;
        this.c = z;
        this.d = zzplVar;
        this.e = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.e;
        zzgb zzgbVar = zznlVar.d;
        if (zzgbVar == null) {
            u4.e(zznlVar.a, "Discarding data. Failed to set user property");
            return;
        }
        zzr zzrVar = this.b;
        Preconditions.checkNotNull(zzrVar);
        zznlVar.k(zzgbVar, this.c ? null : this.d, zzrVar);
        zznlVar.g();
    }
}
