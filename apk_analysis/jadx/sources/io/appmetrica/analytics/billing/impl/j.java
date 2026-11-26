package io.appmetrica.analytics.billing.impl;

import defpackage.jh2;
import defpackage.sc6;
import io.appmetrica.analytics.billinginterface.internal.ProductInfo;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoSender;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentModuleReporter;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceModuleCounterReport;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class j implements BillingInfoSender {
    public final ServiceComponentModuleReporter a;
    public final Executor b;
    public final o c;

    public /* synthetic */ j(ServiceComponentModuleReporter serviceComponentModuleReporter, Executor executor, o oVar, int i, jh2 jh2Var) {
        this(serviceComponentModuleReporter, executor, (i & 4) != 0 ? new o() : oVar);
    }

    public static final void a(j jVar, ProductInfo productInfo) {
        ServiceComponentModuleReporter serviceComponentModuleReporter = jVar.a;
        ServiceModuleCounterReport.Builder builderWithType = ServiceModuleCounterReport.Companion.newBuilder().withType(40976);
        jVar.c.getClass();
        serviceComponentModuleReporter.handleReport(builderWithType.withValueBytes(o.a(productInfo)).build());
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoSender
    public final void sendInfo(List<? extends ProductInfo> list) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            this.b.execute(new sc6(2, this, (ProductInfo) it.next()));
        }
    }

    public j(ServiceComponentModuleReporter serviceComponentModuleReporter, Executor executor, o oVar) {
        this.a = serviceComponentModuleReporter;
        this.b = executor;
        this.c = oVar;
    }
}
