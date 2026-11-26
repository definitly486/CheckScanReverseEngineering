package io.appmetrica.analytics.coreapi.internal.event;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AppMetricaEventData {
    public abstract int getBytesTruncated();

    public abstract byte[] getData();

    public abstract String getDescription();

    public String getName() {
        return null;
    }

    public abstract int getType();
}
