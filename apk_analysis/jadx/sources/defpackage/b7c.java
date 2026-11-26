package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zznf;
import com.google.android.gms.measurement.internal.zznl;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class b7c implements Runnable {
    public final /* synthetic */ ConnectionResult b;
    public final /* synthetic */ zznf c;

    public b7c(zznf zznfVar, ConnectionResult connectionResult) {
        this.b = connectionResult;
        this.c = zznfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.c.d;
        zznlVar.d = null;
        if (this.b.getErrorCode() != 7777) {
            zznlVar.i();
            return;
        }
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = zznlVar.g;
        if (scheduledExecutorServiceNewScheduledThreadPool == null) {
            scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1);
            zznlVar.g = scheduledExecutorServiceNewScheduledThreadPool;
        }
        scheduledExecutorServiceNewScheduledThreadPool.schedule(new Runnable() { // from class: y6c
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                final zznl zznlVar2 = this.b.c.d;
                zznlVar2.a.zzaX().zzj(new Runnable() { // from class: z6c
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zznlVar2.b();
                    }
                });
            }
        }, ((Long) zzfy.zzZ.zzb(null)).longValue(), TimeUnit.MILLISECONDS);
    }
}
