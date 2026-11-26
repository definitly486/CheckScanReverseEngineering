package io.appmetrica.analytics.screenshot.internal;

import defpackage.jh2;
import io.appmetrica.analytics.screenshot.impl.P;

/* JADX INFO: loaded from: classes5.dex */
public final class ServiceSideScreenshotConfigWrapper {
    public static final Companion Companion = new Companion(null);
    private final P a;

    public ServiceSideScreenshotConfigWrapper(P p) {
        this.a = p;
    }

    public final P getConfig$screenshot_release() {
        return this.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ServiceSideScreenshotConfigWrapper toWrapper$screenshot_release(P p) {
            return new ServiceSideScreenshotConfigWrapper(p);
        }

        private Companion() {
        }
    }
}
