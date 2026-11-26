package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Go {
    public final Ho a;

    public Go(C1024jf c1024jf, Ko ko, String str) {
        this.a = new Ho(c1024jf, ko, new defpackage.k(2));
    }

    public static final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        Boolean bool = Boolean.FALSE;
        jSONObject3.put("first_event_done", JsonUtils.optBooleanOrNullable(jSONObject2, "first_event_done", JsonUtils.optBooleanOrNullable(jSONObject, "first_event_done", bool)));
        jSONObject3.put("init_event_done", JsonUtils.optBooleanOrNullable(jSONObject2, "init_event_done", JsonUtils.optBooleanOrNullable(jSONObject, "init_event_done", bool)));
        jSONObject3.put("report_request_id", AbstractC1305ub.a(jSONObject2, "report_request_id", AbstractC1305ub.a(jSONObject, "report_request_id", -1)));
        jSONObject3.put("global_number", JsonUtils.optLongOrDefault(jSONObject2, "global_number", JsonUtils.optLongOrDefault(jSONObject, "global_number", 0L)));
        jSONObject3.put("session_id", JsonUtils.optLongOrDefault(jSONObject2, "session_id", JsonUtils.optLongOrDefault(jSONObject, "session_id", -1L)));
        jSONObject3.put("referrer_handled", JsonUtils.optBooleanOrNullable(jSONObject2, "referrer_handled", JsonUtils.optBooleanOrNullable(jSONObject, "referrer_handled", bool)));
        jSONObject3.put("numbers_of_type", JsonUtils.optJsonObjectOrNullable(jSONObject2, "numbers_of_type", JsonUtils.optJsonObjectOrNull(jSONObject, "numbers_of_type")));
        jSONObject3.put("open_id", AbstractC1305ub.a(jSONObject2, "open_id", AbstractC1305ub.a(jSONObject, "open_id", 1)));
        jSONObject3.put("attribution_id", AbstractC1305ub.a(jSONObject2, "attribution_id", AbstractC1305ub.a(jSONObject, "attribution_id", 1)));
        jSONObject3.put("last_migration_api_level", AbstractC1305ub.a(jSONObject2, "last_migration_api_level", AbstractC1305ub.a(jSONObject, "last_migration_api_level", 0)));
        jSONObject3.put("external_attribution_window_start", JsonUtils.optLongOrDefault(jSONObject2, "external_attribution_window_start", JsonUtils.optLongOrDefault(jSONObject, "external_attribution_window_start", -1L)));
        return jSONObject3;
    }

    public final synchronized void b(int i) {
        JSONObject jSONObjectA = this.a.a();
        if (jSONObjectA.optInt("last_migration_api_level", 0) != i) {
            this.a.a(jSONObjectA.put("last_migration_api_level", i));
        }
        Ho ho = this.a;
        Ho.a(ho.a);
        Ho.a(ho.b);
    }

    public final synchronized void c(int i) {
        JSONObject jSONObjectA = this.a.a();
        if (jSONObjectA.optInt("open_id", 1) != i) {
            this.a.a(jSONObjectA.put("open_id", i));
        }
    }

    public final synchronized boolean d() {
        return this.a.a().optBoolean("init_event_done", false);
    }

    public final synchronized boolean c() {
        return this.a.a().optBoolean("first_event_done", false);
    }

    public final synchronized int b() {
        return this.a.a().optInt("open_id", 1);
    }

    public final synchronized void b(long j) {
        JSONObject jSONObjectA = this.a.a();
        if (jSONObjectA.optLong("session_id", -1L) != j) {
            this.a.a(jSONObjectA.put("session_id", j));
        }
    }

    public final synchronized int a() {
        return this.a.a().optInt("attribution_id", 1);
    }

    public final synchronized void a(int i) {
        JSONObject jSONObjectA = this.a.a();
        if (jSONObjectA.optInt("attribution_id", 1) == i) {
            return;
        }
        this.a.a(jSONObjectA.put("attribution_id", i));
        Ho ho = this.a;
        Ho.a(ho.a);
        Ho.a(ho.b);
    }

    public final synchronized void a(long j) {
        JSONObject jSONObjectA = this.a.a();
        if (jSONObjectA.optLong("external_attribution_window_start", -1L) != j) {
            this.a.a(jSONObjectA.put("external_attribution_window_start", j));
        }
        Ho ho = this.a;
        Ho.a(ho.a);
        Ho.a(ho.b);
    }
}
