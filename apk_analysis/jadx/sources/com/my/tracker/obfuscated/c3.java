package com.my.tracker.obfuscated;

import android.os.Handler;
import android.text.TextUtils;
import com.my.tracker.MyTracker;
import com.my.tracker.MyTrackerConfig;
import com.my.tracker.MyTrackerParams;
import com.my.tracker.config.AntiFraudConfig;
import defpackage.n7;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class c3 {
    private final MyTrackerParams a = new MyTrackerParams();
    final List b = new ArrayList();
    private String c = "";
    private AntiFraudConfig d = AntiFraudConfig.newBuilder().build();
    private volatile boolean e = true;
    private volatile int f = 0;
    private volatile boolean g = true;
    private volatile boolean h = true;
    private volatile boolean i = true;
    private volatile boolean j = true;
    private volatile boolean k = false;
    private volatile int l = 30;
    private volatile int m = 0;
    private volatile int n = 900;
    private volatile String o = null;
    private volatile String p = null;
    private volatile MyTrackerConfig.InstalledPackagesProvider q = null;
    private volatile MyTrackerConfig.OkHttpClientProvider r = null;
    private volatile String s = "";
    private volatile String t = "";
    private volatile String u = "";
    private volatile String v = "";
    private volatile String w = "";
    private volatile MyTracker.AttributionListener x = null;
    private volatile Handler y = null;

    public static class a {
        public final String a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final boolean f;
        public final boolean g;
        public final boolean h;
        public final boolean i;
        public final boolean j;
        public final MyTrackerParams.a k;
        public final AntiFraudConfig l;
        public final MyTrackerConfig.InstalledPackagesProvider m;

        public a(String str, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, MyTrackerParams.a aVar, AntiFraudConfig antiFraudConfig, MyTrackerConfig.InstalledPackagesProvider installedPackagesProvider) {
            this.a = str;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = z;
            this.g = z2;
            this.h = z3;
            this.i = z4;
            this.j = z5;
            this.k = aVar;
            this.l = antiFraudConfig;
            this.m = installedPackagesProvider;
        }
    }

    private c3() {
        z();
    }

    private void d(String str) {
        this.s = e3.a(str, "v3/");
        b3.a("trackerUrl set = " + this.s);
        this.t = e3.a("ip4", str, null);
        b3.a("ipv4TrackerUrl set = " + this.t);
        this.w = e3.a("ts", str, "mobile/v1");
        b3.a("timeSpentUrl set = " + this.w);
        this.u = e3.a("mlapi", str, null);
        this.v = e3.a("beta-ml", str, null);
    }

    public static c3 y() {
        return new c3();
    }

    private void z() {
        d("tracker-api.vk-analytics.ru");
    }

    public void A() {
        this.p = "com.my.games.vendorapp";
    }

    public void a(int i) {
        int i2 = 86400;
        if (i <= 86400) {
            i2 = 1;
            if (i < 1) {
                b3.a("Invalid bufferingPeriod value " + i + ", bufferingPeriod set to min 1");
            }
            this.n = i;
        }
        b3.a("Invalid bufferingPeriod value " + i + ", bufferingPeriod set to max 86400");
        i = i2;
        this.n = i;
    }

    public void b(int i) {
        if (i > 432000) {
            b3.a("Invalid forcingPeriod value " + i + ", forcingPeriod set to max 432000");
            this.m = 432000;
            return;
        }
        if (i >= 0) {
            this.m = i;
            return;
        }
        b3.a("Invalid forcingPeriod value " + i + ", forcingPeriod set to min 0");
        this.m = 0;
    }

    public void c(String str) {
        String strSubstring;
        String host;
        try {
            if (TextUtils.isEmpty(str)) {
                b3.c("setProxyHost: reset proxy host to default = tracker-api.vk-analytics.ru");
                z();
                return;
            }
            b3.c("setProxyHost: try to set proxy host = " + str);
            int iIndexOf = str.indexOf("://");
            if (iIndexOf > 0) {
                b3.c("setProxyHost: detected custom schema, will be suppressed");
                strSubstring = str.substring(iIndexOf + 3);
            } else {
                strSubstring = str;
            }
            URI uri = new URI(e3.a(strSubstring, null));
            if (uri.getUserInfo() != null) {
                b3.c("setProxyHost: detected custom userinfo, will be suppressed");
            }
            if (!TextUtils.isEmpty(uri.getPath())) {
                b3.c("setProxyHost: detected custom path, will be suppressed");
            }
            int port = uri.getPort();
            if (port != -1) {
                host = uri.getHost() + StringUtils.PROCESS_POSTFIX_DELIMITER + port;
            } else {
                host = uri.getHost();
            }
            if (host.startsWith("www.")) {
                b3.c("setProxyHost: proxyHost starts from 'www.' which is not recommended (check docs), continue anyway");
            }
            d(host);
            b3.c("setProxyHost: proxy host = " + host + " successfully set");
        } catch (Throwable th) {
            StringBuilder sbD = n7.d("setProxyHost: unable to set proxy host = ", str, " (reason: invalid url), using default = tracker-api.vk-analytics.ru,\norig error = ");
            sbD.append(th.getMessage());
            b3.c(sbD.toString());
            z();
        }
    }

    public int e() {
        return this.n;
    }

    public int f() {
        return this.m;
    }

    public String g() {
        return this.c;
    }

    public String h() {
        return this.t;
    }

    public int i() {
        return this.l;
    }

    public int j() {
        return this.f;
    }

    public String k() {
        return this.v;
    }

    public String l() {
        return this.u;
    }

    public MyTrackerParams m() {
        return this.a;
    }

    public MyTrackerConfig.OkHttpClientProvider n() {
        return this.r;
    }

    public a o() {
        return new a(this.c, this.l, this.n, this.m, this.f, this.e, this.g, this.h, this.i, this.j, this.a.a(), this.d, this.q);
    }

    public String p() {
        return this.w;
    }

    public String q() {
        return this.s;
    }

    public String r() {
        return this.p;
    }

    public boolean s() {
        return this.h;
    }

    public boolean t() {
        return this.k;
    }

    public boolean u() {
        return this.g;
    }

    public boolean v() {
        return this.e;
    }

    public boolean w() {
        return this.i;
    }

    public boolean x() {
        return this.j;
    }

    public void e(String str) {
        this.p = str;
    }

    public void f(boolean z) {
        this.i = z;
    }

    public void g(boolean z) {
        this.j = z;
    }

    public void e(boolean z) {
        this.e = z;
    }

    public void a(String str) {
        this.o = str;
    }

    public void a(MyTrackerConfig.InstalledPackagesProvider installedPackagesProvider) {
        this.q = installedPackagesProvider;
    }

    public void a(MyTracker.AttributionListener attributionListener, Handler handler) {
        this.x = attributionListener;
        this.y = handler;
    }

    public void b(String str) {
        this.c = str;
    }

    public void a(MyTrackerConfig.OkHttpClientProvider okHttpClientProvider) {
        this.r = okHttpClientProvider;
    }

    public String b() {
        return this.o;
    }

    public AntiFraudConfig a() {
        return this.d;
    }

    public void b(boolean z) {
        this.h = z;
    }

    public void a(AntiFraudConfig antiFraudConfig) {
        this.d = antiFraudConfig;
    }

    public void a(v vVar, v vVar2) {
        synchronized (this.b) {
            vVar.a(Boolean.valueOf(this.k));
            this.b.add(vVar2);
        }
    }

    private void a(boolean z) {
        synchronized (this.b) {
            try {
                Iterator it = this.b.iterator();
                while (it.hasNext()) {
                    ((v) it.next()).a(Boolean.valueOf(z));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d(int i) {
        this.f = i;
    }

    public MyTracker.AttributionListener d() {
        return this.x;
    }

    public void d(boolean z) {
        this.g = z;
    }

    public void c(int i) {
        int i2 = 7200;
        if (i > 7200) {
            b3.a("Invalid launchTimeout value " + i + ", timeout set to max 7200");
        } else {
            i2 = 30;
            if (i < 30) {
                b3.a("Invalid launchTimeout value " + i + ", timeout set to min 30");
            }
            this.l = i;
        }
        i = i2;
        this.l = i;
    }

    public void c(boolean z) {
        a(z);
        this.k = z;
    }

    public Handler c() {
        return this.y;
    }
}
