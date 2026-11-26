package defpackage;

import com.google.android.gms.internal.play_billing.c;
import com.google.android.gms.internal.play_billing.d;
import com.google.android.gms.internal.play_billing.e;
import com.google.android.gms.internal.play_billing.m;
import com.google.android.gms.internal.play_billing.zzcu;
import com.google.android.gms.internal.play_billing.zzdk;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class r5b implements Runnable {
    public l6b b;

    @Override // java.lang.Runnable
    public final void run() {
        zzdk zzdkVar;
        e eVar;
        l6b l6bVar = this.b;
        if (l6bVar == null || (zzdkVar = l6bVar.i) == null) {
            return;
        }
        this.b = null;
        if (zzdkVar.isDone()) {
            Object obj = l6bVar.b;
            if (obj == null) {
                if (zzdkVar.isDone()) {
                    if (m.h.f(l6bVar, null, zzcu.g(zzdkVar))) {
                        zzcu.i(l6bVar);
                        return;
                    }
                    return;
                }
                d dVar = new d(l6bVar, zzdkVar);
                if (m.h.f(l6bVar, null, dVar)) {
                    try {
                        zzdkVar.zzb(dVar, j3b.zza);
                        return;
                    } catch (Throwable th) {
                        try {
                            eVar = new e(th);
                        } catch (Error | Exception unused) {
                            eVar = e.b;
                        }
                        m.h.f(l6bVar, dVar, eVar);
                        return;
                    }
                }
                obj = l6bVar.b;
            }
            if (obj instanceof c) {
                zzdkVar.cancel(((c) obj).a);
                return;
            }
            return;
        }
        try {
            ScheduledFuture scheduledFuture = l6bVar.j;
            l6bVar.j = null;
            String str = "Timed out";
            if (scheduledFuture != null) {
                try {
                    long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                    if (jAbs > 10) {
                        str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                    }
                } catch (Throwable th2) {
                    if (m.h.f(l6bVar, null, new e(new y5b(str)))) {
                        zzcu.i(l6bVar);
                    }
                    throw th2;
                }
            }
            if (m.h.f(l6bVar, null, new e(new y5b(str + ": " + zzdkVar.toString())))) {
                zzcu.i(l6bVar);
            }
            zzdkVar.cancel(true);
        } catch (Throwable th3) {
            zzdkVar.cancel(true);
            throw th3;
        }
    }
}
