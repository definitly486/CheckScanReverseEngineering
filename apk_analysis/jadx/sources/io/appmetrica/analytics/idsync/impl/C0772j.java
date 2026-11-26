package io.appmetrica.analytics.idsync.impl;

import defpackage.aa4;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback;

/* JADX INFO: renamed from: io.appmetrica.analytics.idsync.impl.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0772j implements ActivationBarrierCallback {
    public final /* synthetic */ C0773k a;

    public C0772j(C0773k c0773k) {
        this.a = c0773k;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback
    public final void onWaitFinished() {
        C0771i c0771i = this.a.g;
        if (c0771i != null) {
            c0771i.run();
        } else {
            aa4.j("syncRunnable");
            throw null;
        }
    }
}
