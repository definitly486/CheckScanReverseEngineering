package io.appmetrica.analytics;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;
import io.appmetrica.analytics.impl.C0855d0;
import io.appmetrica.analytics.impl.C0880e0;
import io.appmetrica.analytics.impl.C1169p4;
import io.appmetrica.analytics.impl.I0;
import io.appmetrica.analytics.impl.Qb;
import io.appmetrica.analytics.impl.Rb;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;

/* JADX INFO: loaded from: classes5.dex */
public class AppMetricaLibraryAdapter {
    private static I0 a = new I0();

    public static void activate(Context context, AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        I0 i0 = a;
        Qb qb = i0.a;
        if (!qb.a.validate(context).isValid() || !qb.b.validate(appMetricaLibraryAdapterConfig).isValid()) {
            ImportantLogger.INSTANCE.info("[AppMetricaLibraryAdapterProxy]", "Activation failed due to context is null or invalid config", new Object[0]);
            return;
        }
        Rb rb = i0.b;
        Context applicationContext = context.getApplicationContext();
        rb.getClass();
        C1169p4.l().g.a(applicationContext);
        C1169p4.l().b().a(applicationContext, appMetricaLibraryAdapterConfig);
    }

    public static void reportEvent(String str, String str2, String str3) {
        a.a(str, str2, str3);
    }

    public static void setAdvIdentifiersTracking(boolean z) {
        I0 i0 = a;
        if (i0.a.c.validate(null).isValid()) {
            i0.b.getClass();
            ModulesFacade.setAdvIdentifiersTracking(z);
        }
    }

    public static void setProxy(I0 i0) {
        a = i0;
    }

    public static void subscribeForAutoCollectedData(Context context, String str) {
        I0 i0 = a;
        i0.getClass();
        ImportantLogger.INSTANCE.info("[AppMetricaLibraryAdapterProxy]", "Subscribe for auto-collected data with api key: " + ApiKeyUtils.createPartialApiKey(str), new Object[0]);
        Qb qb = i0.a;
        if (qb.g.validate(str).isValid() && qb.a.validate(context).isValid()) {
            i0.b.getClass();
            C1169p4.l().g.a(context);
            C0880e0 c0880e0B = C1169p4.l().b();
            c0880e0B.c.a().executeDelayed(new C0855d0(c0880e0B, context), c0880e0B.d);
            ModulesFacade.subscribeForAutoCollectedData(context, str);
        }
    }

    public static void activate(Context context) {
        I0 i0 = a;
        if (i0.a.a.validate(context).isValid()) {
            Rb rb = i0.b;
            Context applicationContext = context.getApplicationContext();
            rb.getClass();
            C1169p4.l().g.a(applicationContext);
            C1169p4.l().b().a(applicationContext, AppMetricaLibraryAdapterConfig.newConfigBuilder().build());
            return;
        }
        ImportantLogger.INSTANCE.info("[AppMetricaLibraryAdapterProxy]", "Activation failed due to context is null", new Object[0]);
    }
}
