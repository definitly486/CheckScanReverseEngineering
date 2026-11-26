package defpackage;

import com.google.android.gms.measurement.internal.zzlu;
import com.google.android.gms.measurement.internal.zzmb;

/* JADX INFO: loaded from: classes4.dex */
public final class k3c implements Runnable {
    public final /* synthetic */ zzlu b;
    public final /* synthetic */ zzlu c;
    public final /* synthetic */ long d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ zzmb f;

    public k3c(zzmb zzmbVar, zzlu zzluVar, zzlu zzluVar2, long j, boolean z) {
        this.b = zzluVar;
        this.c = zzluVar2;
        this.d = j;
        this.e = z;
        this.f = zzmbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f.c(this.b, this.c, this.d, this.e, null);
    }
}
