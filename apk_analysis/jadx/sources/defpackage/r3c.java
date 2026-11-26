package defpackage;

import com.google.android.gms.measurement.internal.zzmb;

/* JADX INFO: loaded from: classes4.dex */
public final class r3c implements Runnable {
    public final /* synthetic */ long b;
    public final /* synthetic */ zzmb c;

    public r3c(zzmb zzmbVar, long j) {
        this.b = j;
        this.c = zzmbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzmb zzmbVar = this.c;
        zzmbVar.a.zzw().zzc(this.b);
        zzmbVar.e = null;
    }
}
