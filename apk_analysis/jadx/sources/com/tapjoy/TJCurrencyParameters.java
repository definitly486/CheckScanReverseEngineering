package com.tapjoy;

import android.content.Context;
import defpackage.aa4;
import defpackage.b36;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class TJCurrencyParameters {
    public boolean a;
    public boolean b;
    public ArrayList c = new ArrayList();
    public final HashMap d = new HashMap();

    public final void fetchCurrencyParams(Context context) {
        if (context == null) {
            return;
        }
        TJKeyValueStorage tJKeyValueStorage = new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE);
        if (tJKeyValueStorage.contains(TJCurrencyParametersKt.PREF_SERVER_CURRENCY_IDS)) {
            String string = tJKeyValueStorage.getString(TJCurrencyParametersKt.PREF_SERVER_CURRENCY_IDS, "[]");
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = new JSONArray(string);
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    String strOptString = jSONObject.optString(TapjoyConstants.TJC_CURRENCY_ID);
                    this.a = aa4.e(jSONObject.optString("currency_type"), TapjoyConstants.PREF_CURRENCY_SELF_MANAGED);
                    this.b = jSONObject.optBoolean("allow_pub_currency_set_balance");
                    arrayList.add(strOptString);
                }
            } catch (JSONException unused) {
                TapjoyLog.d("Failed to parse currency id list");
            }
            if (!arrayList.isEmpty()) {
                this.c = arrayList;
            }
        }
        if (this.a || this.b) {
            return;
        }
        int i2 = tJKeyValueStorage.getInt(TJCurrencyParametersKt.PREF_SERVER_CURRENCY_BALANCE, -9999);
        if (this.c.isEmpty()) {
            return;
        }
        saveCurrencyBalance((String) qn1.T(this.c), i2);
    }

    public final boolean getAllowCurrencySetBalance() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int getCurrencyAmountRequired(String str) {
        b36 b36Var;
        Integer num;
        str.getClass();
        if (!this.d.containsKey(str) || (b36Var = (b36) this.d.get(str)) == null || (num = (Integer) b36Var.c) == null) {
            return -1;
        }
        return num.intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int getCurrencyBalance(String str) {
        b36 b36Var;
        Integer num;
        str.getClass();
        if (!this.d.containsKey(str) || (b36Var = (b36) this.d.get(str)) == null || (num = (Integer) b36Var.b) == null) {
            return -1;
        }
        return num.intValue();
    }

    public final ArrayList<String> getCurrencyIdList() {
        return this.c;
    }

    public final HashMap<String, b36<Integer, Integer>> getCurrencyMap() {
        return this.d;
    }

    public final boolean isSelfManaged() {
        return this.a;
    }

    public final void saveCurrencyAmountRequired(String str, int i) {
        str.getClass();
        HashMap map = this.d;
        b36 b36Var = (b36) map.get(str);
        map.put(str, b36Var != null ? b36.a(b36Var, null, Integer.valueOf(i), 1) : new b36(null, Integer.valueOf(i)));
    }

    public final void saveCurrencyBalance(String str, int i) {
        str.getClass();
        HashMap map = this.d;
        b36 b36Var = (b36) map.get(str);
        map.put(str, b36Var != null ? b36.a(b36Var, Integer.valueOf(i), null, 2) : new b36(Integer.valueOf(i), null));
    }

    public final void setAllowCurrencySetBalance(boolean z) {
        this.b = z;
    }

    public final void setCurrencyIdList(List<String> list) {
        this.c.clear();
        if (list != null) {
            this.c.addAll(list);
        }
    }

    public final void setSelfManaged(boolean z) {
        this.a = z;
    }

    public final void setCurrencyIdList(ArrayList<String> arrayList) {
        arrayList.getClass();
        this.c = arrayList;
    }
}
