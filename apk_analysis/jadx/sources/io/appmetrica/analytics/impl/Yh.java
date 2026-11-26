package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceEvent;

/* JADX INFO: loaded from: classes5.dex */
public final class Yh implements Runnable {
    public final /* synthetic */ ECommerceEvent a;
    public final /* synthetic */ C1157oi b;

    public Yh(C1157oi c1157oi, ECommerceEvent eCommerceEvent) {
        this.b = c1157oi;
        this.a = eCommerceEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportECommerce(this.a);
    }
}
