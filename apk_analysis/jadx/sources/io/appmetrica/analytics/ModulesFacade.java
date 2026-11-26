package io.appmetrica.analytics;

import android.content.Context;
import io.appmetrica.analytics.impl.AbstractC1337vi;
import io.appmetrica.analytics.impl.C0;
import io.appmetrica.analytics.impl.C1229rd;
import io.appmetrica.analytics.impl.C1281td;
import io.appmetrica.analytics.impl.C1307ud;
import io.appmetrica.analytics.impl.C1332vd;
import io.appmetrica.analytics.impl.C1357wd;
import io.appmetrica.analytics.impl.C1382xd;
import io.appmetrica.analytics.impl.C1407yd;
import io.appmetrica.analytics.impl.C1432zd;

/* JADX INFO: loaded from: classes5.dex */
public final class ModulesFacade {
    public static final int EXTERNAL_ATTRIBUTION_ADJUST = 2;
    public static final int EXTERNAL_ATTRIBUTION_AIRBRIDGE = 5;
    public static final int EXTERNAL_ATTRIBUTION_APPSFLYER = 1;
    public static final int EXTERNAL_ATTRIBUTION_KOCHAVA = 3;
    public static final int EXTERNAL_ATTRIBUTION_SINGULAR = 6;
    public static final int EXTERNAL_ATTRIBUTION_TENJIN = 4;
    private static C1432zd a = new C1432zd();

    public static IModuleReporter getModuleReporter(Context context, String str) {
        C1432zd c1432zd = a;
        C1229rd c1229rd = c1432zd.b;
        c1229rd.b.validate(context);
        c1229rd.d.validate(str);
        c1432zd.c.a.a(context.getApplicationContext().getApplicationContext());
        return AbstractC1337vi.a.a(context.getApplicationContext(), str);
    }

    public static boolean isActivatedForApp() {
        C1432zd c1432zd = a;
        c1432zd.b.getClass();
        c1432zd.c.getClass();
        c1432zd.a.getClass();
        return C0.a();
    }

    public static void reportAdRevenue(AdRevenue adRevenue, Boolean bool) {
        C1432zd c1432zd = a;
        boolean zBooleanValue = bool.booleanValue();
        c1432zd.b.getClass();
        c1432zd.c.getClass();
        c1432zd.d.execute(new C1281td(c1432zd, adRevenue, zBooleanValue));
    }

    public static void reportEvent(ModuleEvent moduleEvent) {
        C1432zd c1432zd = a;
        c1432zd.b.a.validate(null);
        c1432zd.c.getClass();
        c1432zd.d.execute(new C1307ud(c1432zd, moduleEvent));
    }

    public static void reportExternalAttribution(int i, String str) {
        C1432zd c1432zd = a;
        c1432zd.b.getClass();
        c1432zd.c.getClass();
        c1432zd.d.execute(new C1332vd(c1432zd, i, str));
    }

    public static void sendEventsBuffer() {
        C1432zd c1432zd = a;
        c1432zd.b.getClass();
        c1432zd.c.getClass();
        AppMetrica.sendEventsBuffer();
    }

    public static void setAdvIdentifiersTracking(boolean z) {
        C1432zd c1432zd = a;
        c1432zd.b.getClass();
        c1432zd.c.getClass();
        c1432zd.d.execute(new C1357wd(c1432zd, z));
    }

    public static void setProxy(C1432zd c1432zd) {
        a = c1432zd;
    }

    public static void setSessionExtra(String str, byte[] bArr) {
        C1432zd c1432zd = a;
        c1432zd.b.c.validate(str);
        c1432zd.c.getClass();
        c1432zd.d.execute(new C1382xd(c1432zd, str, bArr));
    }

    public static void subscribeForAutoCollectedData(Context context, String str) {
        C1432zd c1432zd = a;
        C1229rd c1229rd = c1432zd.b;
        c1229rd.b.validate(context);
        c1229rd.d.validate(str);
        c1432zd.c.a.a(context.getApplicationContext());
        c1432zd.d.execute(new C1407yd(str));
    }

    public static void reportAdRevenue(AdRevenue adRevenue) {
        reportAdRevenue(adRevenue, Boolean.TRUE);
    }
}
