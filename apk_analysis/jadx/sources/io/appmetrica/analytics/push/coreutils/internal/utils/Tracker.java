package io.appmetrica.analytics.push.coreutils.internal.utils;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface Tracker {
    void pauseSession();

    void reportError(String str, Throwable th);

    void reportEvent(String str);

    void reportEvent(String str, Map<String, Object> map);

    void reportUnhandledException(Throwable th);

    void resumeSession();
}
