package io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl;

import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.coreutils.internal.parsing.RemoteConfigJsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class g implements JsonParser {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final a parse(JSONObject jSONObject) {
        a aVar = new a();
        aVar.a = RemoteConfigJsonUtils.extractFeature(jSONObject, "ad_revenue_applovin_max", k.a);
        return aVar;
    }

    public final a b(JSONObject jSONObject) {
        return (a) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    public final Object parseOrNull(JSONObject jSONObject) {
        return (a) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }
}
