package defpackage;

import com.google.android.gms.internal.measurement.zzcs;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzbh;

/* JADX INFO: loaded from: classes4.dex */
public final class sub implements Runnable {
    public final /* synthetic */ zzcs b;
    public final /* synthetic */ zzbh c;
    public final /* synthetic */ String d;
    public final /* synthetic */ AppMeasurementDynamiteService e;

    public sub(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcs zzcsVar, zzbh zzbhVar, String str) {
        this.b = zzcsVar;
        this.c = zzbhVar;
        this.d = str;
        this.e = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e.a.zzt().zzN(this.b, this.c, this.d);
    }
}
