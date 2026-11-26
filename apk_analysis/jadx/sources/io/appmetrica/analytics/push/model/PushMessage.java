package io.appmetrica.analytics.push.model;

import android.content.Context;
import android.os.Bundle;
import androidx.media3.exoplayer.upstream.CmcdData;
import io.appmetrica.analytics.push.coreutils.internal.CoreConstants;
import io.appmetrica.analytics.push.coreutils.internal.model.BasePushMessage;
import io.appmetrica.analytics.push.coreutils.internal.utils.JsonUtils;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class PushMessage {
    private final Context a;
    private final String b;
    private final boolean c;
    private final String d;
    private final PushNotification e;
    private final Bundle f;
    private final String g;
    private final long h;
    private final boolean i;
    private final Filters j;
    private final String k;
    private final LazyPushRequestInfo l;
    private final Long m;

    public PushMessage(Context context, Bundle bundle) {
        this.a = context;
        this.f = bundle;
        this.g = bundle.getString(CoreConstants.EXTRA_TRANSPORT, "unknown");
        JSONObject jSONObjectExtractRootElement = extractRootElement(bundle);
        this.i = jSONObjectExtractRootElement != null;
        this.b = JsonUtils.extractStringSafely(jSONObjectExtractRootElement, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        this.c = JsonUtils.optBoolean(jSONObjectExtractRootElement, "b", false);
        this.d = JsonUtils.extractStringSafely(jSONObjectExtractRootElement, "c");
        PushNotification pushNotificationA = a(context, jSONObjectExtractRootElement);
        this.e = pushNotificationA;
        this.h = pushNotificationA == null ? System.currentTimeMillis() : pushNotificationA.getWhen().longValue();
        this.j = a(jSONObjectExtractRootElement);
        this.k = JsonUtils.extractStringSafely(jSONObjectExtractRootElement, "e");
        this.l = b(jSONObjectExtractRootElement);
        this.m = JsonUtils.extractLongSafely(jSONObjectExtractRootElement, CmcdData.STREAMING_FORMAT_HLS);
    }

    private static PushNotification a(Context context, JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("d")) {
            return null;
        }
        try {
            return new PushNotification(context, jSONObject.getJSONObject("d"));
        } catch (Throwable th) {
            PublicLogger.INSTANCE.error(th, "Error parsing push notification", new Object[0]);
            TrackersHub.getInstance().reportError("Error parsing push notification", th);
            return null;
        }
    }

    private static LazyPushRequestInfo b(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("g")) {
            return null;
        }
        try {
            return new LazyPushRequestInfo(jSONObject.getJSONObject("g"));
        } catch (Throwable th) {
            PublicLogger.INSTANCE.error(th, "Error parsing lazy push json", new Object[0]);
            TrackersHub.getInstance().reportError("Error parsing lazy push json", th);
            return null;
        }
    }

    public static JSONObject extractRootElement(Bundle bundle) {
        return new BasePushMessage(bundle).getRoot();
    }

    public PushMessage append(JSONObject jSONObject) {
        if (jSONObject == null) {
            return this;
        }
        Bundle bundle = new Bundle(this.f);
        JSONObject jSONObjectMerge = JsonUtils.merge(extractRootElement(this.f), jSONObject.optJSONObject(CoreConstants.PushMessage.ROOT_ELEMENT));
        if (jSONObjectMerge != null) {
            bundle.putString(CoreConstants.PushMessage.ROOT_ELEMENT, jSONObjectMerge.toString());
        }
        return new PushMessage(this.a, bundle);
    }

    public Bundle getBundle() {
        return this.f;
    }

    public Filters getFilters() {
        return this.j;
    }

    public LazyPushRequestInfo getLazyPushRequestInfo() {
        return this.l;
    }

    public PushNotification getNotification() {
        return this.e;
    }

    public String getNotificationId() {
        return this.b;
    }

    public String getPayload() {
        return this.d;
    }

    public String getPushIdToRemove() {
        return this.k;
    }

    public Long getTimeToShowMillis() {
        return this.m;
    }

    public long getTimestamp() {
        return this.h;
    }

    public String getTransport() {
        return this.g;
    }

    public boolean isOwnPush() {
        return this.i;
    }

    public boolean isSilent() {
        return this.c;
    }

    private static Filters a(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("f")) {
            return null;
        }
        try {
            return new Filters(jSONObject.getJSONObject("f"));
        } catch (Throwable th) {
            PublicLogger.INSTANCE.error(th, "Error parsing filters", new Object[0]);
            TrackersHub.getInstance().reportError("Error parsing filters", th);
            return null;
        }
    }
}
