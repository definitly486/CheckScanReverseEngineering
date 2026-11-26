package defpackage;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzdd;

/* JADX INFO: loaded from: classes4.dex */
public final class pbb extends cbb {
    public final /* synthetic */ Bundle f;
    public final /* synthetic */ Activity g;
    public final /* synthetic */ vcb h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pbb(vcb vcbVar, Bundle bundle, Activity activity) {
        super(vcbVar.b, true);
        this.f = bundle;
        this.g = activity;
        this.h = vcbVar;
    }

    @Override // defpackage.cbb
    public final void a() {
        Bundle bundle;
        Bundle bundle2 = this.f;
        if (bundle2 != null) {
            bundle = new Bundle();
            if (bundle2.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = bundle2.get("com.google.app_measurement.screen_service");
                if (obj instanceof Bundle) {
                    bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                }
            }
        } else {
            bundle = null;
        }
        zzcp zzcpVar = (zzcp) Preconditions.checkNotNull(this.h.b.h);
        Activity activity = this.g;
        zzcpVar.onActivityCreatedByScionActivityInfo(zzdd.zza(activity), bundle, this.c);
    }
}
