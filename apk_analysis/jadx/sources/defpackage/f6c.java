package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zznf;
import com.google.android.gms.measurement.internal.zznl;

/* JADX INFO: loaded from: classes4.dex */
public final class f6c implements Runnable {
    public final /* synthetic */ zzgb b;
    public final /* synthetic */ zznf c;

    public f6c(zznf zznfVar, zzgb zzgbVar) {
        this.b = zzgbVar;
        this.c = zznfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznf zznfVar = this.c;
        synchronized (zznfVar) {
            try {
                zznfVar.b = false;
                zznl zznlVar = zznfVar.d;
                if (!zznlVar.zzh()) {
                    zznlVar.a.zzaW().zzk().zza("Connected to service");
                    zzgb zzgbVar = this.b;
                    zznlVar.zzg();
                    Preconditions.checkNotNull(zzgbVar);
                    zznlVar.d = zzgbVar;
                    zznlVar.g();
                    zznlVar.i();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
