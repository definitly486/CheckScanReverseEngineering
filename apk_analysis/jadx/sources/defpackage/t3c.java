package defpackage;

import com.google.android.gms.measurement.internal.zzlu;
import com.google.android.gms.measurement.internal.zzmb;
import com.google.android.gms.measurement.internal.zznl;

/* JADX INFO: loaded from: classes4.dex */
public final class t3c implements Runnable {
    public final /* synthetic */ zzlu b;
    public final /* synthetic */ long c;
    public final /* synthetic */ zzmb d;

    public t3c(zzmb zzmbVar, zzlu zzluVar, long j) {
        this.b = zzluVar;
        this.c = j;
        this.d = zzmbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j = this.c;
        zzmb zzmbVar = this.d;
        zzmbVar.e(this.b, false, j);
        zzmbVar.e = null;
        zznl zznlVarZzt = zzmbVar.a.zzt();
        zznlVarZzt.zzg();
        zznlVarZzt.a();
        zznlVarZzt.h(new dyb(zznlVarZzt, (zzlu) null));
    }
}
