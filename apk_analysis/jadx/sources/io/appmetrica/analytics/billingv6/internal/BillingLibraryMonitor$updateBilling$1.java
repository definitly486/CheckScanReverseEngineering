package io.appmetrica.analytics.billingv6.internal;

import io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoSender;
import io.appmetrica.analytics.billinginterface.internal.update.UpdatePolicy;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class BillingLibraryMonitor$updateBilling$1 implements UtilsProvider {
    final /* synthetic */ BillingLibraryMonitor a;

    public BillingLibraryMonitor$updateBilling$1(BillingLibraryMonitor billingLibraryMonitor) {
        this.a = billingLibraryMonitor;
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider
    public BillingInfoManager getBillingInfoManager() {
        return this.a.e;
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider
    public BillingInfoSender getBillingInfoSender() {
        return this.a.d;
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider
    public Executor getUiExecutor() {
        return this.a.c;
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider
    public UpdatePolicy getUpdatePolicy() {
        return this.a.f;
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.library.UtilsProvider
    public Executor getWorkerExecutor() {
        return this.a.b;
    }
}
