package com.my.target;

import android.text.TextUtils;
import defpackage.bj;
import defpackage.h14;
import defpackage.me0;
import defpackage.y14;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class n1 {
    public static q a(JSONObject jSONObject) throws JSONException {
        q.a aVar;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("adInfo");
        if (jSONObjectOptJSONObject == null) {
            throw new JSONException("VastAdChoicesParser: adInfo json object is mandatory");
        }
        ArrayList arrayList = new ArrayList();
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("advertiserInfo");
        if (jSONObjectOptJSONObject2 == null) {
            throw new JSONException("VastAdChoicesParser: advertiserInfo json object is mandatory");
        }
        String strI = y14.i(jSONObjectOptJSONObject2, "text");
        if (TextUtils.isEmpty(strI)) {
            throw new JSONException("VastAdChoicesParser: advertiserInfo:text json field is mandatory");
        }
        String strI2 = y14.i(jSONObjectOptJSONObject2, "url");
        if (TextUtils.isEmpty(strI2) || !y14.y(strI2)) {
            throw new JSONException(me0.c("VastAdChoicesParser: Invalid url (", strI2, ") in advertiserInfo:url"));
        }
        y14.r(null, "VastAdChoicesParser: parsed advertiserInfo: name = " + strI + ", clickLink = " + strI2);
        arrayList.add(new q.a(strI, "default", null, strI2, null, null, true));
        JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("adId");
        if (jSONObjectOptJSONObject3 == null) {
            throw new JSONException("VastAdChoicesParser: adId json object is mandatory");
        }
        String strI3 = y14.i(jSONObjectOptJSONObject3, "text");
        if (TextUtils.isEmpty(strI3)) {
            throw new JSONException("VastAdChoicesParser: adId:text json field is mandatory");
        }
        String strI4 = y14.i(jSONObjectOptJSONObject3, "copyText");
        if (TextUtils.isEmpty(strI4)) {
            throw new JSONException("VastAdChoicesParser: adId:copyText json field is mandatory");
        }
        y14.r(null, "VastAdChoicesParser: parsed adId: name = " + strI3 + ", copyText = " + strI4);
        arrayList.add(new q.a(strI3, "copy", null, null, strI4, null, false));
        JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("icon");
        if (jSONObjectOptJSONObject4 == null) {
            throw new JSONException("VastAdChoicesParser: icon json object is mandatory");
        }
        String strI5 = y14.i(jSONObjectOptJSONObject4, "url");
        if (TextUtils.isEmpty(strI5) || !y14.y(strI5)) {
            throw new JSONException(bj.c("VastAdChoicesParser: Invalid iconLink in adChoices = ", strI5));
        }
        y14.r(null, "VastAdChoicesParser: parsed icon: url = " + strI5);
        h14 h14Var = new h14(strI5);
        JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject.optJSONObject("recommendationInfo");
        if (jSONObjectOptJSONObject5 == null) {
            aVar = null;
        } else {
            String strI6 = y14.i(jSONObjectOptJSONObject5, "text");
            if (TextUtils.isEmpty(strI6)) {
                throw new JSONException("VastAdChoicesParser: recommendationInfo:text json field is mandatory");
            }
            String strI7 = y14.i(jSONObjectOptJSONObject5, "url");
            if (TextUtils.isEmpty(strI7) || !y14.y(strI7)) {
                throw new JSONException(me0.c("VastAdChoicesParser: Invalid url (", strI7, ") in recommendationInfo:url"));
            }
            y14.r(null, "VastAdChoicesParser: parsed recommendationInfo: name = " + strI6 + ", clickLink = " + strI7);
            aVar = new q.a(strI6, "default", null, strI7, null, null, true);
        }
        if (aVar != null) {
            arrayList.add(aVar);
        }
        q qVar = new q(h14Var, "");
        qVar.c = arrayList;
        if (qVar.d != null) {
            qVar.d = q.a(arrayList);
        }
        y14.r(null, "VastAdChoicesParser: parsed adInfo");
        y14.r(null, "VastAdChoicesParser: parsed adChoices");
        return qVar;
    }
}
