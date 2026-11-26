package ru.rustore.sdk.metrics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MetricsException extends Exception {

    public static final class MetricsDbError extends MetricsException {
    }

    public static final class NetworkError extends MetricsException {
    }

    public static final class SaveMetricsEventError extends MetricsException {
    }
}
