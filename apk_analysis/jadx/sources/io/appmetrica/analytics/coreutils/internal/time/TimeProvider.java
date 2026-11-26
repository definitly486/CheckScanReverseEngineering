package io.appmetrica.analytics.coreutils.internal.time;

/* JADX INFO: loaded from: classes5.dex */
public interface TimeProvider {
    long currentTimeMillis();

    long currentTimeSeconds();

    long elapsedRealtime();

    long systemNanoTime();

    long uptimeMillis();
}
