package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzhl;

/* JADX INFO: loaded from: classes4.dex */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements zzhl.zza {
    public zzhl b;

    public BroadcastReceiver.PendingResult doGoAsync() {
        return goAsync();
    }

    @Override // com.google.android.gms.measurement.internal.zzhl.zza
    public void doStartService(Context context, Intent intent) {
        WakefulBroadcastReceiver.startWakefulService(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        zzhl zzhlVar = this.b;
        if (zzhlVar == null) {
            zzhlVar = new zzhl(this);
            this.b = zzhlVar;
        }
        zzhlVar.zza(context, intent);
    }
}
