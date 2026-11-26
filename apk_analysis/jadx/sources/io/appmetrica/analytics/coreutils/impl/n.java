package io.appmetrica.analytics.coreutils.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback;

/* JADX INFO: loaded from: classes5.dex */
public final class n implements Runnable {
    public final /* synthetic */ ActivationBarrierCallback a;

    public n(ActivationBarrierCallback activationBarrierCallback) {
        this.a = activationBarrierCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.onWaitFinished();
    }
}
