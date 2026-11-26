package io.appmetrica.analytics;

import io.appmetrica.analytics.impl.C1179pe;
import io.appmetrica.analytics.impl.C1253sb;
import io.appmetrica.analytics.impl.C1282te;
import io.appmetrica.analytics.impl.Oc;
import io.appmetrica.analytics.impl.W9;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class ExternalAttributions {
    public static ExternalAttribution adjust(Object obj) {
        return obj == null ? new C1179pe(W9.ADJUST) : new C1282te(W9.ADJUST, obj);
    }

    public static ExternalAttribution airbridge(Map<String, String> map) {
        return map == null ? new C1179pe(W9.AIRBRIDGE) : new Oc(W9.AIRBRIDGE, map);
    }

    public static ExternalAttribution appsflyer(Map<String, Object> map) {
        return map == null ? new C1179pe(W9.APPSFLYER) : new Oc(W9.APPSFLYER, map);
    }

    public static ExternalAttribution kochava(JSONObject jSONObject) {
        return jSONObject == null ? new C1179pe(W9.KOCHAVA) : new C1253sb(W9.KOCHAVA, jSONObject);
    }

    public static ExternalAttribution singular(Map<String, Object> map) {
        return map == null ? new C1179pe(W9.SINGULAR) : new Oc(W9.SINGULAR, map);
    }

    public static ExternalAttribution tenjin(Map<String, String> map) {
        return map == null ? new C1179pe(W9.TENJIN) : new Oc(W9.TENJIN, map);
    }
}
