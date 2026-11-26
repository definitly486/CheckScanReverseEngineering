package com.google.firebase.perf.network;

import com.google.firebase.perf.metrics.NetworkRequestMetricBuilder;
import com.google.firebase.perf.transport.TransportManager;
import com.google.firebase.perf.util.Timer;
import defpackage.b37;
import defpackage.b57;
import defpackage.fz3;
import defpackage.g37;
import defpackage.j95;
import defpackage.ty0;
import defpackage.z47;
import java.io.IOException;
import okhttp3.a;

/* JADX INFO: loaded from: classes4.dex */
public class FirebasePerfOkHttpClient {
    private FirebasePerfOkHttpClient() {
    }

    public static void enqueue(a aVar, ty0 ty0Var) {
        Timer timer = new Timer();
        aVar.a(new InstrumentOkHttpEnqueueCallback(ty0Var, TransportManager.getInstance(), timer, timer.getMicros()));
    }

    public static z47 execute(a aVar) throws IOException {
        NetworkRequestMetricBuilder networkRequestMetricBuilderBuilder = NetworkRequestMetricBuilder.builder(TransportManager.getInstance());
        Timer timer = new Timer();
        long micros = timer.getMicros();
        try {
            z47 z47VarExecute = aVar.execute();
            sendNetworkMetric(z47VarExecute, networkRequestMetricBuilderBuilder, micros, timer.getDurationMicros());
            return z47VarExecute;
        } catch (IOException e) {
            b37 b37VarM = aVar.m();
            if (b37VarM != null) {
                fz3 fz3Var = b37VarM.a;
                if (fz3Var != null) {
                    networkRequestMetricBuilderBuilder.setUrl(fz3Var.h().toString());
                }
                String str = b37VarM.b;
                if (str != null) {
                    networkRequestMetricBuilderBuilder.setHttpMethod(str);
                }
            }
            networkRequestMetricBuilderBuilder.setRequestStartTimeMicros(micros);
            networkRequestMetricBuilderBuilder.setTimeToResponseCompletedMicros(timer.getDurationMicros());
            NetworkRequestMetricBuilderUtil.logError(networkRequestMetricBuilderBuilder);
            throw e;
        }
    }

    public static void sendNetworkMetric(z47 z47Var, NetworkRequestMetricBuilder networkRequestMetricBuilder, long j, long j2) {
        b37 b37Var = z47Var.b;
        if (b37Var == null) {
            return;
        }
        networkRequestMetricBuilder.setUrl(b37Var.a.h().toString());
        networkRequestMetricBuilder.setHttpMethod(b37Var.b);
        g37 g37Var = b37Var.d;
        if (g37Var != null) {
            long jA = g37Var.a();
            if (jA != -1) {
                networkRequestMetricBuilder.setRequestPayloadBytes(jA);
            }
        }
        b57 b57Var = z47Var.h;
        if (b57Var != null) {
            long jO = b57Var.o();
            if (jO != -1) {
                networkRequestMetricBuilder.setResponsePayloadBytes(jO);
            }
            j95 j95VarP = b57Var.p();
            if (j95VarP != null) {
                networkRequestMetricBuilder.setResponseContentType(j95VarP.a);
            }
        }
        networkRequestMetricBuilder.setHttpResponseCode(z47Var.e);
        networkRequestMetricBuilder.setRequestStartTimeMicros(j);
        networkRequestMetricBuilder.setTimeToResponseCompletedMicros(j2);
        networkRequestMetricBuilder.build();
    }
}
