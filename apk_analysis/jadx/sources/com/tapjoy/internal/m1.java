package com.tapjoy.internal;

import com.tapjoy.TJGetUserRevenueListener;
import com.tapjoy.TJUserRevenue;
import com.tapjoy.TJUserRevenueConversion;
import defpackage.kn1;
import defpackage.ni0;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class m1 extends e1 {
    public final r2 i = new r2();

    public final void a(TJGetUserRevenueListener tJGetUserRevenueListener) {
        r2 r2Var = this.i;
        String strC = ni0.c(this.h, "api/impression_level_revenue_data");
        Map mapA = a();
        String string = b().toString();
        r2Var.getClass();
        s2 s2VarA = r2.a(mapA, strC, string);
        try {
            if (s2VarA.a != 200) {
                if (tJGetUserRevenueListener != null) {
                    tJGetUserRevenueListener.onGetUserRevenueResponseFailure("Failed to get user revenue");
                    return;
                }
                return;
            }
            String str = s2VarA.b;
            if (str == null) {
                str = "{}";
            }
            JSONObject jSONObject = new JSONObject(str);
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("conversions");
            int i = 0;
            int length = jSONArrayOptJSONArray != null ? jSONArrayOptJSONArray.length() : 0;
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray != null ? jSONArrayOptJSONArray.optJSONObject(i2) : null;
                if (jSONObjectOptJSONObject != null) {
                    arrayList.add(new z1(jSONObjectOptJSONObject));
                }
            }
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                z1 z1Var = (z1) obj;
                if (z1Var.a != null && z1Var.b != null) {
                    arrayList2.add(obj);
                }
            }
            ArrayList arrayList3 = new ArrayList(kn1.q(arrayList2, 10));
            int size2 = arrayList2.size();
            while (i < size2) {
                Object obj2 = arrayList2.get(i);
                i++;
                z1 z1Var2 = (z1) obj2;
                String str2 = z1Var2.a;
                str2.getClass();
                Date date = z1Var2.b;
                date.getClass();
                Double d = z1Var2.c;
                double dDoubleValue = d != null ? d.doubleValue() : 0.0d;
                String str3 = z1Var2.d;
                if (str3 == null) {
                    str3 = "USD";
                }
                arrayList3.add(new TJUserRevenueConversion(str2, date, Double.valueOf(dDoubleValue), str3));
            }
            TJUserRevenue tJUserRevenue = new TJUserRevenue(arrayList3);
            if (tJGetUserRevenueListener != null) {
                tJGetUserRevenueListener.onGetUserRevenueResponse(tJUserRevenue);
            }
        } catch (Exception unused) {
            if (tJGetUserRevenueListener != null) {
                tJGetUserRevenueListener.onGetUserRevenueResponseFailure("Failed to get user revenue");
            }
        }
    }
}
