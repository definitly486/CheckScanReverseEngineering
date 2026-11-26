package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcy;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjq;

/* JADX INFO: loaded from: classes4.dex */
public final class dcc implements zzjq {
    public final zzcy a;
    public final /* synthetic */ AppMeasurementDynamiteService b;

    public dcc(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcy zzcyVar) {
        this.b = appMeasurementDynamiteService;
        this.a = zzcyVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjq
    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        try {
            this.a.zze(str, str2, bundle, j);
        } catch (RemoteException e) {
            zzic zzicVar = this.b.a;
            if (zzicVar != null) {
                zzicVar.zzaW().zze().zzb("Event listener threw exception", e);
            }
        }
    }
}
