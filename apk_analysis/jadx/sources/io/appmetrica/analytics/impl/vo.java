package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.services.UtilityServiceConfiguration;
import io.appmetrica.analytics.coreutils.internal.services.UtilityServiceProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class vo implements Am {
    public final UtilityServiceProvider a;

    public vo(UtilityServiceProvider utilityServiceProvider) {
        this.a = utilityServiceProvider;
    }

    @Override // io.appmetrica.analytics.impl.Am
    public final void a(C1341vm c1341vm) {
        this.a.updateConfiguration(new UtilityServiceConfiguration(c1341vm.v, c1341vm.u));
    }
}
