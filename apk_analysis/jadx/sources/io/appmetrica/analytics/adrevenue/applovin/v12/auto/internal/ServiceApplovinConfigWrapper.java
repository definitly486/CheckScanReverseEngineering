package io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal;

import defpackage.jh2;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl.l;

/* JADX INFO: loaded from: classes5.dex */
public final class ServiceApplovinConfigWrapper {
    public static final Companion Companion = new Companion(null);
    private final l a;

    public ServiceApplovinConfigWrapper(l lVar) {
        this.a = lVar;
    }

    public final l getConfig$ad_revenue_applovin_v12_auto_release() {
        return this.a;
    }

    public String toString() {
        return "ServiceApplovinConfigWrapper(config=" + this.a + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ServiceApplovinConfigWrapper toWrapper$ad_revenue_applovin_v12_auto_release(l lVar) {
            return new ServiceApplovinConfigWrapper(lVar);
        }

        private Companion() {
        }
    }
}
