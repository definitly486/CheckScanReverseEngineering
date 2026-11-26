package defpackage;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* JADX INFO: loaded from: classes4.dex */
public final class j1c implements Runnable {
    public final /* synthetic */ dbc b;
    public final /* synthetic */ AppMeasurementDynamiteService c;

    public j1c(AppMeasurementDynamiteService appMeasurementDynamiteService, dbc dbcVar) {
        this.b = dbcVar;
        this.c = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.c.a.zzj().zzU(this.b);
    }
}
