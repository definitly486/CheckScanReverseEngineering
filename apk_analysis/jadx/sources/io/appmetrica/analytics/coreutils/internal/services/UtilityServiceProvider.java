package io.appmetrica.analytics.coreutils.internal.services;

import defpackage.cl4;
import defpackage.fh8;
import io.appmetrica.analytics.coreutils.impl.m;

/* JADX INFO: loaded from: classes5.dex */
public final class UtilityServiceProvider {
    private final cl4 a = new fh8(new m(this));
    private final WaitForActivationDelayBarrier b = new WaitForActivationDelayBarrier();

    public final WaitForActivationDelayBarrier getActivationBarrier() {
        return this.b;
    }

    public final FirstExecutionConditionServiceImpl getFirstExecutionService() {
        return (FirstExecutionConditionServiceImpl) this.a.getValue();
    }

    public final void initAsync() {
        this.b.activate();
    }

    public final void updateConfiguration(UtilityServiceConfiguration utilityServiceConfiguration) {
        getFirstExecutionService().updateConfig(utilityServiceConfiguration);
    }
}
