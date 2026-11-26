package com.google.android.gms.internal.measurement;

import defpackage.jn2;
import defpackage.kd8;
import defpackage.lcc;
import defpackage.mcc;
import defpackage.ncc;
import defpackage.nd5;
import defpackage.sxb;
import defpackage.xr4;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqi implements zzqm {
    public static boolean d;
    public final kd8 a;
    public final int b = Math.max(5, 10);
    public final ncc c = ncc.b;

    public zzqi(kd8 kd8Var, int i) {
        this.a = kd8Var;
    }

    @Override // com.google.android.gms.internal.measurement.zzqm
    public final void zza() {
        synchronized (zzqi.class) {
            try {
                if (!d) {
                    mcc mccVar = new mcc(this);
                    long j = this.b;
                    TimeUnit timeUnit = TimeUnit.MINUTES;
                    xr4 xr4Var = (xr4) this.a.get2();
                    nd5.b.a aVarSchedule = xr4Var.schedule((Runnable) new lcc(this, mccVar, xr4Var, j), j, timeUnit);
                    aVarSchedule.addListener(new sxb(aVarSchedule, 1), jn2.INSTANCE);
                    d = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
