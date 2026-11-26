package defpackage;

import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzpl;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class ltb implements Runnable {
    public final /* synthetic */ zzpl b;
    public final /* synthetic */ zzr c;
    public final /* synthetic */ zzjd d;

    public ltb(zzjd zzjdVar, zzpl zzplVar, zzr zzrVar) {
        this.b = zzplVar;
        this.c = zzrVar;
        this.d = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpg zzpgVar = this.d.a;
        zzpgVar.Q();
        zzpl zzplVar = this.b;
        Object objZza = zzplVar.zza();
        zzr zzrVar = this.c;
        if (objZza == null) {
            zzpgVar.S(zzplVar.zzb, zzrVar);
        } else {
            zzpgVar.R(zzplVar, zzrVar);
        }
    }
}
