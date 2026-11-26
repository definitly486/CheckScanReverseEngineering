package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ExternalAttribution;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.n1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1114n1 implements Runnable {
    public final /* synthetic */ ExternalAttribution a;
    public final /* synthetic */ C1370x1 b;

    public RunnableC1114n1(C1370x1 c1370x1, ExternalAttribution externalAttribution) {
        this.b = c1370x1;
        this.a = externalAttribution;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1370x1.a(this.b).a(this.a);
    }
}
