package io.appmetrica.analytics.push.model;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import io.appmetrica.analytics.push.coreutils.internal.CoreConstants;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.coreutils.internal.utils.JsonUtils;
import io.appmetrica.analytics.push.impl.C1524y;
import io.appmetrica.analytics.push.impl.G2;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class PushNotification {
    private final String A;
    private Bitmap B;
    private final Integer C;
    private final String D;
    private Bitmap E;
    private final boolean F;
    private final Integer G;
    private final AdditionalAction[] H;
    private final String I;
    private final Boolean J;
    private final Long K;
    private final Long L;
    private final boolean M;
    private final OpenType N;
    private final Context O;
    private final C1524y P;
    private final String a;
    private final Integer b;
    private final String c;
    private final Boolean d;
    private final Integer e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final Integer k;
    private final String l;
    private final Boolean m;
    private final LedLights n;
    private final Integer o;
    private final Boolean p;
    private final Boolean q;
    private final Integer r;
    private final long s;
    private final Boolean t;
    private final String u;
    private final long[] v;
    private final Integer w;
    private final String x;
    private final Integer y;
    private final Integer z;

    public PushNotification(Context context, JSONObject jSONObject, C1524y c1524y) {
        this.O = context;
        this.P = c1524y;
        this.a = jSONObject.optString("ag");
        this.b = JsonUtils.extractIntegerSafely(jSONObject, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        this.c = jSONObject.optString("b");
        this.d = JsonUtils.extractBooleanSafely(jSONObject, "c");
        this.e = JsonUtils.extractIntegerSafely(jSONObject, "d");
        this.f = jSONObject.optString("e");
        this.g = jSONObject.optString("f");
        this.h = jSONObject.optString("g");
        this.i = jSONObject.optString(CmcdData.STREAMING_FORMAT_HLS);
        this.j = jSONObject.optString("i");
        this.k = JsonUtils.extractIntegerSafely(jSONObject, CoreConstants.PushMessage.PROCESSING_MIN_TIME);
        this.l = jSONObject.optString("k");
        this.m = JsonUtils.extractBooleanSafely(jSONObject, CmcdData.STREAM_TYPE_LIVE);
        this.n = a(jSONObject);
        this.o = JsonUtils.extractIntegerSafely(jSONObject, "n");
        this.p = JsonUtils.extractBooleanSafely(jSONObject, "o");
        this.q = JsonUtils.extractBooleanSafely(jSONObject, TtmlNode.TAG_P);
        this.r = JsonUtils.extractIntegerSafely(jSONObject, "q");
        this.s = jSONObject.optLong("r", System.currentTimeMillis());
        this.t = JsonUtils.extractBooleanSafely(jSONObject, CmcdData.STREAMING_FORMAT_SS);
        this.u = jSONObject.optString("t");
        this.v = b(jSONObject);
        this.w = JsonUtils.extractIntegerSafely(jSONObject, "v");
        this.y = G2.a(context, jSONObject.optString("x"));
        this.A = jSONObject.optString("y");
        this.D = jSONObject.optString("aa");
        this.F = jSONObject.optInt("ab", 0) == 1;
        this.G = G2.b(context, jSONObject.optString("ai"));
        this.x = jSONObject.optString("w");
        this.H = a(context, jSONObject);
        this.I = jSONObject.optString("ac");
        this.J = JsonUtils.extractBooleanSafely(jSONObject, "ad");
        this.z = G2.a(context, jSONObject.optString("ae"));
        this.C = G2.a(context, jSONObject.optString("af"));
        this.K = JsonUtils.extractLongSafely(jSONObject, "ah");
        this.L = JsonUtils.extractLongSafely(jSONObject, "aj");
        this.M = JsonUtils.optBoolean(jSONObject, "ak", true);
        this.N = c(jSONObject);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0093  */
    private static Bitmap a(Context context, C1524y c1524y, Integer num, String str, float f, float f2) {
        Bitmap bitmapCreateBitmap;
        if (num != null) {
            PublicLogger.INSTANCE.info("Get bitmap from resources with id: %d", num);
            float f3 = context.getResources().getDisplayMetrics().density;
            Drawable drawableA = G2.a(context, num);
            if (drawableA == null) {
                bitmapCreateBitmap = null;
            } else {
                Rect bounds = drawableA.getBounds();
                float f4 = f * f3;
                float f5 = f3 * f2;
                if (f5 <= 0.0f || f4 <= 0.0f) {
                    int intrinsicWidth = drawableA.getIntrinsicWidth();
                    int intrinsicHeight = drawableA.getIntrinsicHeight();
                    if (intrinsicWidth <= 0) {
                        intrinsicWidth = bounds.width();
                    }
                    if (intrinsicHeight <= 0) {
                        intrinsicHeight = bounds.height();
                    }
                    if (f5 <= 0.0f && f4 <= 0.0f) {
                        f4 = intrinsicWidth;
                        f5 = intrinsicHeight;
                    } else if (f5 <= 0.0f && f4 > 0.0f && intrinsicWidth > 0) {
                        f5 = (intrinsicHeight * f4) / intrinsicWidth;
                    } else if (f5 > 0.0f && f4 <= 0.0f && intrinsicHeight > 0) {
                        f4 = (intrinsicWidth * f5) / intrinsicHeight;
                    }
                }
                if (f4 <= 0.0f || f5 <= 0.0f) {
                    bitmapCreateBitmap = null;
                } else {
                    bitmapCreateBitmap = Bitmap.createBitmap((int) f4, (int) f5, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    drawableA.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                    drawableA.draw(canvas);
                    drawableA.setBounds(bounds);
                }
            }
        } else {
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap != null || CoreUtils.isEmpty(str)) {
            return bitmapCreateBitmap;
        }
        PublicLogger.INSTANCE.info("Download bitmap for url: %s", str);
        c1524y.getClass();
        float f6 = context.getResources().getDisplayMetrics().density;
        float f7 = f * f6;
        float f8 = f6 * f2;
        byte[] bArrA = c1524y.a.a(str);
        if (bArrA == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArrA, 0, bArrA.length, options);
        float fMax = Math.max(f > 0.0f ? options.outWidth / f7 : 1.0f, f2 > 0.0f ? options.outHeight / f8 : 1.0f);
        options.inJustDecodeBounds = false;
        options.inSampleSize = Math.round(fMax);
        return BitmapFactory.decodeByteArray(bArrA, 0, bArrA.length, options);
    }

    private static long[] b(JSONObject jSONObject) {
        if (jSONObject.has("u")) {
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("u");
                long[] jArr = new long[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    jArr[i] = jSONArray.getLong(i);
                }
                return jArr;
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    private static OpenType c(JSONObject jSONObject) {
        OpenType openType = OpenType.UNKNOWN;
        Integer numExtractIntegerSafely = JsonUtils.extractIntegerSafely(jSONObject, "al");
        return numExtractIntegerSafely != null ? OpenType.fromValue(numExtractIntegerSafely.intValue()) : openType;
    }

    public AdditionalAction[] getAdditionalActions() {
        return this.H;
    }

    public Boolean getAutoCancel() {
        return this.d;
    }

    public String getCategory() {
        return this.c;
    }

    public String getChannelId() {
        return this.I;
    }

    public Integer getColor() {
        return this.e;
    }

    public String getContentInfo() {
        return this.g;
    }

    public String getContentSubtext() {
        return this.i;
    }

    public String getContentText() {
        return this.h;
    }

    public String getContentTitle() {
        return this.f;
    }

    public Integer getDefaults() {
        return this.k;
    }

    public Integer getDisplayedNumber() {
        return this.o;
    }

    public Boolean getExplicitIntent() {
        return this.J;
    }

    public String getGroup() {
        return this.l;
    }

    public Boolean getGroupSummary() {
        return this.m;
    }

    public Integer getIconResId() {
        return this.y;
    }

    public Bitmap getLargeBitmap() {
        Bitmap bitmap = this.E;
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap bitmapA = a(this.O, this.P, this.C, this.D, -1.0f, -1.0f);
        this.E = bitmapA;
        return bitmapA;
    }

    public Integer getLargeBitmapResId() {
        return this.C;
    }

    public String getLargeBitmapUrl() {
        return this.D;
    }

    public Bitmap getLargeIcon() {
        Bitmap bitmap = this.B;
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap bitmapA = a(this.O, this.P, this.z, this.A, this.O.getResources().getDimension(R.dimen.notification_large_icon_width), this.O.getResources().getDimension(R.dimen.notification_large_icon_height));
        this.B = bitmapA;
        return bitmapA;
    }

    public Integer getLargeIconResId() {
        return this.z;
    }

    public String getLargeIconUrl() {
        return this.A;
    }

    public LedLights getLedLights() {
        return this.n;
    }

    public Integer getNotificationId() {
        return this.b;
    }

    public String getNotificationTag() {
        return this.a;
    }

    public Long getNotificationTtl() {
        return this.K;
    }

    public Boolean getOngoing() {
        return this.p;
    }

    public Boolean getOnlyAlertOnce() {
        return this.q;
    }

    public String getOpenActionUrl() {
        return this.x;
    }

    public OpenType getOpenType() {
        return this.N;
    }

    public Integer getPriority() {
        return this.r;
    }

    public Boolean getShowWhen() {
        return this.t;
    }

    public String getSortKey() {
        return this.u;
    }

    public Integer getSoundResId() {
        return this.G;
    }

    public Uri getSoundUri() {
        if (this.G == null) {
            return null;
        }
        Resources resources = this.O.getResources();
        return new Uri.Builder().scheme("android.resource").authority(resources.getResourcePackageName(this.G.intValue())).appendPath(resources.getResourceTypeName(this.G.intValue())).appendPath(resources.getResourceEntryName(this.G.intValue())).build();
    }

    public String getTicker() {
        return this.j;
    }

    public Long getTimeToHideMillis() {
        return this.L;
    }

    public boolean getUseFlagActivityNewTask() {
        return this.M;
    }

    public long[] getVibrate() {
        return this.v;
    }

    public Integer getVisibility() {
        return this.w;
    }

    public Long getWhen() {
        return Long.valueOf(this.s);
    }

    public boolean isSoundEnabled() {
        return this.F;
    }

    private static AdditionalAction[] a(Context context, JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("z");
            AdditionalAction[] additionalActionArr = new AdditionalAction[jSONArray.length()];
            for (int i = 0; i < jSONArray.length(); i++) {
                additionalActionArr[i] = new AdditionalAction(context, jSONArray.getJSONObject(i));
            }
            return additionalActionArr;
        } catch (JSONException unused) {
            return null;
        }
    }

    private static LedLights a(JSONObject jSONObject) {
        if (!jSONObject.has(CmcdData.OBJECT_TYPE_MANIFEST)) {
            return null;
        }
        try {
            return new LedLights(jSONObject.getJSONObject(CmcdData.OBJECT_TYPE_MANIFEST));
        } catch (JSONException unused) {
            return null;
        }
    }

    public PushNotification(Context context, JSONObject jSONObject) {
        this(context, jSONObject, new C1524y(context));
    }
}
