package io.appmetrica.analytics.push.impl;

/* JADX INFO: loaded from: classes5.dex */
public interface T0 {
    void a(String str);

    void a(String str, String str2, String str3, String str4);

    void a(String str, String str2, String str3, String str4, String str5);

    void a(String str, String str2, String str3, String str4, String str5, String str6);

    void onMessageReceived(String str, String str2, String str3);

    void onNotificationCleared(String str, String str2, String str3);

    void onNotificationExpired(String str, String str2, String str3, String str4);

    void onNotificationIgnored(String str, String str2, String str3, String str4, String str5);

    void onNotificationReplace(String str, String str2, String str3);

    void onNotificationShown(String str, String str2, String str3);

    void onPushTokenInited(String str, String str2);

    void onPushTokenUpdated(String str, String str2);

    void onRemovingSilentPushProcessed(String str, String str2, String str3, String str4, String str5);

    void onSilentPushProcessed(String str, String str2, String str3);
}
