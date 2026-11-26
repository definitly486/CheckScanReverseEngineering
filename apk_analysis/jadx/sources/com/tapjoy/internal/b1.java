package com.tapjoy.internal;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJApiDecoded;
import com.tapjoy.TJAppInfo;
import com.tapjoy.TJVerifierKt;
import com.tapjoy.TapjoyLog;
import defpackage.aa4;
import defpackage.mx2;
import defpackage.n05;
import defpackage.qn1;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class b1 extends e1 {
    public final List i;
    public final r2 j;
    public Map k;

    public b1(List list) {
        list.getClass();
        this.i = list;
        this.j = new r2();
        this.k = mx2.b;
    }

    public final boolean a(Context context) {
        context.getClass();
        List list = this.i;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((p0) obj).a.length() > 0) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            TapjoyLog.d("AppUsage request failed: empty token");
            return false;
        }
        long j = 1000;
        for (int i = 1; i <= 3; i++) {
            try {
                this.k = new o0(this.i).a(context);
                r2 r2Var = this.j;
                String str = this.h + "api/app_usage/ingest";
                Map mapA = a();
                String string = b().toString();
                r2Var.getClass();
                s2 s2VarA = r2.a(mapA, str, string);
                TapjoyLog.d("AppUsage request success " + s2VarA.b + " code: " + s2VarA.a + " ");
                String str2 = s2VarA.b;
                if (str2 != null) {
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS, -1);
                        if (jSONObject.isNull("app_usage")) {
                            return false;
                        }
                        if (iOptInt == 200) {
                            boolean z = AppUsageForegroundService.b;
                            j.a(context, jSONObject, false);
                            return true;
                        }
                        if (iOptInt == 401 && aa4.e(jSONObject.optString(RemoteConfigConstants.ResponseFieldKey.STATE), "missing")) {
                            return false;
                        }
                        TapjoyLog.d("AppUsage request attempt " + i + "/3 failed with response status: " + iOptInt);
                    } catch (Exception e) {
                        TapjoyLog.d("AppUsage request attempt " + i + "/3: Failed to parse response: " + e.getMessage());
                    }
                }
            } catch (Exception e2) {
                TapjoyLog.d("AppUsage request attempt " + i + "/3 error: " + e2.getMessage());
            }
            if (i < 3 && j > 0) {
                try {
                    Thread.sleep(j);
                    long j2 = (long) (j * 2.0d);
                    if (j2 > 0) {
                        j = j2;
                    }
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    return false;
                }
            }
        }
        return false;
    }

    @Override // com.tapjoy.internal.e1
    public final JSONObject b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        u.a(jSONObject, TtmlNode.ATTR_ID, UUID.randomUUID());
        u.a(jSONObject, TJVerifierKt.TJC_TIMESTAMP, Long.valueOf(System.currentTimeMillis()));
        u.a(jSONObject, "managed_device_id", TJAppInfo.INSTANCE.getManagedDeviceID());
        TJApiDecoded tJApiDecoded = TJApiDecoded.INSTANCE;
        u.a(jSONObject, CommonUrlParts.APP_ID, tJApiDecoded.getAppID());
        Object sdkKey = tJApiDecoded.getSdkKey();
        if (sdkKey == null) {
            sdkKey = JSONObject.NULL;
        }
        u.a(jSONObject, "publisher_sdk_key", sdkKey);
        u.a(jSONObject, "app_usage", new JSONArray(this.k.values()));
        return jSONObject;
    }

    @Override // com.tapjoy.internal.e1
    public final Map a() {
        String str;
        LinkedHashMap linkedHashMapN = n05.n(super.a());
        p0 p0Var = (p0) qn1.V(this.i);
        if (p0Var == null || (str = p0Var.a) == null) {
            str = "";
        }
        linkedHashMapN.put("X-Tapjoy-Token", str);
        return linkedHashMapN;
    }
}
