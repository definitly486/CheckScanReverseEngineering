package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.impl.C1100md;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceLifecycleController;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceLifecycleObserver;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.md, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1100md implements ModuleServiceLifecycleController {
    public final Y1 a;

    public C1100md(Y1 y1) {
        this.a = y1;
    }

    public static final void a(ModuleServiceLifecycleObserver moduleServiceLifecycleObserver, Intent intent) {
        moduleServiceLifecycleObserver.onFirstClientConnected();
    }

    public static final void b(ModuleServiceLifecycleObserver moduleServiceLifecycleObserver, Intent intent) {
        moduleServiceLifecycleObserver.onAllClientsDisconnected();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceLifecycleController
    public final void registerObserver(final ModuleServiceLifecycleObserver moduleServiceLifecycleObserver) {
        this.a.b(new X1() { // from class: k2a
            @Override // io.appmetrica.analytics.impl.X1
            public final void a(Intent intent) {
                C1100md.a(moduleServiceLifecycleObserver, intent);
            }
        });
        this.a.a(new X1() { // from class: l2a
            @Override // io.appmetrica.analytics.impl.X1
            public final void a(Intent intent) {
                C1100md.b(moduleServiceLifecycleObserver, intent);
            }
        });
    }
}
