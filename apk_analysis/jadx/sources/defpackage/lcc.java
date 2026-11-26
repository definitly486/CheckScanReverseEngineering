package defpackage;

import com.google.android.gms.internal.measurement.zzqi;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class lcc implements Runnable {
    public final /* synthetic */ mcc b;
    public final /* synthetic */ xr4 c;
    public final /* synthetic */ long d;

    public lcc(zzqi zzqiVar, mcc mccVar, xr4 xr4Var, long j) {
        this.b = mccVar;
        this.c = xr4Var;
        this.d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.run();
        nd5.b.a aVarSchedule = this.c.schedule((Runnable) this, this.d, TimeUnit.MINUTES);
        aVarSchedule.addListener(new sxb(aVarSchedule, 1), jn2.INSTANCE);
    }
}
