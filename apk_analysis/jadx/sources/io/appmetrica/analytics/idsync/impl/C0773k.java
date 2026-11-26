package io.appmetrica.analytics.idsync.impl;

import defpackage.aa4;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;

/* JADX INFO: renamed from: io.appmetrica.analytics.idsync.impl.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0773k {
    public final ServiceContext a;
    public final IHandlerExecutor c;
    public final q d;
    public volatile C0765c e;
    public volatile boolean f;
    public final long b = 60000;
    public final C0771i g = new C0771i(this);

    public C0773k(ServiceContext serviceContext, SdkIdentifiers sdkIdentifiers) {
        this.a = serviceContext;
        this.c = serviceContext.getExecutorProvider().getModuleExecutor();
        this.d = new q(serviceContext, new M(serviceContext.getServiceStorageProvider().modulePreferences("id-sync")), sdkIdentifiers);
    }

    public final synchronized void a(C0765c c0765c, SdkIdentifiers sdkIdentifiers) {
        try {
            this.d.c = sdkIdentifiers;
            if (!aa4.e(this.e, c0765c)) {
                this.e = c0765c;
                if (a(c0765c) && !this.f) {
                    this.a.getActivationBarrier().subscribe(c0765c.b, this.c, new C0772j(this));
                    this.f = true;
                } else if (!a(c0765c) && this.f) {
                    this.f = false;
                    IHandlerExecutor iHandlerExecutor = this.c;
                    C0771i c0771i = this.g;
                    if (c0771i == null) {
                        aa4.j("syncRunnable");
                        throw null;
                    }
                    iHandlerExecutor.remove(c0771i);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static boolean a(C0765c c0765c) {
        return c0765c.a && !c0765c.c.isEmpty();
    }
}
