package io.appmetrica.analytics.idsync.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;

/* JADX INFO: loaded from: classes5.dex */
public final class s implements v {
    public final ServiceContext a;
    public final String b = "id_sync";

    public s(ServiceContext serviceContext) {
        this.a = serviceContext;
    }

    @Override // io.appmetrica.analytics.idsync.impl.v
    public final void a(String str, SdkIdentifiers sdkIdentifiers) {
        this.a.getSelfReporter().reportEvent(this.b, str);
    }
}
