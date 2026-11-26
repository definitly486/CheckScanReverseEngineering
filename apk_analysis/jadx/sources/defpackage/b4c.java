package defpackage;

import com.google.android.gms.internal.measurement.zzcs;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zznl;

/* JADX INFO: loaded from: classes4.dex */
public final class b4c implements Runnable {
    public final /* synthetic */ zzcs b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ AppMeasurementDynamiteService e;

    public b4c(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcs zzcsVar, String str, String str2) {
        this.b = zzcsVar;
        this.c = str;
        this.d = str2;
        this.e = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVarZzt = this.e.a.zzt();
        zznlVarZzt.zzg();
        zznlVarZzt.a();
        zznlVarZzt.h(new z5c(zznlVarZzt, this.c, this.d, zznlVarZzt.j(false), this.b));
    }
}
