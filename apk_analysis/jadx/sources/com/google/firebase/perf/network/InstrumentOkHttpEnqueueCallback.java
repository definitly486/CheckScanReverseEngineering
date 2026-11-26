package com.google.firebase.perf.network;

import com.google.firebase.perf.metrics.NetworkRequestMetricBuilder;
import com.google.firebase.perf.transport.TransportManager;
import com.google.firebase.perf.util.Timer;
import defpackage.b37;
import defpackage.fz3;
import defpackage.ty0;
import defpackage.z47;
import java.io.IOException;
import okhttp3.a;

/* JADX INFO: loaded from: classes4.dex */
public class InstrumentOkHttpEnqueueCallback implements ty0 {
    private final ty0 callback;
    private final NetworkRequestMetricBuilder networkMetricBuilder;
    private final long startTimeMicros;
    private final Timer timer;

    public InstrumentOkHttpEnqueueCallback(ty0 ty0Var, TransportManager transportManager, Timer timer, long j) {
        this.callback = ty0Var;
        this.networkMetricBuilder = NetworkRequestMetricBuilder.builder(transportManager);
        this.startTimeMicros = j;
        this.timer = timer;
    }

    @Override // defpackage.ty0
    public void onFailure(a aVar, IOException iOException) {
        b37 b37VarM = aVar.m();
        if (b37VarM != null) {
            fz3 fz3Var = b37VarM.a;
            if (fz3Var != null) {
                this.networkMetricBuilder.setUrl(fz3Var.h().toString());
            }
            String str = b37VarM.b;
            if (str != null) {
                this.networkMetricBuilder.setHttpMethod(str);
            }
        }
        this.networkMetricBuilder.setRequestStartTimeMicros(this.startTimeMicros);
        this.networkMetricBuilder.setTimeToResponseCompletedMicros(this.timer.getDurationMicros());
        NetworkRequestMetricBuilderUtil.logError(this.networkMetricBuilder);
        this.callback.onFailure(aVar, iOException);
    }

    @Override // defpackage.ty0
    public void onResponse(a aVar, z47 z47Var) {
        FirebasePerfOkHttpClient.sendNetworkMetric(z47Var, this.networkMetricBuilder, this.startTimeMicros, this.timer.getDurationMicros());
        this.callback.onResponse(aVar, z47Var);
    }
}
