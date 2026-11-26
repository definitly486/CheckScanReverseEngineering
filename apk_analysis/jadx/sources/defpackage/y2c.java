package defpackage;

import com.google.android.gms.internal.measurement.zzlk;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y2c implements kd8 {
    public static final /* synthetic */ y2c b = new y2c();

    @Override // defpackage.kd8
    /* JADX INFO: renamed from: get */
    public final Object get2() {
        Object obj = zzlk.j;
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(v2c.b);
        return scheduledExecutorServiceNewSingleThreadScheduledExecutor instanceof xr4 ? (xr4) scheduledExecutorServiceNewSingleThreadScheduledExecutor : new nd5.b(scheduledExecutorServiceNewSingleThreadScheduledExecutor);
    }
}
