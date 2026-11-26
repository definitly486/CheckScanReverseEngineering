package defpackage;

import com.google.android.gms.internal.measurement.zzcs;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zznl;

/* JADX INFO: loaded from: classes4.dex */
public final class cyb implements Runnable {
    public final /* synthetic */ zzcs b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ AppMeasurementDynamiteService f;

    public cyb(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcs zzcsVar, String str, String str2, boolean z) {
        this.b = zzcsVar;
        this.c = str;
        this.d = str2;
        this.e = z;
        this.f = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVarZzt = this.f.a.zzt();
        zznlVarZzt.zzg();
        zznlVarZzt.a();
        zznlVarZzt.h(new j4c(zznlVarZzt, this.c, this.d, zznlVarZzt.j(false), this.e, this.b));
    }
}
