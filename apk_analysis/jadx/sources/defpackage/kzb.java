package defpackage;

import android.content.ComponentName;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzah;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zznf;
import com.google.android.gms.measurement.internal.zzpl;
import com.google.android.gms.measurement.internal.zzpp;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes4.dex */
public final class kzb implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ kzb(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj2;
        this.d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                zzlj zzljVar = (zzlj) obj2;
                zzljVar.zzg();
                zzljVar.a();
                Bundle bundle = (Bundle) obj;
                Preconditions.checkNotNull(bundle);
                String string = bundle.getString("name");
                String string2 = bundle.getString("origin");
                Preconditions.checkNotEmpty(string);
                Preconditions.checkNotEmpty(string2);
                Preconditions.checkNotNull(bundle.get("value"));
                zzic zzicVar = zzljVar.a;
                if (!zzicVar.zzB()) {
                    zzicVar.zzaW().zzk().zza("Conditional property not set since app measurement is disabled");
                } else {
                    zzpl zzplVar = new zzpl(bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP), bundle.get("value"), string, string2);
                    try {
                        zzpp zzppVarZzk = zzicVar.zzk();
                        bundle.getString(CommonUrlParts.APP_ID);
                        zzbh zzbhVarD = zzppVarZzk.D(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS), string2, 0L, 0L, true);
                        zzpp zzppVarZzk2 = zzicVar.zzk();
                        bundle.getString(CommonUrlParts.APP_ID);
                        zzbh zzbhVarD2 = zzppVarZzk2.D(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS), string2, 0L, 0L, true);
                        zzpp zzppVarZzk3 = zzicVar.zzk();
                        bundle.getString(CommonUrlParts.APP_ID);
                        zzicVar.zzt().l(new zzah(bundle.getString(CommonUrlParts.APP_ID), string2, zzplVar, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), false, bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), zzbhVarD2, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), zzbhVarD, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzppVarZzk3.D(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), string2, 0L, 0L, true)));
                    } catch (IllegalArgumentException unused) {
                        return;
                    }
                }
                break;
            default:
                ((zznf) obj2).d.e((ComponentName) obj);
                break;
        }
    }
}
