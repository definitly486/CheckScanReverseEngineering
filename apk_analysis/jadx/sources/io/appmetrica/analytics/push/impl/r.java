package io.appmetrica.analytics.push.impl;

import android.content.Context;
import io.appmetrica.analytics.ModulesFacade;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.push.TokenUpdateListener;
import io.appmetrica.analytics.push.coreutils.internal.PushServiceFacade;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import io.appmetrica.analytics.push.provider.api.PushServiceControllerProvider;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class r {
    public static volatile r i;
    public static final Object j = new Object();
    public final Context a;
    public final Object b = new Object();
    public boolean c = false;
    public C1450b2 d;
    public x2 e;
    public final C1515v f;
    public final U0 g;
    public TokenUpdateListener h;

    public r(Context context) {
        this.a = context;
        C1515v c1515v = new C1515v(context, this);
        this.f = c1515v;
        b(context);
        this.g = new U0(new C1512u(context, c1515v.c()));
    }

    public final void a(PushServiceControllerProvider... pushServiceControllerProviderArr) {
        C1473h1 c1473h1A = a();
        c1473h1A.getClass();
        try {
            if (!CoreUtils.isEmpty(c1473h1A.a()) && !c1473h1A.a().contains(StringUtils.PROCESS_POSTFIX_DELIMITER)) {
                synchronized (this.b) {
                    try {
                        if (this.c) {
                            PublicLogger.INSTANCE.warning("AppMetrica Push SDK has already been initialized.", new Object[0]);
                        } else {
                            PublicLogger.INSTANCE.info("Initializing AppMetrica Push SDK", new Object[0]);
                            TrackersHub.getInstance().resumeSession();
                            TrackersHub.getInstance().pauseSession();
                            if (!ModulesFacade.isActivatedForApp()) {
                                throw new IllegalStateException("AppMetrica isn't initialized. Use AppMetrica#activate(android.content.Context, String) method to activate. See more at https://appmetrica.io/docs/mobile-sdk-dg/push/android-initialize.html");
                            }
                            ArrayList arrayList = new ArrayList(pushServiceControllerProviderArr.length);
                            for (PushServiceControllerProvider pushServiceControllerProvider : pushServiceControllerProviderArr) {
                                arrayList.add(pushServiceControllerProvider.getPushServiceController());
                            }
                            C1450b2 c1450b2 = new C1450b2(this.a, arrayList);
                            this.d = c1450b2;
                            this.e = new x2(this.a, c1450b2.b.keySet());
                            PushServiceFacade pushServiceFacade = PushServiceFacade.INSTANCE;
                            PushServiceFacade.initPushService(this.a);
                            this.c = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            }
        } catch (Exception unused) {
        }
        PublicLogger.INSTANCE.info("Ignore AppMetrica Push SDK initialization from non main process", new Object[0]);
    }

    public final void b(Context context) {
        TrackersHub.getInstance().registerTracker(new C1518w(context, this.f.c()));
        X1 x1 = X1.b;
        x1.a.add(this.f.d());
    }

    public final K1 c() {
        C1515v c1515v = this.f;
        if (c1515v.n == null) {
            synchronized (c1515v.a) {
                try {
                    if (c1515v.n == null) {
                        c1515v.n = new K1(c1515v.p, c1515v.q, new P1());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c1515v.n;
    }

    public final L1 d() {
        return this.f.c();
    }

    public final Q1 e() {
        C1515v c1515v = this.f;
        if (c1515v.m == null) {
            synchronized (c1515v.a) {
                try {
                    if (c1515v.m == null) {
                        c1515v.m = new Q1(c1515v.p, c1515v.q, new P1());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c1515v.m;
    }

    public final W1 f() {
        C1515v c1515v = this.f;
        if (c1515v.i == null) {
            L1 l1C = c1515v.c();
            synchronized (c1515v.a) {
                try {
                    if (c1515v.i == null) {
                        c1515v.i = new W1(l1C);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c1515v.i;
    }

    public final boolean g() {
        boolean z;
        synchronized (this.b) {
            z = this.c;
        }
        return z;
    }

    public final C1488l1 b() {
        C1515v c1515v = this.f;
        if (c1515v.k == null) {
            synchronized (c1515v.a) {
                try {
                    if (c1515v.k == null) {
                        c1515v.k = new C1488l1(c1515v.p);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c1515v.k;
    }

    public static r a(Context context) {
        if (i == null) {
            synchronized (j) {
                try {
                    if (i == null) {
                        i = new r(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return i;
    }

    public final C1473h1 a() {
        C1515v c1515v = this.f;
        if (c1515v.l == null) {
            synchronized (c1515v.a) {
                try {
                    if (c1515v.l == null) {
                        c1515v.l = new C1473h1();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c1515v.l;
    }
}
