package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.toggle.SimpleThreadSafeToggle;

/* JADX INFO: loaded from: classes5.dex */
public final class S3 extends SimpleThreadSafeToggle {
    public final C1102mf a;

    public S3(C1102mf c1102mf) {
        super(c1102mf.e(), "[ClientApiTrackingStatusToggle]");
        this.a = c1102mf;
    }

    public final void a(boolean z) {
        updateState(z);
        this.a.f(z);
    }
}
