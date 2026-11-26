package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.client.ClientStorageProvider;
import io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.r4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1220r4 implements ClientStorageProvider {
    public final Nl a;

    public C1220r4(Nl nl) {
        this.a = nl;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ClientStorageProvider
    public final ModulePreferences modulePreferences(String str) {
        return new C1022jd(str, this.a);
    }
}
