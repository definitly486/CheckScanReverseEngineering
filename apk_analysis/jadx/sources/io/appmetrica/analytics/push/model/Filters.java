package io.appmetrica.analytics.push.model;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import io.appmetrica.analytics.push.coreutils.internal.utils.JsonUtils;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class Filters {
    private final Integer a;
    private final Integer b;
    private final String c;
    private final Integer d;
    private final Coordinates e;
    private final Long f;
    private final Integer g;
    private final Boolean h;
    private final Integer i;
    private final Integer j;
    private final Integer k;
    private final Integer l;
    private final String m;

    public Filters(JSONObject jSONObject) {
        this.a = JsonUtils.extractIntegerSafely(jSONObject, "d");
        this.b = JsonUtils.extractIntegerSafely(jSONObject, TtmlNode.TAG_P);
        this.c = JsonUtils.extractStringSafely(jSONObject, "u");
        this.d = JsonUtils.extractIntegerSafely(jSONObject, "x");
        this.e = a(jSONObject);
        this.f = JsonUtils.extractLongSafely(jSONObject, "r");
        this.g = JsonUtils.extractIntegerSafely(jSONObject, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        this.h = JsonUtils.extractBooleanSafely(jSONObject, CmcdData.OBJECT_TYPE_MANIFEST);
        this.i = JsonUtils.extractIntegerSafely(jSONObject, "v");
        this.j = JsonUtils.extractIntegerSafely(jSONObject, ExifInterface.LONGITUDE_WEST);
        this.k = JsonUtils.extractIntegerSafely(jSONObject, CmcdData.STREAMING_FORMAT_SS);
        this.l = JsonUtils.extractIntegerSafely(jSONObject, "t");
        this.m = JsonUtils.extractStringSafely(jSONObject, "i");
    }

    private static Coordinates a(JSONObject jSONObject) {
        if (!jSONObject.has("c")) {
            return null;
        }
        try {
            return new Coordinates(jSONObject.getJSONObject("c"));
        } catch (JSONException e) {
            PublicLogger.INSTANCE.error(e, "Error parsing coordinates", new Object[0]);
            TrackersHub.getInstance().reportError("Error parsing coordinates", e);
            return null;
        }
    }

    public String getContentId() {
        return this.m;
    }

    public Coordinates getCoordinates() {
        return this.e;
    }

    public Integer getLoginFilterType() {
        return this.d;
    }

    public Integer getMaxAndroidApiLevel() {
        return this.l;
    }

    public Integer getMaxPushPerDay() {
        return this.a;
    }

    public Integer getMaxVersionCode() {
        return this.j;
    }

    public Integer getMinAccuracy() {
        return this.g;
    }

    public Integer getMinAndroidApiLevel() {
        return this.k;
    }

    public Long getMinRecency() {
        return this.f;
    }

    public Integer getMinVersionCode() {
        return this.i;
    }

    public Integer getOnePushPerPeriodMinutes() {
        return this.b;
    }

    public Boolean getPassiveLocation() {
        return this.h;
    }

    public String getPassportUid() {
        return this.c;
    }
}
