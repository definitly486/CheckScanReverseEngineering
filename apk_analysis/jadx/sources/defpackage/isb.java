package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class isb implements Runnable {
    public final /* synthetic */ zzr b;
    public final /* synthetic */ zzjd c;

    public isb(zzjd zzjdVar, zzr zzrVar) {
        this.b = zzrVar;
        this.c = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpg zzpgVar = this.c.a;
        zzpgVar.Q();
        zzpgVar.zzaX().zzg();
        zzpgVar.Z();
        zzr zzrVar = this.b;
        Preconditions.checkNotEmpty(zzrVar.zza);
        zzpgVar.X(zzrVar);
    }
}
