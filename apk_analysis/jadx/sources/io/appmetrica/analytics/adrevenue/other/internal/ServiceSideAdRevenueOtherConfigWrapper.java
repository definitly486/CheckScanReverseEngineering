package io.appmetrica.analytics.adrevenue.other.internal;

import defpackage.jh2;
import io.appmetrica.analytics.adrevenue.other.impl.j;

/* JADX INFO: loaded from: classes5.dex */
public final class ServiceSideAdRevenueOtherConfigWrapper {
    public static final Companion Companion = new Companion(null);
    private final j a;

    public ServiceSideAdRevenueOtherConfigWrapper(j jVar) {
        this.a = jVar;
    }

    public final j getConfig$ad_revenue_other_release() {
        return this.a;
    }

    public String toString() {
        return "ServiceSideAdRevenueOtherConfigWrapper(config=" + this.a + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ServiceSideAdRevenueOtherConfigWrapper toWrapper$ad_revenue_other_release(j jVar) {
            return new ServiceSideAdRevenueOtherConfigWrapper(jVar);
        }

        private Companion() {
        }
    }
}
