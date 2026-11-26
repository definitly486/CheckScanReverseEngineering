package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcy;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjp;

/* JADX INFO: loaded from: classes4.dex */
public final class dbc implements zzjp {
    public final zzcy a;
    public final /* synthetic */ AppMeasurementDynamiteService b;

    public dbc(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcy zzcyVar) {
        this.b = appMeasurementDynamiteService;
        this.a = zzcyVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjp
    public final void interceptEvent(String str, String str2, Bundle bundle, long j) {
        try {
            this.a.zze(str, str2, bundle, j);
        } catch (RemoteException e) {
            zzic zzicVar = this.b.a;
            if (zzicVar != null) {
                zzicVar.zzaW().zze().zzb("Event interceptor threw exception", e);
            }
        }
    }
}
