package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzah;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzpl;
import com.google.android.gms.measurement.internal.zzpp;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes4.dex */
public final class ozb implements Runnable {
    public final /* synthetic */ Bundle b;
    public final /* synthetic */ zzlj c;

    public ozb(zzlj zzljVar, Bundle bundle) {
        this.b = bundle;
        this.c = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.c;
        zzljVar.zzg();
        zzljVar.a();
        Bundle bundle = this.b;
        Preconditions.checkNotNull(bundle);
        String strCheckNotEmpty = Preconditions.checkNotEmpty(bundle.getString("name"));
        zzic zzicVar = zzljVar.a;
        if (!zzicVar.zzB()) {
            zzicVar.zzaW().zzk().zza("Conditional property not cleared since app measurement is disabled");
            return;
        }
        zzpl zzplVar = new zzpl(0L, null, strCheckNotEmpty, "");
        try {
            zzpp zzppVarZzk = zzicVar.zzk();
            bundle.getString(CommonUrlParts.APP_ID);
            zzicVar.zzt().l(new zzah(bundle.getString(CommonUrlParts.APP_ID), "", zzplVar, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), bundle.getBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzppVarZzk.D(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), "", bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), 0L, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
