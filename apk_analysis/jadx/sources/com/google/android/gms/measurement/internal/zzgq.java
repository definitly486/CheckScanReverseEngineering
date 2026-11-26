package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgq {
    public static zzgq d;
    public final zzic a;
    public final TelemetryLoggingClient b;
    public final AtomicLong c = new AtomicLong(-1);

    public zzgq(Context context, zzic zzicVar) {
        this.b = TelemetryLogging.getClient(context, TelemetryLoggingOptions.builder().setApi("measurement:api").build());
        this.a = zzicVar;
    }

    public final synchronized void zzb(int i, int i2, long j, long j2, int i3) {
        final long jElapsedRealtime = this.a.zzba().elapsedRealtime();
        AtomicLong atomicLong = this.c;
        if (atomicLong.get() != -1 && jElapsedRealtime - atomicLong.get() <= 1800000) {
            return;
        }
        this.b.log(new TelemetryData(0, Arrays.asList(new MethodInvocation(36301, i2, 0, j, j2, null, null, 0, i3)))).addOnFailureListener(new OnFailureListener() { // from class: dkb
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final /* synthetic */ void onFailure(Exception exc) {
                this.b.c.set(jElapsedRealtime);
            }
        });
    }
}
