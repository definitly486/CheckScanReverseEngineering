package io.appmetrica.analytics.screenshot.impl;

import android.os.Handler;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;

/* JADX INFO: loaded from: classes5.dex */
public final class M implements B {
    public final ClientContext a;
    public final C b;
    public final Handler c;
    public volatile boolean d;
    public volatile C1541l e;
    public final J f = new J(this);

    public M(ClientContext clientContext, C c) {
        this.a = clientContext;
        this.b = c;
        this.c = clientContext.getClientExecutorProvider().getDefaultExecutor().getHandler();
    }

    @Override // io.appmetrica.analytics.screenshot.impl.B
    public final void a() {
        this.a.getActivityLifecycleRegistry().registerListener(new L(this), ActivityEvent.RESUMED, ActivityEvent.PAUSED);
    }

    public final String b() {
        return "ServiceScreenshotCaptor";
    }

    @Override // io.appmetrica.analytics.screenshot.impl.B
    public final void a(C1540k c1540k) {
        this.e = c1540k != null ? c1540k.c : null;
    }
}
