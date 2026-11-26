package defpackage;

import com.google.android.gms.measurement.internal.zzah;
import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class krb implements Runnable {
    public final /* synthetic */ zzah b;
    public final /* synthetic */ zzr c;
    public final /* synthetic */ zzjd d;

    public krb(zzjd zzjdVar, zzah zzahVar, zzr zzrVar) {
        this.b = zzahVar;
        this.c = zzrVar;
        this.d = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpg zzpgVar = this.d.a;
        zzpgVar.Q();
        zzah zzahVar = this.b;
        Object objZza = zzahVar.zzc.zza();
        zzr zzrVar = this.c;
        if (objZza == null) {
            zzpgVar.V(zzahVar, zzrVar);
        } else {
            zzpgVar.U(zzahVar, zzrVar);
        }
    }
}
