package io.appmetrica.analytics.push.logger.internal;

import io.appmetrica.analytics.logger.common.BaseDebugLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class DebugLogger extends BaseDebugLogger {
    public static final DebugLogger INSTANCE = new DebugLogger();

    private DebugLogger() {
        super("AppMetricaPushDebug");
    }
}
