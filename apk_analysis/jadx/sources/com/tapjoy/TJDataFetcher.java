package com.tapjoy;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TJDataFetcher {
    public final JSONObject a = new JSONObject();

    /* JADX WARN: Code duplicated, block: B:11:0x0023  */
    public final JSONObject a(JSONArray jSONArray) throws JSONException {
        Object obj;
        for (int i = 0; i < jSONArray.length(); i++) {
            if (jSONArray.get(i).equals("USER_ID")) {
                String userID = TJUser.INSTANCE.getUserID();
                JSONObject jSONObject = this.a;
                if (userID != null) {
                    boolean zIsEmpty = userID.isEmpty();
                    obj = userID;
                    if (zIsEmpty) {
                        obj = JSONObject.NULL;
                    }
                } else {
                    obj = JSONObject.NULL;
                }
                jSONObject.put("USER_ID", obj);
            }
        }
        return this.a;
    }
}
