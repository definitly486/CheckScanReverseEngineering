package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1547s implements B {
    public final ClientContext a;
    public final C b;
    public volatile C1539j c;
    public final G d;

    public C1547s(ClientContext clientContext, C c) {
        this.a = clientContext;
        this.b = c;
        this.d = new G(clientContext, new C1545p(this));
    }

    @Override // io.appmetrica.analytics.screenshot.impl.B
    public final void a() {
        this.a.getActivityLifecycleRegistry().registerListener(new r(this), ActivityEvent.RESUMED, ActivityEvent.PAUSED);
    }

    public final String b() {
        return "ContentObserverScreenshotCaptor";
    }

    @Override // io.appmetrica.analytics.screenshot.impl.B
    public final void a(C1540k c1540k) {
        this.c = c1540k != null ? c1540k.d : null;
        this.d.c = this.c;
    }
}
