package io.appmetrica.analytics.push.model;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import io.appmetrica.analytics.push.coreutils.internal.CoreConstants;
import io.appmetrica.analytics.push.coreutils.internal.utils.JsonUtils;
import io.appmetrica.analytics.push.impl.G2;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class AdditionalAction {
    private final String a;
    private final String b;
    private final String c;
    private final Integer d;
    private final Boolean e;
    private final Boolean f;
    private final Boolean g;
    private final AdditionalActionType h;
    private final String i;
    private final Long j;
    private final OpenType k;
    private final boolean l;

    public AdditionalAction(Context context, JSONObject jSONObject) {
        this.a = jSONObject.optString(CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        this.b = jSONObject.optString("b");
        this.c = jSONObject.optString("c");
        this.d = G2.a(context, jSONObject.optString("d"));
        this.e = JsonUtils.extractBooleanSafely(jSONObject, "e");
        this.f = JsonUtils.extractBooleanSafely(jSONObject, "f");
        this.g = JsonUtils.extractBooleanSafely(jSONObject, "g");
        this.h = b(jSONObject);
        this.i = jSONObject.optString("i");
        this.j = JsonUtils.extractLongSafely(jSONObject, CoreConstants.PushMessage.PROCESSING_MIN_TIME);
        this.k = a(jSONObject);
        this.l = JsonUtils.optBoolean(jSONObject, CmcdData.STREAM_TYPE_LIVE, true);
    }

    private static OpenType a(JSONObject jSONObject) {
        OpenType openType = OpenType.UNKNOWN;
        Integer numExtractIntegerSafely = JsonUtils.extractIntegerSafely(jSONObject, "k");
        return numExtractIntegerSafely != null ? OpenType.fromValue(numExtractIntegerSafely.intValue()) : openType;
    }

    private static AdditionalActionType b(JSONObject jSONObject) {
        Integer numExtractIntegerSafely = JsonUtils.extractIntegerSafely(jSONObject, CmcdData.STREAMING_FORMAT_HLS);
        if (numExtractIntegerSafely != null) {
            return AdditionalActionType.fromValue(numExtractIntegerSafely.intValue());
        }
        return null;
    }

    public String getActionUrl() {
        return this.c;
    }

    public Boolean getAutoCancel() {
        return this.f;
    }

    public Boolean getExplicitIntent() {
        return this.g;
    }

    public Long getHideAfterSecond() {
        return this.j;
    }

    public Boolean getHideQuickControlPanel() {
        return this.e;
    }

    public Integer getIconResId() {
        return this.d;
    }

    public String getId() {
        return this.a;
    }

    public String getLabel() {
        return this.i;
    }

    public OpenType getOpenType() {
        return this.k;
    }

    public String getTitle() {
        return this.b;
    }

    public AdditionalActionType getType() {
        return this.h;
    }

    public boolean getUseFlagActivityNewTask() {
        return this.l;
    }
}
