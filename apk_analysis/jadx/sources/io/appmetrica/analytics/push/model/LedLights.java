package io.appmetrica.analytics.push.model;

import androidx.media3.exoplayer.upstream.CmcdData;
import io.appmetrica.analytics.push.coreutils.internal.utils.JsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class LedLights {
    private final Integer a;
    private final Integer b;
    private final Integer c;

    public LedLights(JSONObject jSONObject) {
        this.a = JsonUtils.extractIntegerSafely(jSONObject, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        this.b = JsonUtils.extractIntegerSafely(jSONObject, "b");
        this.c = JsonUtils.extractIntegerSafely(jSONObject, "c");
    }

    public Integer getColor() {
        return this.a;
    }

    public Integer getOffMs() {
        return this.c;
    }

    public Integer getOnMs() {
        return this.b;
    }

    public boolean isValid() {
        return (this.a == null || this.b == null || this.c == null) ? false : true;
    }
}
