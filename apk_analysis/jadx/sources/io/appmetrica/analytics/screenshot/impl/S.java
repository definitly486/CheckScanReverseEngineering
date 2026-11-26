package io.appmetrica.analytics.screenshot.impl;

import com.tapjoy.TJAdUnitConstants;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx6;
import defpackage.x74;
import defpackage.y74;
import defpackage.yr;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.coreutils.internal.parsing.RemoteConfigJsonUtils;
import io.appmetrica.analytics.screenshot.internal.ServiceSideScreenshotConfigWrapper;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class S implements JsonParser {
    public final E a;

    public /* synthetic */ S(E e, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new E() : e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.util.ArrayList] */
    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ServiceSideScreenshotConfigWrapper parse(JSONObject jSONObject) {
        N n;
        U u;
        P p;
        ?? H0;
        E e = this.a;
        e.getClass();
        boolean zExtractFeature = RemoteConfigJsonUtils.extractFeature(jSONObject, "screenshot", AbstractC1542m.a);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("screenshot");
        if (jSONObjectOptJSONObject == null) {
            p = new P(zExtractFeature, new N(new w().a), new U(), new O());
        } else {
            e.a.getClass();
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("api_captor_config");
            O o = null;
            if (jSONObjectOptJSONObject2 == null) {
                n = null;
            } else {
                w wVar = new w();
                Boolean boolOptBooleanOrNull = JsonUtils.optBooleanOrNull(jSONObjectOptJSONObject2, TJAdUnitConstants.String.ENABLED);
                n = new N(boolOptBooleanOrNull != null ? boolOptBooleanOrNull.booleanValue() : wVar.a);
            }
            if (n == null) {
                n = new N(new w().a);
            }
            e.b.getClass();
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("service_captor_config");
            if (jSONObjectOptJSONObject3 == null) {
                u = null;
            } else {
                y yVar = new y();
                Boolean boolOptBooleanOrNull2 = JsonUtils.optBooleanOrNull(jSONObjectOptJSONObject3, TJAdUnitConstants.String.ENABLED);
                boolean zBooleanValue = boolOptBooleanOrNull2 != null ? boolOptBooleanOrNull2.booleanValue() : yVar.a;
                Long lOptLongOrNull = JsonUtils.optLongOrNull(jSONObjectOptJSONObject3, "delay_seconds");
                u = new U(zBooleanValue, lOptLongOrNull != null ? lOptLongOrNull.longValue() : yVar.b);
            }
            if (u == null) {
                u = new U();
            }
            e.c.getClass();
            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("content_observer_captor_config");
            if (jSONObjectOptJSONObject4 != null) {
                x xVar = new x();
                Boolean boolOptBooleanOrNull3 = JsonUtils.optBooleanOrNull(jSONObjectOptJSONObject4, TJAdUnitConstants.String.ENABLED);
                boolean zBooleanValue2 = boolOptBooleanOrNull3 != null ? boolOptBooleanOrNull3.booleanValue() : xVar.a;
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject4.optJSONArray("media_store_column_names");
                if (jSONArrayOptJSONArray != null) {
                    y74 y74VarN = kx6.n(0, jSONArrayOptJSONArray.length());
                    H0 = new ArrayList(kn1.q(y74VarN, 10));
                    x74 it = y74VarN.iterator();
                    while (it.d) {
                        H0.add(jSONArrayOptJSONArray.getString(it.nextInt()));
                    }
                } else {
                    H0 = yr.h0(xVar.c);
                }
                Long lOptLongOrNull2 = JsonUtils.optLongOrNull(jSONObjectOptJSONObject4, "detect_window_seconds");
                o = new O(zBooleanValue2, H0, lOptLongOrNull2 != null ? lOptLongOrNull2.longValue() : xVar.b);
            }
            if (o == null) {
                o = new O();
            }
            p = new P(zExtractFeature, n, u, o);
        }
        return ServiceSideScreenshotConfigWrapper.Companion.toWrapper$screenshot_release(p);
    }

    public final ServiceSideScreenshotConfigWrapper b(JSONObject jSONObject) {
        return (ServiceSideScreenshotConfigWrapper) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    public final Object parseOrNull(JSONObject jSONObject) {
        return (ServiceSideScreenshotConfigWrapper) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    public S(E e) {
        this.a = e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public S() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
