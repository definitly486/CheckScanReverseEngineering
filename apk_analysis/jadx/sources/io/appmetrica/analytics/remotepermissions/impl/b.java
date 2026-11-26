package io.appmetrica.analytics.remotepermissions.impl;

import android.text.TextUtils;
import com.tapjoy.TJAdUnitConstants;
import defpackage.ha1;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import java.util.LinkedHashSet;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements JsonParser {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final d parse(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("permissions");
        if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("list")) != null) {
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.optBoolean(TJAdUnitConstants.String.ENABLED)) {
                    String strOptString = jSONObjectOptJSONObject2.optString("name");
                    if (!TextUtils.isEmpty(strOptString)) {
                        linkedHashSet.add(strOptString.getBytes(ha1.b));
                    }
                }
            }
        }
        d dVar = new d();
        dVar.a = (byte[][]) linkedHashSet.toArray(new byte[0][]);
        return dVar;
    }

    public final d b(JSONObject jSONObject) {
        return (d) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    public final Object parseOrNull(JSONObject jSONObject) {
        return (d) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }
}
