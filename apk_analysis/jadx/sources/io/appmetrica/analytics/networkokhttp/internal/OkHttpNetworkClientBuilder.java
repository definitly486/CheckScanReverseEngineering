package io.appmetrica.analytics.networkokhttp.internal;

import io.appmetrica.analytics.networkapi.NetworkClient;
import io.appmetrica.analytics.networkokhttp.impl.f;

/* JADX INFO: loaded from: classes5.dex */
public final class OkHttpNetworkClientBuilder extends NetworkClient.Builder {
    @Override // io.appmetrica.analytics.networkapi.NetworkClient.Builder
    public NetworkClient build() {
        return new f(getSettings(), null, 2, null);
    }

    public String toString() {
        return "OkHttp Network Client Builder";
    }
}
