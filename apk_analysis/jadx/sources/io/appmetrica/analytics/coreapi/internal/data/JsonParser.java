package io.appmetrica.analytics.coreapi.internal.data;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public interface JsonParser<T> extends Parser<JSONObject, T> {

    public static final class DefaultImpls {
        public static <T> T parseOrNull(JsonParser<? extends T> jsonParser, JSONObject jSONObject) {
            return (T) Parser.DefaultImpls.parseOrNull(jsonParser, jSONObject);
        }
    }
}
