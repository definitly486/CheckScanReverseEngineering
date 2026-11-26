package io.appmetrica.analytics.push.logger.internal;

import io.appmetrica.analytics.logger.common.BaseReleaseLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class PublicLogger extends BaseReleaseLogger {
    public static final PublicLogger INSTANCE = new PublicLogger();

    private PublicLogger() {
        super("AppMetricaPush", "");
    }
}
