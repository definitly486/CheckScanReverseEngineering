package io.appmetrica.analytics.adrevenue.other.internal;

import defpackage.jh2;
import io.appmetrica.analytics.adrevenue.other.impl.e;

/* JADX INFO: loaded from: classes5.dex */
public final class ClientSideAdRevenueOtherConfigWrapper {
    public static final Companion Companion = new Companion(null);
    private final e a;

    public ClientSideAdRevenueOtherConfigWrapper(e eVar) {
        this.a = eVar;
    }

    public final e getConfig$ad_revenue_other_release() {
        return this.a;
    }

    public String toString() {
        return "ClientSideAdRevenueOtherConfigWrapper(config=" + this.a + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ClientSideAdRevenueOtherConfigWrapper toWrapper$ad_revenue_other_release(e eVar) {
            return new ClientSideAdRevenueOtherConfigWrapper(eVar);
        }

        private Companion() {
        }
    }
}
