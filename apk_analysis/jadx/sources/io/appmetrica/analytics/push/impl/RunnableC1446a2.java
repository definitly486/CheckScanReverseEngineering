package io.appmetrica.analytics.push.impl;

import android.content.Intent;
import io.appmetrica.analytics.push.internal.service.PushService;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.a2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1446a2 implements Runnable {
    public final /* synthetic */ C a;
    public final /* synthetic */ Intent b;
    public final /* synthetic */ PushService c;

    public RunnableC1446a2(PushService pushService, C c, Intent intent) {
        this.c = pushService;
        this.a = c;
        this.b = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.a(this.c, this.b.getExtras());
    }
}
