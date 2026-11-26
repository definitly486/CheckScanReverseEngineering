package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class s5c implements Runnable {
    public final /* synthetic */ zzr b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ zzbh d;
    public final /* synthetic */ zznl e;

    public s5c(zznl zznlVar, zzr zzrVar, boolean z, zzbh zzbhVar) {
        this.b = zzrVar;
        this.c = z;
        this.d = zzbhVar;
        this.e = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.e;
        zzgb zzgbVar = zznlVar.d;
        if (zzgbVar == null) {
            u4.e(zznlVar.a, "Discarding data. Failed to send event to service");
            return;
        }
        zzr zzrVar = this.b;
        Preconditions.checkNotNull(zzrVar);
        zznlVar.k(zzgbVar, this.c ? null : this.d, zzrVar);
        zznlVar.g();
    }
}
