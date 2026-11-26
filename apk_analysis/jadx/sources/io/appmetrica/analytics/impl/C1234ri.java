package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Handler;
import defpackage.u96;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ri, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1234ri implements InterfaceC0840cb {
    public final Context a;
    public final Pf b;
    public final Ei c;
    public final Handler d;
    public final C0902em e;
    public final Gc f;
    public final LinkedHashMap g;
    public final Sn h;
    public final List i;
    public C1356wc j;
    public C1350w6 k;

    public C1234ri(Context context, Pf pf, Ei ei, Handler handler, C0902em c0902em) {
        this.a = context;
        this.b = pf;
        this.c = ei;
        this.d = handler;
        this.e = c0902em;
        this.f = new Gc(context, pf, ei, c0902em);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.g = linkedHashMap;
        this.h = new Sn(new C1286ti(linkedHashMap));
        this.i = u96.i("20799a27-fa80-4b36-b2db-0f8141f24180", "0e5e9c33-f8c3-4568-86c5-2e4f57523f72");
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0840cb
    public final synchronized void a(ReporterConfig reporterConfig) {
        try {
            if (this.g.containsKey(reporterConfig.apiKey)) {
                LoggerStorage.getOrCreatePublicLogger(reporterConfig.apiKey).warning("Reporter with apiKey=%s already exists.", ApiKeyUtils.createPartialApiKey(reporterConfig.apiKey));
            } else {
                b(reporterConfig);
                ImportantLogger.INSTANCE.info("AppMetrica", "Activate reporter with APIKey " + ApiKeyUtils.createPartialApiKey(reporterConfig.apiKey), new Object[0]);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0840cb
    public final synchronized InterfaceC0814bb b(ReporterConfig reporterConfig) {
        InterfaceC0814bb interfaceC0814bb;
        try {
            InterfaceC0814bb interfaceC0814bb2 = (InterfaceC0814bb) this.g.get(reporterConfig.apiKey);
            interfaceC0814bb = interfaceC0814bb2;
            if (interfaceC0814bb2 == null) {
                if (!this.i.contains(reporterConfig.apiKey)) {
                    this.e.i();
                }
                Context context = this.a;
                Mc mc = new Mc(context, this.b, reporterConfig, this.c, new Z9(context));
                mc.i = new Cb(this.d, mc);
                C0902em c0902em = this.e;
                Mh mh = mc.b;
                if (c0902em != null) {
                    mh.b.setUuid(c0902em.g());
                } else {
                    mh.getClass();
                }
                mc.a(reporterConfig.appEnvironment);
                mc.k();
                this.g.put(reporterConfig.apiKey, mc);
                interfaceC0814bb = mc;
            }
        } catch (Throwable th) {
            throw th;
        }
        return interfaceC0814bb;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0840cb
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final synchronized C1356wc b(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, C1139o0 c1139o0) {
        C1356wc c1356wc;
        try {
            c1356wc = this.j;
            if (c1356wc != null) {
                this.f.a(appMetricaConfig, publicLogger);
            } else {
                this.h.validate(appMetricaConfig.apiKey);
                this.f.a(appMetricaConfig, publicLogger);
                c1356wc = new C1356wc(this.f);
                c1356wc.i = new Cb(this.d, c1356wc);
                C0902em c0902em = this.e;
                Mh mh = c1356wc.b;
                if (c0902em != null) {
                    mh.b.setUuid(c0902em.g());
                } else {
                    mh.getClass();
                }
                c1356wc.a(appMetricaConfig, c1139o0);
                c1356wc.k();
                this.c.f.c = new C1209qi(c1356wc);
                this.g.put(appMetricaConfig.apiKey, c1356wc);
                this.j = c1356wc;
            }
        } catch (Throwable th) {
            throw th;
        }
        return c1356wc;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0840cb
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final synchronized C1356wc a(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, C1139o0 c1139o0) {
        C1356wc c1356wc;
        try {
            c1356wc = this.j;
            if (c1356wc != null) {
                this.f.b(appMetricaConfig, publicLogger);
                c1356wc.a(appMetricaConfig, c1139o0);
                C1169p4.l().getClass();
                this.g.put(appMetricaConfig.apiKey, c1356wc);
            } else {
                this.h.validate(appMetricaConfig.apiKey);
                this.f.b(appMetricaConfig, publicLogger);
                c1356wc = new C1356wc(this.f);
                c1356wc.i = new Cb(this.d, c1356wc);
                C0902em c0902em = this.e;
                Mh mh = c1356wc.b;
                if (c0902em != null) {
                    mh.b.setUuid(c0902em.g());
                } else {
                    mh.getClass();
                }
                c1356wc.a(appMetricaConfig, c1139o0);
                c1356wc.k();
                this.c.f.c = new C1209qi(c1356wc);
                this.g.put(appMetricaConfig.apiKey, c1356wc);
                C1169p4.l().getClass();
                this.j = c1356wc;
            }
        } catch (Throwable th) {
            throw th;
        }
        return c1356wc;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0840cb, io.appmetrica.analytics.impl.InterfaceC0866db
    public final InterfaceC0840cb a() {
        return this;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0840cb
    public final synchronized InterfaceC0917fb a(AppMetricaConfig appMetricaConfig) {
        C1350w6 c1350w6;
        try {
            c1350w6 = this.k;
            if (c1350w6 != null) {
                c1350w6.a(appMetricaConfig);
            } else {
                C1350w6 c1350w7 = new C1350w6(new C1375x6(this.b, this.f.e, this.c, appMetricaConfig));
                this.k = c1350w7;
                c1350w6 = c1350w7;
            }
        } catch (Throwable th) {
            throw th;
        }
        return c1350w6;
    }

    public final C1234ri b() {
        return this;
    }
}
