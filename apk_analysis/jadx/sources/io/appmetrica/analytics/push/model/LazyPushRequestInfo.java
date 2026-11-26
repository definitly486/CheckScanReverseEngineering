package io.appmetrica.analytics.push.model;

import androidx.media3.exoplayer.upstream.CmcdData;
import io.appmetrica.analytics.push.coreutils.internal.utils.JsonUtils;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class LazyPushRequestInfo {
    private final String a;
    private final Boolean b;
    private final Map c;
    private final LocationRequestInfo d;
    private final long[] e;

    public LazyPushRequestInfo(JSONObject jSONObject) {
        this.a = JsonUtils.extractStringSafely(jSONObject, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        this.b = JsonUtils.extractBooleanSafely(jSONObject, "b");
        this.c = a(jSONObject);
        this.d = b(jSONObject);
        this.e = c(jSONObject);
    }

    private static Map a(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("c");
        if (jSONObjectOptJSONObject == null) {
            return null;
        }
        try {
            HashMap map = new HashMap(jSONObjectOptJSONObject.length());
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObjectOptJSONObject.optString(next));
            }
            return Collections.unmodifiableMap(map);
        } catch (Throwable th) {
            PublicLogger.INSTANCE.error(th, "Error parsing lazy push headers", new Object[0]);
            TrackersHub.getInstance().reportError("Error parsing lazy push headers", th);
            return null;
        }
    }

    private static LocationRequestInfo b(JSONObject jSONObject) {
        if (!jSONObject.has("d")) {
            return null;
        }
        try {
            return new LocationRequestInfo(jSONObject.getJSONObject("d"));
        } catch (JSONException e) {
            PublicLogger.INSTANCE.error(e, "Error parsing location request info for lazy push", new Object[0]);
            TrackersHub.getInstance().reportError("Error parsing location request info for lazy push", e);
            return null;
        }
    }

    private static long[] c(JSONObject jSONObject) {
        if (jSONObject.has("e")) {
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("e");
                long[] jArr = new long[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    jArr[i] = jSONArray.getLong(i);
                }
                return jArr;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public Map<String, String> getHeaders() {
        return this.c;
    }

    public LocationRequestInfo getLocationRequestInfo() {
        return this.d;
    }

    public long[] getRetryStrategySeconds() {
        return this.e;
    }

    public String getUrl() {
        return this.a;
    }

    public Boolean getUseCurPushAsFallback() {
        return this.b;
    }
}
