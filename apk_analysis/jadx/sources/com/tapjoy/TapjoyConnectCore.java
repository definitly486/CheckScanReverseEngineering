package com.tapjoy;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.tapjoy.internal.e1;
import com.tapjoy.internal.f1;
import com.tapjoy.internal.h1;
import com.tapjoy.internal.i2;
import com.tapjoy.internal.j1;
import com.tapjoy.internal.k1;
import com.tapjoy.internal.n1;
import com.tapjoy.internal.q1;
import com.tapjoy.internal.s1;
import com.tapjoy.internal.u1;
import com.tapjoy.internal.v1;
import com.tapjoy.internal.x0;
import com.tapjoy.internal.z0;
import defpackage.a80;
import defpackage.dh1;
import defpackage.jg;
import defpackage.m97;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.lang.ref.WeakReference;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyConnectCore {
    public static TapjoyConnectCore j = new TapjoyConnectCore();
    public PackageManager f;
    public Context a = null;
    public TJConnectListener b = null;
    public boolean c = false;
    public String d = "";
    public String e = "";
    public Hashtable g = TapjoyConnectFlag.CONNECT_FLAG_DEFAULTS;
    public final ConcurrentLinkedQueue h = new ConcurrentLinkedQueue();
    public final ExecutorService i = Executors.newSingleThreadExecutor();

    public static TapjoyConnectCore getInstance() {
        TapjoyConnectCore tapjoyConnectCore = j;
        if (tapjoyConnectCore != null) {
            return tapjoyConnectCore;
        }
        TapjoyConnectCore tapjoyConnectCore2 = new TapjoyConnectCore();
        j = tapjoyConnectCore2;
        return tapjoyConnectCore2;
    }

    public final void a(Context context, String str) {
        this.a = context;
        this.f = context.getPackageManager();
        TJApiDecoded.INSTANCE.decode(str);
        TJTracking.INSTANCE.init();
        i2.c.a();
        TJPrivacyPolicy.getInstance().a(context);
        if (this.g == null) {
            this.g = new Hashtable();
        }
        try {
            PackageManager packageManager = this.f;
            if (packageManager != null) {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(this.a.getPackageName(), 128);
                if (applicationInfo == null || applicationInfo.metaData == null) {
                    TapjoyLog.d("No metadata present.");
                } else {
                    for (String str2 : TapjoyConnectFlag.FLAG_ARRAY) {
                        String string = applicationInfo.metaData.getString("tapjoy." + str2);
                        if (string != null) {
                            TapjoyLog.d("Found manifest flag: " + str2 + ", " + string);
                            addConnectFlag(str2, string);
                        }
                    }
                    TapjoyLog.d("Metadata successfully loaded");
                }
            }
        } catch (Exception e) {
            TapjoyLog.e("Error reading manifest meta-data -- " + e);
        }
        int identifier = this.a.getResources().getIdentifier("raw/tapjoy_config", null, this.a.getPackageName());
        if (identifier != 0) {
            try {
                Properties properties = new Properties();
                properties.load(this.a.getResources().openRawResource(identifier));
                Enumeration enumerationKeys = properties.keys();
                while (enumerationKeys.hasMoreElements()) {
                    try {
                        String str3 = (String) enumerationKeys.nextElement();
                        addConnectFlag(str3, (String) properties.get(str3));
                    } catch (ClassCastException unused) {
                        TapjoyLog.e("Error parsing configuration properties in tapjoy_config.txt");
                    }
                }
            } catch (Exception unused2) {
            }
        }
        TJIntegrationCheck.INSTANCE.integrationCheck();
        this.e = TapjoyUtil.getRedirectDomain(getConnectFlagValue(TapjoyConnectFlag.SERVICE_URL));
        if (this.g != null) {
            TapjoyLog.i("Connect Flags:");
            TapjoyLog.i("--------------------");
            for (Map.Entry entry : this.g.entrySet()) {
                TapjoyLog.i("key: " + ((String) entry.getKey()) + ", value: " + Uri.encode(entry.getValue().toString()));
            }
            TapjoyLog.i("hostURL: [" + getConnectFlagValue(TapjoyConnectFlag.SERVICE_URL) + "]");
            TapjoyLog.i("redirectDomain: [" + this.e + "]");
            TapjoyLog.i("--------------------");
        }
    }

    public void addConnectFlag(String str, String str2) {
        if ((str.equals(TapjoyConnectFlag.SERVICE_URL) || str.equals(TapjoyConnectFlag.PLACEMENT_URL)) && !str2.endsWith("/")) {
            str2 = str2.concat("/");
        }
        this.g.put(str, str2);
    }

    public final /* synthetic */ void b() {
        new h1().a(this.a, this.b);
    }

    public final /* synthetic */ void c() {
        new TJAppSetId().fetch(this.a, new dh1(this, 3));
    }

    public Map<String, String> getBaseURLParams() {
        String str;
        String str2;
        e1 e1Var = new e1();
        HashMap map = new HashMap();
        s1 s1Var = e1Var.f;
        s1Var.getClass();
        Boolean bool = s1Var.a;
        String str3 = CommonUrlParts.Values.FALSE_INTEGER;
        if (bool != null) {
            str = bool.booleanValue() ? "1" : CommonUrlParts.Values.FALSE_INTEGER;
        } else {
            str = null;
        }
        TapjoyUtil.safePut(map, TapjoyConstants.PREF_BELOW_CONSENT_AGE, str, true);
        Boolean bool2 = s1Var.b;
        if (bool2 != null) {
            str2 = bool2.booleanValue() ? "1" : CommonUrlParts.Values.FALSE_INTEGER;
        } else {
            str2 = null;
        }
        TapjoyUtil.safePut(map, TapjoyConstants.PREF_SUBJECT_TO_GDPR, str2, true);
        Boolean bool3 = s1Var.e;
        if (bool3 == null) {
            str3 = null;
        } else if (bool3.booleanValue()) {
            str3 = "1";
        }
        TapjoyUtil.safePut(map, "package_usage_stats_consent", str3, true);
        TapjoyUtil.safePut(map, TapjoyConstants.PREF_USER_CONSENT, s1Var.c, true);
        TapjoyUtil.safePut(map, TapjoyConstants.PREF_US_PRIVACY, s1Var.d, true);
        e1Var.g.a(map);
        u1 u1Var = e1Var.c;
        if (u1Var != null) {
            TapjoyUtil.safePut(map, TJVerifierKt.TJC_VERIFIER, u1Var.a, true);
            Boolean bool4 = u1Var.b;
            TapjoyUtil.safePut(map, "debug", bool4 != null ? bool4.toString() : null, true);
            TapjoyUtil.safePut(map, "test_id", u1Var.f, true);
            TapjoyUtil.safePut(map, "install_id", u1Var.g, true);
            TapjoyUtil.safePut(map, "plugin", u1Var.e, true);
            TapjoyUtil.safePut(map, "sdk_type", u1Var.c, true);
            TapjoyUtil.safePut(map, "library_version", u1Var.h, true);
            TapjoyUtil.safePut(map, "library_revision", u1Var.i, true);
            TapjoyUtil.safePut(map, "bridge_version", u1Var.j, true);
            TapjoyUtil.safePut(map, "installed", u1Var.d);
            v1 v1Var = u1Var.k;
            v1Var.getClass();
            TapjoyUtil.safePut(map, "session_id", v1Var.a, true);
            TapjoyUtil.safePut(map, "fq7", v1Var.g);
            TapjoyUtil.safePut(map, "fq30", v1Var.h);
            TapjoyUtil.safePut(map, "session_total_count", v1Var.d);
            TapjoyUtil.safePut(map, "session_total_length", v1Var.e);
            TapjoyUtil.safePut(map, "session_last_at", v1Var.c);
            TapjoyUtil.safePut(map, "session_last_length", v1Var.b);
            TapjoyUtil.safePut(map, "session_duration", v1Var.f);
        }
        z0 z0Var = e1Var.e;
        z0Var.getClass();
        TapjoyUtil.safePut(map, CommonUrlParts.APP_ID, z0Var.a, true);
        TapjoyUtil.safePut(map, "app_version", z0Var.d, true);
        TapjoyUtil.safePut(map, "app_group_id", z0Var.h, true);
        TapjoyUtil.safePut(map, "pkg_ver", z0Var.f, true);
        TapjoyUtil.safePut(map, "pkg_rev", z0Var.g, true);
        TapjoyUtil.safePut(map, "pkg_id", z0Var.e, true);
        TapjoyUtil.safePut(map, "category", z0Var.i, true);
        q1 q1Var = z0Var.j;
        q1Var.getClass();
        TapjoyUtil.safePut(map, "cp", q1Var.a, true);
        j1 j1Var = e1Var.d;
        if (j1Var != null) {
            TapjoyUtil.safePut(map, "managed_device_id", j1Var.a, true);
            TapjoyUtil.safePut(map, "device_name", j1Var.e, true);
            TapjoyUtil.safePut(map, CommonUrlParts.DEVICE_TYPE, j1Var.b, true);
            TapjoyUtil.safePut(map, "connection_type", j1Var.c, true);
            TapjoyUtil.safePut(map, "connection_subtype", j1Var.d, true);
            TapjoyUtil.safePut(map, "volume", j1Var.f);
            TapjoyUtil.safePut(map, "brightness", j1Var.h);
            TapjoyUtil.safePut(map, "battery", j1Var.g);
            TapjoyUtil.safePut(map, "display_w", j1Var.i);
            TapjoyUtil.safePut(map, "display_h", j1Var.j);
            TapjoyUtil.safePut(map, "display_d", j1Var.k);
            TapjoyUtil.safePut(map, "screen_density", j1Var.k);
            k1 k1Var = j1Var.l;
            k1Var.getClass();
            TapjoyUtil.safePut(map, "country_code", k1Var.a, true);
            n1 n1Var = j1Var.n;
            n1Var.getClass();
            TapjoyUtil.safePut(map, "advertising_id", n1Var.e, true);
            TapjoyUtil.safePut(map, "platform", n1Var.f, true);
            TapjoyUtil.safePut(map, CommonUrlParts.OS_VERSION, n1Var.g, true);
            TapjoyUtil.safePut(map, "language_code", n1Var.a, true);
            TapjoyUtil.safePut(map, "theme", n1Var.i, true);
            TapjoyUtil.safePut(map, "timezone", n1Var.h, true);
            TapjoyUtil.safePut(map, "store", n1Var.b, true);
            TapjoyUtil.safePut(map, "store_view", String.valueOf(n1Var.c), true);
            TapjoyUtil.safePut(map, "ad_tracking_enabled", String.valueOf(n1Var.d), true);
            x0 x0Var = n1Var.j;
            x0Var.getClass();
            TapjoyUtil.safePut(map, "android_id", x0Var.d, true);
            TapjoyUtil.safePut(map, "device_manufacturer", x0Var.e, true);
            TapjoyUtil.safePut(map, "installer", x0Var.b, true);
            TapjoyUtil.safePut(map, "ad_id_check_disabled", String.valueOf(x0Var.i), true);
            TapjoyUtil.safePut(map, "legacy_id_fallback_allowed", String.valueOf(x0Var.j), true);
            TapjoyUtil.safePut(map, "packaged_gps_version", x0Var.g, true);
            TapjoyUtil.safePut(map, "device_gps_version", x0Var.f, true);
            TapjoyUtil.safePut(map, "optout_adid", String.valueOf(x0Var.h), true);
            TapjoyUtil.safePut(map, CommonUrlParts.APP_SET_ID, x0Var.c, true);
            TapjoyUtil.safePut(map, "pkg_sign", x0Var.k, true);
            TapjoyUtil.safePut(map, "screen_layout_size", x0Var.a);
            TapjoyUtil.safePut(map, "avail_disk", x0Var.l);
            TapjoyUtil.safePut(map, "total_disk", x0Var.m);
            TapjoyUtil.safePut(map, "target_sdk", x0Var.q);
            TapjoyUtil.safePut(map, "min_sdk", x0Var.p);
            TapjoyUtil.safePut(map, "ad_unit_theme_changed", String.valueOf(x0Var.n), true);
            TapjoyUtil.safePut(map, "web_theme_changed", String.valueOf(x0Var.o), true);
            f1 f1Var = j1Var.m;
            f1Var.getClass();
            TapjoyUtil.safePut(map, "carrier_name", f1Var.a, true);
            TapjoyUtil.safePut(map, "carrier_country_code", f1Var.c, true);
            TapjoyUtil.safePut(map, "mobile_network_code", f1Var.e, true);
            TapjoyUtil.safePut(map, "mobile_country_code", f1Var.d, true);
            TapjoyUtil.safePut(map, "country_sim", f1Var.f, true);
        }
        TapjoyUtil.safePut(map, TJVerifierKt.TJC_TIMESTAMP, Long.valueOf(e1Var.b));
        return map;
    }

    public String getConnectFlagValue(String str) {
        Hashtable hashtable = this.g;
        return (hashtable == null || hashtable.get(str) == null) ? "" : this.g.get(str).toString();
    }

    public Context getContext() {
        Context context = this.a;
        if (context == null) {
            context = com.tapjoy.internal.i.a;
            if (context == null) {
                WeakReference weakReference = com.tapjoy.internal.i.c.a;
                context = (Context) (weakReference != null ? weakReference.get() : null);
            }
            this.a = context;
        }
        return context;
    }

    public String getCustomParameter() {
        return this.d;
    }

    public String getHostURL() {
        return getConnectFlagValue(TapjoyConnectFlag.SERVICE_URL);
    }

    public String getPlacementURL() {
        return getConnectFlagValue(TapjoyConnectFlag.PLACEMENT_URL);
    }

    public String getRedirectDomain() {
        return this.e;
    }

    public boolean isConnected() {
        return this.c;
    }

    public boolean isViewOpen() {
        TapjoyLog.d("isViewOpen: " + this.h.size());
        return !this.h.isEmpty();
    }

    public void release() {
        j = null;
        TapjoyLog.d("Releasing core static instance.");
    }

    public void requestTapjoyConnect(Context context, String str, Hashtable<String, ?> hashtable, TJConnectListener tJConnectListener) {
        if (hashtable != null) {
            this.g.putAll(hashtable);
            com.tapjoy.internal.m0 m0Var = i2.c.a;
            m0Var.getClass();
            HashMap map = new HashMap();
            for (Map.Entry<String, ?> entry : hashtable.entrySet()) {
                String key = (String) com.tapjoy.internal.m0.f.get(entry.getKey());
                if (key == null) {
                    key = entry.getKey();
                }
                m0Var.c.a.remove(key);
                map.put(key, entry.getValue());
            }
            m0Var.d.a = map;
            m0Var.setChanged();
        }
        this.b = tJConnectListener;
        try {
            a(context, str);
            a();
        } catch (TapjoyIntegrationException e) {
            TapjoyLog.e(e.getMessage());
            b(1, e.getMessage());
            com.tapjoy.internal.s.b.notifyObservers(Boolean.FALSE);
        } catch (TapjoyException e2) {
            TapjoyLog.e(e2.getMessage());
            b(2, e2.getMessage());
            com.tapjoy.internal.s.b.notifyObservers(Boolean.FALSE);
        }
    }

    public void setConnected(boolean z) {
        this.c = z;
    }

    public void setCustomParameter(String str) {
        this.d = str;
    }

    public void viewDidClose(String str) {
        jg.f("viewDidClose: ", str);
        this.h.remove(str);
        com.tapjoy.internal.s.d.notifyObservers();
    }

    public void viewWillOpen(String str) {
        jg.f("viewWillOpen: ", str);
        this.h.offer(str);
    }

    public final void b(final int i, final String str) {
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: lk8
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(i, str);
            }
        });
    }

    public final void a() {
        this.i.execute(new m97(this, 1));
    }

    public final /* synthetic */ void a(String str) {
        TJTracking.INSTANCE.setAppSetID(str);
        this.i.execute(new a80(this, 1));
    }

    public final /* synthetic */ void a(int i, String str) {
        TJConnectListener tJConnectListener = this.b;
        if (tJConnectListener != null) {
            tJConnectListener.onConnectFailure(i, str);
        }
    }
}
