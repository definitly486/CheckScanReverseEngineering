package com.my.tracker.personalize;

import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.my.tracker.obfuscated.b3;
import defpackage.bj;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class d extends b {
    public static c b(JSONObject jSONObject) {
        String strA = a(jSONObject, "sku", "payload", "value", "discount_value", FirebaseAnalytics.Param.PRICE, "discount_price");
        if (strA != null) {
            return new c(null, strA);
        }
        String strOptString = jSONObject.optString("sku");
        if (TextUtils.isEmpty(strOptString)) {
            return a("Invalid value for key: ", "sku");
        }
        String strOptString2 = jSONObject.optString("payload");
        if (TextUtils.isEmpty(strOptString2)) {
            return a("Invalid value for key: ", "payload");
        }
        return new c(new PersonalizeItem(strOptString, strOptString2, jSONObject.optDouble(FirebaseAnalytics.Param.PRICE), jSONObject.optDouble("discount_price"), jSONObject.optInt("value"), jSONObject.optInt("discount_value")), null);
    }

    public static c c(JSONObject jSONObject) {
        String strA = a(jSONObject, "offer_id", "subitems");
        if (strA != null) {
            return new c(null, strA);
        }
        int iOptInt = jSONObject.optInt("offer_id");
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("subitems");
        if (jSONArrayOptJSONArray == null) {
            return a("No value for key: ", "subitems");
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            c cVarB = b(jSONArrayOptJSONArray.optJSONObject(i));
            String strA2 = cVarB.a();
            if (TextUtils.isEmpty(strA2)) {
                PersonalizeItem personalizeItem = (PersonalizeItem) cVarB.b();
                if (personalizeItem == null) {
                    String str = "Can't parse item " + i + " without errors";
                    arrayList2.add(str);
                    b3.a("PersonalizePlacementsParser: ".concat(str));
                } else {
                    arrayList.add(personalizeItem);
                }
            } else {
                String str2 = "Can't parse item " + i + " with errors: " + strA2;
                arrayList2.add(str2);
                b3.a("PersonalizePlacementsParser: ".concat(str2));
            }
        }
        return arrayList2.size() > 0 ? new c(null, String.join(", ", arrayList2)) : new c(new PersonalizeOffer(iOptInt, arrayList), null);
    }

    public static c d(JSONObject jSONObject) {
        String strA = a(jSONObject, "placement_id", "test_id", FirebaseAnalytics.Param.GROUP_ID, "offer");
        if (strA != null) {
            return new c(null, strA);
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("offer");
        if (jSONObjectOptJSONObject == null) {
            return a("Invalid value for key: ", "offer");
        }
        c cVarC = c(jSONObjectOptJSONObject);
        String strA2 = cVarC.a();
        if (strA2 != null) {
            b3.a("PersonalizePlacementsParser: Can't parse offer's object with error: ".concat(strA2));
            return new c(null, strA2);
        }
        PersonalizeOffer personalizeOffer = (PersonalizeOffer) cVarC.b();
        if (personalizeOffer == null) {
            return a("Can't parse offer's object without error from parser", null);
        }
        String strOptString = jSONObject.optString("placement_id");
        return TextUtils.isEmpty(strOptString) ? a("Invalid value for key: ", "placement_id") : new c(new PersonalizePlacement(strOptString, jSONObject.optInt(FirebaseAnalytics.Param.GROUP_ID), jSONObject.optInt("test_id"), personalizeOffer), null);
    }

    @Override // com.my.tracker.personalize.b
    public c a(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("errors");
        ArrayList arrayList = new ArrayList();
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                arrayList.add(next + ": " + jSONObjectOptJSONObject.optString(next));
            }
            return new c(null, String.join(", ", arrayList));
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("data");
        if (jSONArrayOptJSONArray == null) {
            return a("No value for key: ", "data");
        }
        if (jSONArrayOptJSONArray.length() == 0) {
            return a("No placements in the list");
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            c cVarD = d(jSONArrayOptJSONArray.optJSONObject(i));
            String strA = cVarD.a();
            if (strA != null) {
                b3.a("PersonalizePlacementsParser: Placement parsing error: ".concat(strA));
            } else {
                PersonalizePlacement personalizePlacement = (PersonalizePlacement) cVarD.b();
                if (personalizePlacement != null) {
                    arrayList2.add(personalizePlacement);
                }
            }
        }
        return arrayList2.isEmpty() ? a("No placements in the list") : new c(arrayList2, null);
    }

    public static c a(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(str);
        }
        String string = sb.toString();
        b3.a("PersonalizePlacementsParser: ".concat(string));
        return new c(null, string);
    }

    public static String a(JSONObject jSONObject, String... strArr) {
        for (String str : strArr) {
            if (!jSONObject.has(str)) {
                String strC = bj.c("No value for key: ", str);
                b3.a("PersonalizePlacementsParser: ".concat(strC));
                return strC;
            }
        }
        return null;
    }
}
