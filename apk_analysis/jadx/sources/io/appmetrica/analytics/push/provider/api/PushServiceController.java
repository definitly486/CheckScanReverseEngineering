package io.appmetrica.analytics.push.provider.api;

/* JADX INFO: loaded from: classes5.dex */
public interface PushServiceController {
    PushServiceExecutionRestrictions getExecutionRestrictions();

    String getToken();

    String getTransportId();

    boolean register();

    boolean shouldSendToken(String str);
}
