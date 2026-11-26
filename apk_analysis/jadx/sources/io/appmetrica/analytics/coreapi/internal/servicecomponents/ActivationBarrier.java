package io.appmetrica.analytics.coreapi.internal.servicecomponents;

import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;

/* JADX INFO: loaded from: classes5.dex */
public interface ActivationBarrier {
    void subscribe(long j, ICommonExecutor iCommonExecutor, ActivationBarrierCallback activationBarrierCallback);
}
