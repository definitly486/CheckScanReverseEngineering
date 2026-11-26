package io.appmetrica.analytics.screenshot.internal;

import defpackage.jh2;
import io.appmetrica.analytics.screenshot.impl.C1540k;

/* JADX INFO: loaded from: classes5.dex */
public final class ClientSideScreenshotConfigWrapper {
    public static final Companion Companion = new Companion(null);
    private final C1540k a;

    public ClientSideScreenshotConfigWrapper(C1540k c1540k) {
        this.a = c1540k;
    }

    public final C1540k getConfig$screenshot_release() {
        return this.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ClientSideScreenshotConfigWrapper toWrapper$screenshot_release(C1540k c1540k) {
            return new ClientSideScreenshotConfigWrapper(c1540k);
        }

        private Companion() {
        }
    }
}
