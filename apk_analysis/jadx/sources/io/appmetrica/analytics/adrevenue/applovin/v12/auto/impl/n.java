package io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl;

import defpackage.jh2;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.ServiceApplovinConfigWrapper;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class n implements JsonParser {
    public final h a;
    public final g b;

    public /* synthetic */ n(h hVar, g gVar, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new h() : hVar, (i & 2) != 0 ? new g() : gVar);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ServiceApplovinConfigWrapper parse(JSONObject jSONObject) {
        ServiceApplovinConfigWrapper.Companion companion = ServiceApplovinConfigWrapper.Companion;
        h hVar = this.a;
        a aVar = this.b.parse(jSONObject);
        hVar.getClass();
        return companion.toWrapper$ad_revenue_applovin_v12_auto_release(new l(aVar.a));
    }

    public final ServiceApplovinConfigWrapper b(JSONObject jSONObject) {
        return (ServiceApplovinConfigWrapper) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    public final Object parseOrNull(JSONObject jSONObject) {
        return (ServiceApplovinConfigWrapper) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    public n(h hVar, g gVar) {
        this.a = hVar;
        this.b = gVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
