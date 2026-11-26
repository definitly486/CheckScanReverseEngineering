package io.appmetrica.analytics.idsync.impl;

import io.appmetrica.analytics.coreapi.internal.system.NetworkType;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;

/* JADX INFO: renamed from: io.appmetrica.analytics.idsync.impl.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0764b implements C {
    public final ServiceContext a;

    public C0764b(ServiceContext serviceContext) {
        this.a = serviceContext;
    }

    @Override // io.appmetrica.analytics.idsync.impl.C
    public final boolean a() {
        return this.a.getActiveNetworkTypeProvider().getNetworkType(this.a.getContext()) == NetworkType.CELL;
    }
}
