package io.appmetrica.analytics.coreapi.internal.servicecomponents;

/* JADX INFO: loaded from: classes5.dex */
public interface FirstExecutionDelayedTask {
    void setInitialDelaySeconds(long j);

    boolean tryExecute(long j);
}
