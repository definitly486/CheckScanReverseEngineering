package io.appmetrica.analytics.idsync.impl;

import androidx.work.Data;
import defpackage.ha1;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import io.appmetrica.analytics.network.internal.NetworkClientBuilder;
import io.appmetrica.analytics.networkapi.NetworkClientSettings;
import io.appmetrica.analytics.networkapi.Request;
import io.appmetrica.analytics.networkapi.Response;

/* JADX INFO: loaded from: classes5.dex */
public final class x {
    public final ServiceContext a;

    public x(ServiceContext serviceContext) {
        this.a = serviceContext;
    }

    public final boolean a(String str, String str2) {
        int code;
        try {
            Response responseExecute = new NetworkClientBuilder().withSettings(new NetworkClientSettings.Builder().withSslSocketFactory(this.a.getNetworkContext().getSslSocketFactoryProvider().getSslSocketFactory()).withUseCaches(false).withInstanceFollowRedirects(true).withMaxResponseSize(Data.MAX_DATA_BYTES).build()).build().newCall(new Request.Builder(str).withMethod(Request.Method.POST).withBody(str2.getBytes(ha1.b)).addHeader("Content-Type", "application/json").build()).execute();
            return responseExecute.isCompleted() && (responseExecute.getCode() == 200 || (400 <= (code = responseExecute.getCode()) && code < 500));
        } catch (Exception unused) {
        }
    }
}
