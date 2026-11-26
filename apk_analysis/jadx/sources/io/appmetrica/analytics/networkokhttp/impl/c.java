package io.appmetrica.analytics.networkokhttp.impl;

import com.google.firebase.perf.FirebasePerformance;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import defpackage.aa4;
import defpackage.b37;
import defpackage.f37;
import defpackage.gb9;
import defpackage.jv;
import defpackage.jv3;
import defpackage.kx6;
import defpackage.x74;
import defpackage.y74;
import defpackage.z47;
import io.appmetrica.analytics.coreutils.internal.io.InputStreamUtils;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.networkapi.Call;
import io.appmetrica.analytics.networkapi.NetworkCallMetrics;
import io.appmetrica.analytics.networkapi.NetworkClientSettings;
import io.appmetrica.analytics.networkapi.Request;
import io.appmetrica.analytics.networkapi.Response;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends Call {
    public final OkHttpClient a;
    public final Request b;
    public final NetworkClientSettings c;

    public c(OkHttpClient okHttpClient, Request request, NetworkClientSettings networkClientSettings) {
        this.a = okHttpClient;
        this.b = request;
        this.c = networkClientSettings;
    }

    public static b37 a(Request request) {
        b37.a aVar = new b37.a();
        aVar.e(request.getUrl());
        switch (a.a[request.getMethod().ordinal()]) {
            case 1:
                aVar.c("GET", null);
                break;
            case 2:
                aVar.c(FirebasePerformance.HttpMethod.HEAD, null);
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                String methodName = request.getMethod().getMethodName();
                byte[] body = request.getBody();
                int length = body.length;
                body.getClass();
                gb9.c(body.length, 0L, length);
                aVar.c(methodName, new f37(null, length, body));
                break;
        }
        for (Map.Entry<String, String> entry : request.getHeaders().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            key.getClass();
            value.getClass();
            aVar.c.a(key, value);
        }
        return aVar.a();
    }

    @Override // io.appmetrica.analytics.networkapi.Call
    public final Response execute() {
        NetworkCallMetrics networkCallMetricsBuild;
        NetworkCallMetrics networkCallMetricsBuild2 = null;
        d dVar = aa4.e(this.c.getCollectMetrics(), Boolean.TRUE) ? new d(new SystemTimeProvider()) : null;
        OkHttpClient okHttpClient = this.a;
        if (dVar != null) {
            OkHttpClient.a aVarE = okHttpClient.e();
            aVarE.e = new jv(dVar, 3);
            okHttpClient = new OkHttpClient(aVarE);
        }
        try {
            z47 z47VarExecute = FirebasePerfOkHttpClient.execute(okHttpClient.b(a(this.b)));
            Response.Builder builderWithUrl = new Response.Builder(true, z47VarExecute.e, InputStreamUtils.INSTANCE.readSafelyApprox(this.c.getMaxResponseSize(), new b(z47VarExecute))).withHeaders(a(z47VarExecute.g)).withUrl(z47VarExecute.b.a.i);
            if (dVar != null) {
                Long lA = d.a(dVar.b, dVar.c);
                Long lA2 = d.a(dVar.d, dVar.e);
                networkCallMetricsBuild = new NetworkCallMetrics.Builder().withDnsLookup(lA).withTcpConnect(lA2).withTlsHandshake(d.a(dVar.f, dVar.g)).withTimeToFirstByte(d.a(dVar.h, dVar.i)).withResponse(d.a(dVar.i, dVar.j)).withConnectionReused(dVar.l).withProtocol(dVar.k).build();
            } else {
                networkCallMetricsBuild = null;
            }
            return builderWithUrl.withMetrics(networkCallMetricsBuild).build();
        } catch (Throwable th) {
            Response.Builder builder = new Response.Builder(th);
            if (dVar != null) {
                Long lA3 = d.a(dVar.b, dVar.c);
                Long lA4 = d.a(dVar.d, dVar.e);
                networkCallMetricsBuild2 = new NetworkCallMetrics.Builder().withDnsLookup(lA3).withTcpConnect(lA4).withTlsHandshake(d.a(dVar.f, dVar.g)).withTimeToFirstByte(d.a(dVar.h, dVar.i)).withResponse(d.a(dVar.i, dVar.j)).withConnectionReused(dVar.l).withProtocol(dVar.k).build();
            }
            return builder.withMetrics(networkCallMetricsBuild2).build();
        }
    }

    public static LinkedHashMap a(jv3 jv3Var) {
        y74 y74VarN = kx6.n(0, jv3Var.size());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        x74 it = y74VarN.iterator();
        while (it.d) {
            int iNextInt = it.nextInt();
            String strB = jv3Var.b(iNextInt);
            Object arrayList = linkedHashMap.get(strB);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(strB, arrayList);
            }
            ((List) arrayList).add(jv3Var.g(iNextInt));
        }
        return linkedHashMap;
    }

    public static final okhttp3.b a(d dVar, okhttp3.a aVar) {
        return dVar;
    }
}
