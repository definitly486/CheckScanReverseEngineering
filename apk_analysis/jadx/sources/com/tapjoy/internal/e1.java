package com.tapjoy.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJTracking;
import com.tapjoy.TJVerifierKt;
import com.tapjoy.TapjoyConnectCore;
import com.tapjoy.TapjoyConstants;
import defpackage.jg;
import defpackage.qa8;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class e1 {
    public final String a;
    public final long b;
    public final u1 c;
    public final j1 d;
    public final z0 e;
    public final s1 f;
    public final y1 g;
    public final String h;

    public e1(z0 z0Var, s1 s1Var, y1 y1Var) {
        z0Var.getClass();
        s1Var.getClass();
        y1Var.getClass();
        this.a = "";
        this.b = -1L;
        this.c = null;
        this.d = null;
        this.e = z0Var;
        this.f = s1Var;
        this.g = y1Var;
        String hostURL = TapjoyConnectCore.getInstance().getHostURL();
        hostURL.getClass();
        this.h = hostURL;
        String string = UUID.randomUUID().toString();
        string.getClass();
        this.a = string;
        this.b = System.currentTimeMillis() / 1000;
        try {
            Future<?> futureFetchAdvertisingID = TJTracking.INSTANCE.fetchAdvertisingID(TapjoyConnectCore.getInstance().getContext());
            if (futureFetchAdvertisingID != null) {
                futureFetchAdvertisingID.get();
            }
        } catch (Exception e) {
            jg.f("Error fetching advertising ID: ", e.getMessage());
        }
        this.c = new u1(this.b);
        this.d = new j1();
    }

    public Map a() {
        HashMap map = new HashMap();
        map.put("accept", "application/json");
        map.put("Content-Type", "application/json");
        return map;
    }

    public JSONObject b() throws JSONException {
        JSONObject jSONObject;
        z0 z0Var = this.e;
        z0Var.getClass();
        JSONObject jSONObject2 = new JSONObject();
        u.a(jSONObject2, TtmlNode.ATTR_ID, z0Var.a);
        u.a(jSONObject2, "unityads_idfi", z0Var.b);
        u.a(jSONObject2, "auid", z0Var.c);
        u.a(jSONObject2, "version", z0Var.d);
        u.a(jSONObject2, "pkg_id", z0Var.e);
        u.a(jSONObject2, "version_build", z0Var.g);
        u.a(jSONObject2, FirebaseAnalytics.Param.GROUP_ID, z0Var.h);
        u.a(jSONObject2, "category", z0Var.i);
        q1 q1Var = z0Var.j;
        q1Var.getClass();
        JSONObject jSONObject3 = new JSONObject();
        u.a(jSONObject3, "cp", q1Var.a);
        u.a(jSONObject2, "publisher", jSONObject3);
        j1 j1Var = this.d;
        JSONObject jSONObject4 = null;
        if (j1Var != null) {
            jSONObject = new JSONObject();
            u.a(jSONObject, "name", j1Var.e);
            u.a(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, j1Var.b);
            u.a(jSONObject, "volume", j1Var.f);
            u.a(jSONObject, "battery", j1Var.g);
            u.a(jSONObject, "brightness", j1Var.h);
            u.a(jSONObject, "display_w", j1Var.i);
            u.a(jSONObject, "display_h", j1Var.j);
            u.a(jSONObject, "display_d", j1Var.k);
            u.a(jSONObject, "connection_type", j1Var.c);
            u.a(jSONObject, "connection_subtype", j1Var.d);
            u.a(jSONObject, "managed_device_id", j1Var.a);
            k1 k1Var = j1Var.l;
            k1Var.getClass();
            JSONObject jSONObject5 = new JSONObject();
            u.a(jSONObject5, "country_code", k1Var.a);
            u.a(jSONObject, "geo", jSONObject5);
            n1 n1Var = j1Var.n;
            n1Var.getClass();
            JSONObject jSONObject6 = new JSONObject();
            u.a(jSONObject6, "name", n1Var.f);
            u.a(jSONObject6, "version", n1Var.g);
            u.a(jSONObject6, "language_code", n1Var.a);
            u.a(jSONObject6, "timezone", n1Var.h);
            u.a(jSONObject6, "theme", n1Var.i);
            u.a(jSONObject6, "advertising_id", n1Var.e);
            u.a(jSONObject6, "ad_tracking_enabled", Boolean.valueOf(n1Var.d));
            u.a(jSONObject6, "store", n1Var.b);
            u.a(jSONObject6, "store_view", n1Var.c);
            x0 x0Var = n1Var.j;
            x0Var.getClass();
            JSONObject jSONObject7 = new JSONObject();
            u.a(jSONObject7, "android_id", x0Var.d);
            u.a(jSONObject7, CommonUrlParts.MANUFACTURER, x0Var.e);
            u.a(jSONObject7, CommonUrlParts.APP_SET_ID, x0Var.c);
            u.a(jSONObject7, "device_gps_version", x0Var.f);
            u.a(jSONObject7, "packaged_gps_version", x0Var.g);
            u.a(jSONObject7, "ad_id_check_disabled", x0Var.i);
            u.a(jSONObject7, "legacy_id_fallback_allowed", x0Var.j);
            u.a(jSONObject7, "optout_adid", x0Var.h);
            u.a(jSONObject7, "installer", x0Var.b);
            u.a(jSONObject7, "pkg_sign", x0Var.k);
            u.a(jSONObject7, "screen_layout_size", x0Var.a);
            u.a(jSONObject7, "avail_disk", x0Var.l);
            u.a(jSONObject7, "total_disk", x0Var.m);
            u.a(jSONObject7, "target_sdk", x0Var.q);
            u.a(jSONObject7, "min_sdk", x0Var.p);
            u.a(jSONObject7, "ad_unit_theme_changed", x0Var.n);
            u.a(jSONObject7, "web_theme_changed", x0Var.o);
            u.a(jSONObject6, "android", jSONObject7);
            u.a(jSONObject, "os", jSONObject6);
            JSONArray jSONArray = new JSONArray();
            f1 f1Var = j1Var.m;
            f1Var.getClass();
            JSONObject jSONObject8 = new JSONObject();
            u.a(jSONObject8, "carrier_name", f1Var.a);
            u.a(jSONObject8, "carrier_name_sim", f1Var.b);
            u.a(jSONObject8, "country_sim", f1Var.f);
            u.a(jSONObject8, "carrier_country_code", f1Var.c);
            String str = f1Var.d;
            u.a(jSONObject8, "mobile_country_code", str != null ? qa8.o(10, str) : null);
            String str2 = f1Var.e;
            u.a(jSONObject8, "mobile_network_code", str2 != null ? qa8.o(10, str2) : null);
            u.a(jSONObject, "carriers", jSONArray.put(jSONObject8));
        } else {
            jSONObject = null;
        }
        s1 s1Var = this.f;
        s1Var.getClass();
        JSONObject jSONObject9 = new JSONObject();
        u.a(jSONObject9, TapjoyConstants.PREF_BELOW_CONSENT_AGE, s1Var.a);
        u.a(jSONObject9, TapjoyConstants.PREF_SUBJECT_TO_GDPR, s1Var.b);
        u.a(jSONObject9, TapjoyConstants.PREF_USER_CONSENT, s1Var.c);
        u.a(jSONObject9, TapjoyConstants.PREF_US_PRIVACY, s1Var.d);
        Boolean bool = s1Var.e;
        u.a(jSONObject9, "package_usage_stats_consent", Boolean.valueOf(bool != null ? bool.booleanValue() : false));
        u1 u1Var = this.c;
        if (u1Var != null) {
            jSONObject4 = new JSONObject();
            u.a(jSONObject4, "debug", u1Var.b);
            u.a(jSONObject4, TJVerifierKt.TJC_VERIFIER, u1Var.a);
            u.a(jSONObject4, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, u1Var.c);
            u.a(jSONObject4, "installed", u1Var.d);
            u.a(jSONObject4, "plugin", u1Var.e);
            u.a(jSONObject4, "test_id", u1Var.f);
            u.a(jSONObject4, "install_id", u1Var.g);
            u.a(jSONObject4, "version", u1Var.h);
            u.a(jSONObject4, "revision", u1Var.i);
            u.a(jSONObject4, "bridge_version", u1Var.j);
            v1 v1Var = u1Var.k;
            v1Var.getClass();
            JSONObject jSONObject10 = new JSONObject();
            u.a(jSONObject10, TtmlNode.ATTR_ID, v1Var.a);
            u.a(jSONObject10, "last_length", v1Var.b);
            u.a(jSONObject10, "last_at", v1Var.c);
            u.a(jSONObject10, "total_count", v1Var.d);
            u.a(jSONObject10, "total_length", v1Var.e);
            u.a(jSONObject10, TypedValues.TransitionType.S_DURATION, v1Var.f);
            u.a(jSONObject10, "fq7", v1Var.g);
            u.a(jSONObject10, "fq30", v1Var.h);
            u.a(jSONObject4, "session", jSONObject10);
        }
        y1 y1Var = this.g;
        y1Var.getClass();
        JSONObject jSONObject11 = new JSONObject();
        u.a(jSONObject11, TtmlNode.ATTR_ID, y1Var.a);
        u.a(jSONObject11, "segment", y1Var.c);
        u.a(jSONObject11, FirebaseAnalytics.Param.LEVEL, y1Var.b);
        u.a(jSONObject11, "tags", new JSONArray((Collection) y1Var.d));
        w0 w0Var = y1Var.e;
        w0Var.getClass();
        JSONObject jSONObject12 = new JSONObject();
        u.a(jSONObject12, "uptime", w0Var.a);
        r1 r1Var = w0Var.b;
        r1Var.getClass();
        JSONObject jSONObject13 = new JSONObject();
        u.a(jSONObject13, "currency_code", r1Var.a);
        u.a(jSONObject13, "total_price", r1Var.b);
        u.a(jSONObject13, "last_at", r1Var.c);
        u.a(jSONObject13, "last_price", r1Var.d);
        u.a(jSONObject13, "total_count", r1Var.e);
        u.a(jSONObject12, FirebaseAnalytics.Event.PURCHASE, jSONObject13);
        u.a(jSONObject11, "analytics", jSONObject12);
        JSONObject jSONObject14 = new JSONObject();
        jSONObject14.putOpt(TtmlNode.ATTR_ID, this.a);
        jSONObject14.putOpt("app", jSONObject2);
        jSONObject14.putOpt("device", jSONObject);
        jSONObject14.putOpt("regs", jSONObject9);
        jSONObject14.putOpt("sdk", jSONObject4);
        jSONObject14.putOpt("user", jSONObject11);
        jSONObject14.put(TJVerifierKt.TJC_TIMESTAMP, this.b);
        return jSONObject14;
    }

    public /* synthetic */ e1() {
        this(new z0(), new s1(), new y1());
    }
}
