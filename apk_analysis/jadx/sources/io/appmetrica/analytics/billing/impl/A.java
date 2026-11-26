package io.appmetrica.analytics.billing.impl;

import defpackage.jh2;
import io.appmetrica.analytics.billing.internal.ServiceSideBillingConfigWrapper;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class A implements JsonParser {
    public final g a;
    public final f b;

    public /* synthetic */ A(g gVar, f fVar, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new g() : gVar, (i & 2) != 0 ? new f() : fVar);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ServiceSideBillingConfigWrapper parse(JSONObject jSONObject) {
        q qVar;
        g gVar = this.a;
        this.b.getClass();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("auto_inapp_collecting");
        if (jSONObjectOptJSONObject == null) {
            qVar = new q();
        } else {
            q qVar2 = new q();
            Integer numOptIntOrNull = JsonUtils.optIntOrNull(jSONObjectOptJSONObject, "send_frequency_seconds");
            if (numOptIntOrNull != null) {
                qVar2.a = numOptIntOrNull.intValue();
            }
            Integer numOptIntOrNull2 = JsonUtils.optIntOrNull(jSONObjectOptJSONObject, "first_collecting_inapp_max_age_seconds");
            if (numOptIntOrNull2 != null) {
                qVar2.b = numOptIntOrNull2.intValue();
            }
            qVar = qVar2;
        }
        gVar.getClass();
        return ServiceSideBillingConfigWrapper.Companion.toWrapper$billing_release(new B(true, new y(qVar.a, qVar.b)));
    }

    public final ServiceSideBillingConfigWrapper b(JSONObject jSONObject) {
        return (ServiceSideBillingConfigWrapper) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    public final Object parseOrNull(JSONObject jSONObject) {
        return (ServiceSideBillingConfigWrapper) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    public A(g gVar, f fVar) {
        this.a = gVar;
        this.b = fVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public A() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
