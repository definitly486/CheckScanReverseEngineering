package io.appmetrica.analytics.billing.internal;

import defpackage.jh2;
import io.appmetrica.analytics.billing.impl.B;

/* JADX INFO: loaded from: classes5.dex */
public final class ServiceSideBillingConfigWrapper {
    public static final Companion Companion = new Companion(null);
    private final B a;

    public ServiceSideBillingConfigWrapper(B b) {
        this.a = b;
    }

    public final B getConfig$billing_release() {
        return this.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ServiceSideBillingConfigWrapper toWrapper$billing_release(B b) {
            return new ServiceSideBillingConfigWrapper(b);
        }

        private Companion() {
        }
    }
}
