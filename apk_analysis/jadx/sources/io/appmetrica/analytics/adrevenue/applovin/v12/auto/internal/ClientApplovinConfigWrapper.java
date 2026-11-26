package io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal;

import defpackage.jh2;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl.j;

/* JADX INFO: loaded from: classes5.dex */
public final class ClientApplovinConfigWrapper {
    public static final Companion Companion = new Companion(null);
    private final j a;

    public ClientApplovinConfigWrapper(j jVar) {
        this.a = jVar;
    }

    public final j getConfig$ad_revenue_applovin_v12_auto_release() {
        return this.a;
    }

    public String toString() {
        return "ClientApplovinConfigWrapper(config=" + this.a + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ClientApplovinConfigWrapper toWrapper$ad_revenue_applovin_v12_auto_release(j jVar) {
            return new ClientApplovinConfigWrapper(jVar);
        }

        private Companion() {
        }
    }
}
