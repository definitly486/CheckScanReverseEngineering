package io.appmetrica.analytics.logger.appmetrica.internal;

import android.content.Context;
import defpackage.jh2;
import defpackage.lt0;
import io.appmetrica.analytics.logger.common.BaseReleaseLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class PublicLogger extends BaseReleaseLogger {
    public static final Companion Companion = new Companion(null);
    private static final PublicLogger a = new PublicLogger("");

    public PublicLogger(String str) {
        super("AppMetrica", lt0.d(']', "[", str));
    }

    public static final PublicLogger getAnonymousInstance() {
        return Companion.getAnonymousInstance();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final PublicLogger getAnonymousInstance() {
            return PublicLogger.a;
        }

        public final void init(Context context) {
            BaseReleaseLogger.init(context);
        }

        private Companion() {
        }
    }
}
