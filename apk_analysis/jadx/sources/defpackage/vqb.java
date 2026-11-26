package defpackage;

import com.google.android.gms.internal.measurement.zzbm;
import com.google.android.gms.internal.measurement.zzcs;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzjd;
import com.google.android.gms.measurement.internal.zzpg;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class vqb implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ zzbm d;

    public /* synthetic */ vqb(zzbm zzbmVar, Object obj, int i) {
        this.b = i;
        this.c = obj;
        this.d = zzbmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        zzbm zzbmVar = this.d;
        switch (i) {
            case 0:
                zzpg zzpgVar = ((zzjd) zzbmVar).a;
                zzpgVar.Q();
                zzpgVar.T((zzr) obj);
                break;
            default:
                AppMeasurementDynamiteService appMeasurementDynamiteService = (AppMeasurementDynamiteService) zzbmVar;
                appMeasurementDynamiteService.a.zzk().zzas((zzcs) obj, appMeasurementDynamiteService.a.zzA());
                break;
        }
    }
}
