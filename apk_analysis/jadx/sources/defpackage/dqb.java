package defpackage;

import com.google.android.gms.internal.measurement.zzcs;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* JADX INFO: loaded from: classes4.dex */
public final class dqb implements Runnable {
    public final /* synthetic */ zzcs b;
    public final /* synthetic */ AppMeasurementDynamiteService c;

    public dqb(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcs zzcsVar) {
        this.b = zzcsVar;
        this.c = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.c.a.zzt().zzD(this.b);
    }
}
