package com.tapjoy.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAppInfo;
import com.tapjoy.TJConnectListener;
import com.tapjoy.TJCurrencyParametersKt;
import com.tapjoy.TJStore;
import com.tapjoy.TJUser;
import com.tapjoy.TapjoyAppSettings;
import com.tapjoy.TapjoyCache;
import com.tapjoy.TapjoyConnectCore;
import com.tapjoy.TapjoyConnectFlag;
import com.tapjoy.TapjoyConstants;
import com.tapjoy.TapjoyLog;
import com.tapjoy.TapjoyUtil;
import defpackage.as1;
import defpackage.bf;
import defpackage.j59;
import defpackage.ni0;
import defpackage.om9;
import defpackage.qn1;
import defpackage.ra8;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class h1 extends e1 {
    public final Integer i;
    public final r2 j = new r2();

    public h1() {
        this.i = null;
        TJUser tJUser = TJUser.INSTANCE;
        tJUser.checkIfMaxLevelRequired();
        this.i = tJUser.getMaxLevelParam();
    }

    public final void a(Context context, TJConnectListener tJConnectListener) {
        String str;
        String strOptString;
        String str2;
        String strOptString2;
        Long lValueOf;
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor editorEdit;
        JSONArray jSONArrayOptJSONArray;
        tJConnectListener.getClass();
        String connectFlagValue = TapjoyConnectCore.getInstance().getConnectFlagValue(TapjoyConnectFlag.USER_ID);
        if (connectFlagValue != null && connectFlagValue.length() != 0) {
            int length = connectFlagValue.length();
            y1 y1Var = this.g;
            if (length < 200) {
                y1Var.a = connectFlagValue;
            } else {
                y1Var.a = null;
            }
        }
        r2 r2Var = this.j;
        String strC = ni0.c(this.h, "api/connect/v4");
        Map mapA = a();
        String string = b().toString();
        r2Var.getClass();
        s2 s2VarA = r2.a(mapA, strC, string);
        if (s2VarA.a != 200 || (str = s2VarA.b) == null || str.length() == 0) {
            TapjoyConnectCore.getInstance().setConnected(false);
            TapjoyUtil.runOnMainThread(new as1(tJConnectListener, 2));
            s.b.notifyObservers(Boolean.FALSE);
            return;
        }
        String str3 = s2VarA.b;
        if (str3 == null) {
            str3 = "{}";
        }
        JSONObject jSONObject = new JSONObject(str3);
        String strOptString3 = jSONObject.optString("managed_device_id");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app");
        ArrayList arrayList = new ArrayList();
        if (jSONObjectOptJSONObject != null) {
            strOptString = jSONObjectOptJSONObject.optString(FirebaseAnalytics.Param.GROUP_ID);
            JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("currencies");
            int length2 = jSONArrayOptJSONArray2 != null ? jSONArrayOptJSONArray2.length() : 0;
            for (int i = 0; i < length2; i++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray2 != null ? jSONArrayOptJSONArray2.optJSONObject(i) : null;
                if (jSONObjectOptJSONObject2 != null) {
                    arrayList.add(new y0(jSONObjectOptJSONObject2));
                }
            }
        } else {
            strOptString = null;
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("sdk");
        ArrayList arrayList2 = new ArrayList();
        if (jSONObjectOptJSONObject3 != null) {
            strOptString2 = jSONObjectOptJSONObject3.optString("store");
            lValueOf = Long.valueOf(jSONObjectOptJSONObject3.optLong("placement_request_content_retry_timeout"));
            String strOptString4 = jSONObjectOptJSONObject3.optString("logging_level");
            jSONObjectOptJSONObject3.optBoolean("error_enabled");
            JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject3.optJSONArray("assets");
            int length3 = jSONArrayOptJSONArray3 != null ? jSONArrayOptJSONArray3.length() : 0;
            int i2 = 0;
            while (i2 < length3) {
                JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray3 != null ? jSONArrayOptJSONArray3.optJSONObject(i2) : null;
                JSONArray jSONArray = jSONArrayOptJSONArray3;
                if (jSONObjectOptJSONObject4 != null) {
                    arrayList2.add(new c1(jSONObjectOptJSONObject4));
                }
                i2++;
                jSONArrayOptJSONArray3 = jSONArray;
            }
            str2 = strOptString4;
        } else {
            str2 = null;
            strOptString2 = null;
            lValueOf = null;
        }
        TJAppInfo tJAppInfo = TJAppInfo.INSTANCE;
        tJAppInfo.setAppGroupId(strOptString);
        tJAppInfo.setManagedDeviceID(strOptString3);
        TJStore.INSTANCE.setStore(strOptString2);
        TapjoyAppSettings.INSTANCE.saveLoggingLevel(str2);
        TapjoyCache tapjoyCache = context != null ? new TapjoyCache(context) : null;
        int size = arrayList2.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList2.get(i3);
            i3++;
            c1 c1Var = (c1) obj;
            if (tapjoyCache != null) {
                String str4 = c1Var.a;
                Long l = c1Var.b;
                tapjoyCache.cacheUrl(str4, null, l != null ? l.longValue() : 0L, new bf(3));
            }
        }
        if (lValueOf != null) {
            i2.c.a(Long.valueOf(lValueOf.longValue()));
        }
        boolean z = AppUsageForegroundService.b;
        j.a(context, jSONObject.optJSONObject("sdk"), true);
        y0 y0Var = (y0) qn1.W(0, arrayList);
        if (context != null && (sharedPreferences = context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0)) != null && (editorEdit = sharedPreferences.edit()) != null) {
            SharedPreferences.Editor editorPutBoolean = editorEdit.putBoolean(TapjoyConstants.PREF_CURRENCY_SELF_MANAGED, ra8.v(y0Var != null ? y0Var.a : null, TapjoyConstants.PREF_CURRENCY_SELF_MANAGED, true));
            if (editorPutBoolean != null) {
                SharedPreferences.Editor editorPutString = editorPutBoolean.putString(TJCurrencyParametersKt.PREF_SERVER_CURRENCY_IDS, (jSONObjectOptJSONObject == null || (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("currencies")) == null) ? null : jSONArrayOptJSONArray.toString());
                if (editorPutString != null) {
                    editorPutString.apply();
                }
            }
        }
        if (connectFlagValue == null || connectFlagValue.length() == 0) {
            TapjoyUtil.runOnMainThread(new om9(tJConnectListener, 1));
        } else {
            TJUser.INSTANCE.setUserIdRequest(connectFlagValue, new g1(tJConnectListener));
        }
        TapjoyConnectCore.getInstance().setConnected(true);
        s.a.notifyObservers();
        s.b.notifyObservers(Boolean.TRUE);
    }

    @Override // com.tapjoy.internal.e1
    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectB = super.b();
        try {
            JSONObject jSONObject = jSONObjectB.getJSONObject("user");
            jSONObject.getClass();
            u.a(jSONObject, "max_level", this.i);
            return jSONObjectB;
        } catch (JSONException unused) {
            TapjoyLog.d("Failed to load JSON object from connect request.");
            return jSONObjectB;
        }
    }

    public static final void b(TJConnectListener tJConnectListener) {
        tJConnectListener.onConnectFailure(0, "Connect Failure");
    }

    public static final j59 a(boolean z) {
        TapjoyLog.d("Connect onCachingComplete: " + z);
        return j59.a;
    }

    public static final void a(TJConnectListener tJConnectListener) {
        tJConnectListener.onConnectSuccess();
    }
}
