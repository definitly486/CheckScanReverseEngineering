package io.appmetrica.analytics.screenshot.impl;

import android.app.Activity;
import defpackage.cl4;
import defpackage.fh8;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1533d implements B {
    public final ClientContext a;
    public final C b;
    public volatile C1538i c;
    public final cl4 d = new fh8(new C1530a(this));

    public C1533d(ClientContext clientContext, C c) {
        this.a = clientContext;
        this.b = c;
    }

    public static final Activity.ScreenCaptureCallback d(C1533d c1533d) {
        return (Activity.ScreenCaptureCallback) c1533d.d.getValue();
    }

    @Override // io.appmetrica.analytics.screenshot.impl.B
    public final void a() {
        if (AndroidUtils.isApiAchieved(34)) {
            this.a.getActivityLifecycleRegistry().registerListener(new C1532c(this), ActivityEvent.STARTED, ActivityEvent.STOPPED);
        }
    }

    public final String b() {
        return "AndroidApiScreenshotCaptor";
    }

    @Override // io.appmetrica.analytics.screenshot.impl.B
    public final void a(C1540k c1540k) {
        this.c = c1540k != null ? c1540k.b : null;
    }
}
