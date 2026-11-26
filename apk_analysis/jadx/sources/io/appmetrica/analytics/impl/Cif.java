package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.coreapi.internal.model.ScreenInfo;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.if, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
public final class Cif extends Kd {
    public static final C1076lf d = new C1076lf("UUID_RESULT", null);
    public static final C1076lf e = new C1076lf("DEVICE_ID_RESULT", null);
    public static final C1076lf f = new C1076lf("DEVICE_ID_HASH_RESULT", null);
    public static final C1076lf g = new C1076lf("AD_URL_GET_RESULT", null);
    public static final C1076lf h = new C1076lf("AD_URL_REPORT_RESULT", null);
    public static final C1076lf i = new C1076lf("CUSTOM_HOSTS", null);
    public static final C1076lf j = new C1076lf("SERVER_TIME_OFFSET", null);
    public static final C1076lf k = new C1076lf("RESPONSE_CLIDS_RESULT", null);
    public static final C1076lf l = new C1076lf("CUSTOM_SDK_HOSTS", null);
    public static final C1076lf m = new C1076lf("CLIENT_CLIDS", null);
    public static final C1076lf n = new C1076lf("DEFERRED_DEEP_LINK_WAS_CHECKED", null);
    public static final C1076lf o = new C1076lf("API_LEVEL", null);
    public static final C1076lf p = new C1076lf("NEXT_STARTUP_TIME", null);
    public static final C1076lf q = new C1076lf("GAID", null);
    public static final C1076lf r = new C1076lf("HOAID", null);
    public static final C1076lf s = new C1076lf("YANDEX_ADV_ID", null);
    public static final C1076lf t = new C1076lf("CLIENT_CLIDS_CHANGED_AFTER_LAST_IDENTIFIERS_UPDATE", null);
    public static final C1076lf u = new C1076lf("SCREEN_INFO", null);
    public static final C1076lf v = new C1076lf("SCREEN_SIZE_CHECKED_BY_DEPRECATED", null);
    public static final C1076lf w = new C1076lf("FEATURES", null);
    public static final C1076lf x = new C1076lf("APPMETRICA_CLIENT_CONFIG", null);

    public Cif(Va va) {
        super(va);
    }

    public final Cif a(C0994ia c0994ia) {
        String str = w.b;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("libSslEnabled", c0994ia.a).put("STATUS", c0994ia.b.getValue()).putOpt("ERROR_EXPLANATION", c0994ia.c);
        } catch (Throwable unused) {
        }
        return (Cif) d(str, jSONObject.toString());
    }

    public final long b(long j2) {
        return this.a.getLong(j.a, j2);
    }

    public final Cif c(long j2) {
        return (Cif) d(o.b, j2);
    }

    public final Cif d(long j2) {
        return (Cif) d(p.b, j2);
    }

    public final Cif e(long j2) {
        return (Cif) d(j.b, j2);
    }

    public final AppMetricaConfig.Builder f() {
        String string = this.a.getString(x.b, null);
        if (string == null) {
            return null;
        }
        return new U3().a(string);
    }

    public final List<String> g() {
        String string = this.a.getString(i.b, null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return AbstractC1305ub.b(string);
    }

    public final IdentifiersResult h(String str) {
        IdentifiersResult identifiersResult;
        try {
            String string = this.a.getString(str, null);
            if (string != null) {
                JSONObject jSONObject = new JSONObject(string);
                identifiersResult = new IdentifiersResult(JsonUtils.optStringOrNull(jSONObject, "ID"), IdentifierStatus.from(JsonUtils.optStringOrNull(jSONObject, "STATUS")), JsonUtils.optStringOrNull(jSONObject, "ERROR_EXPLANATION"));
            } else {
                identifiersResult = null;
            }
        } catch (Throwable unused) {
        }
        return identifiersResult == null ? new IdentifiersResult(null, IdentifierStatus.UNKNOWN, "no identifier in preferences") : identifiersResult;
    }

    public final String i(String str) {
        return this.a.getString(m.b, str);
    }

    public final Cif j(String str) {
        return (Cif) d(m.b, str);
    }

    public final C0994ia k() {
        String string = this.a.getString(w.b, null);
        try {
            if (!TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject(string);
                return new C0994ia(JsonUtils.optBooleanOrNull(jSONObject, "libSslEnabled"), IdentifierStatus.from(JsonUtils.optStringOrNull(jSONObject, "STATUS")), JsonUtils.optStringOrNull(jSONObject, "ERROR_EXPLANATION"));
            }
        } catch (Throwable unused) {
        }
        return new C0994ia(null, IdentifierStatus.UNKNOWN, null);
    }

    public final IdentifiersResult l() {
        return h(q.b);
    }

    public final IdentifiersResult m() {
        return h(r.b);
    }

    public final long n() {
        return this.a.getLong(p.b, 0L);
    }

    public final IdentifiersResult o() {
        return h(k.b);
    }

    public final ScreenInfo p() {
        return AbstractC1305ub.e(this.a.getString(u.b, null));
    }

    public final IdentifiersResult q() {
        return h(d.b);
    }

    public final IdentifiersResult r() {
        return h(s.b);
    }

    public final boolean s() {
        return this.a.getBoolean(n.b, false);
    }

    public final boolean t() {
        return this.a.getBoolean(v.b, false);
    }

    public final Cif u() {
        return (Cif) d(n.b, true);
    }

    public final void v() {
        d(v.b, true);
    }

    public final Cif b(IdentifiersResult identifiersResult) {
        return a(h.b, identifiersResult);
    }

    public final Cif c(IdentifiersResult identifiersResult) {
        return a(l.b, identifiersResult);
    }

    public final Cif d(IdentifiersResult identifiersResult) {
        return a(f.b, identifiersResult);
    }

    public final IdentifiersResult e() {
        return h(h.b);
    }

    public final Cif i(IdentifiersResult identifiersResult) {
        return a(d.b, identifiersResult);
    }

    public final Cif j(IdentifiersResult identifiersResult) {
        return a(s.b, identifiersResult);
    }

    public final Cif b(boolean z) {
        return (Cif) d(t.b, z);
    }

    public final IdentifiersResult d() {
        return h(g.b);
    }

    public final Cif e(IdentifiersResult identifiersResult) {
        return a(e.b, identifiersResult);
    }

    public final IdentifiersResult i() {
        return h(f.b);
    }

    public final IdentifiersResult j() {
        return h(e.b);
    }

    public final Cif g(IdentifiersResult identifiersResult) {
        return a(r.b, identifiersResult);
    }

    public final Cif f(IdentifiersResult identifiersResult) {
        return a(q.b, identifiersResult);
    }

    @Override // io.appmetrica.analytics.impl.Kd
    public final String g(String str) {
        return new C1076lf(str, null).b;
    }

    public final long a(long j2) {
        return this.a.getLong(o.b, j2);
    }

    public final Cif a(IdentifiersResult identifiersResult) {
        return a(g.b, identifiersResult);
    }

    public final Cif a(List<String> list) {
        return (Cif) d(i.b, xo.a((Collection) list) ? null : new JSONArray((Collection) list).toString());
    }

    public final IdentifiersResult h() {
        return h(l.b);
    }

    public final boolean a(boolean z) {
        return this.a.getBoolean(t.b, z);
    }

    public final Cif h(IdentifiersResult identifiersResult) {
        return a(k.b, identifiersResult);
    }

    @Override // io.appmetrica.analytics.impl.Kd, io.appmetrica.analytics.impl.AbstractC1050kf
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final Cif e(String str) {
        return (Cif) f(new C1076lf(str, null).b);
    }

    public final void a(ScreenInfo screenInfo) {
        d(u.b, AbstractC1305ub.a(screenInfo));
    }

    public final void a(AppMetricaConfig appMetricaConfig) {
        d(x.b, appMetricaConfig.toJson());
    }

    public final Cif a(String str, IdentifiersResult identifiersResult) {
        String string;
        if (identifiersResult != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("ID", identifiersResult.id).put("STATUS", identifiersResult.status.getValue()).put("ERROR_EXPLANATION", identifiersResult.errorExplanation);
                } catch (Throwable unused) {
                }
                string = jSONObject.toString();
            } catch (Throwable unused2) {
                string = null;
            }
        } else {
            string = null;
        }
        if (string != null) {
            d(str, string);
        }
        return this;
    }
}
