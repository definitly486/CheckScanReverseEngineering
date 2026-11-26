package yads;

import android.content.Context;
import android.util.Base64;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class wg5 {
    public final Context a;
    public final q84 b;
    public final zg5 c;

    public wg5(Context context, q84 q84Var) {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        this.a = context;
        this.b = q84Var;
        this.c = zg5Var2;
    }

    public static Map a(String str) {
        defpackage.mx2 mx2Var = defpackage.mx2.b;
        if (str != null && str.length() != 0) {
            try {
                JSONArray jSONArrayOptJSONArray = new JSONObject(new String(Base64.decode(str, 0), defpackage.ha1.b)).optJSONArray("networks");
                if (jSONArrayOptJSONArray == null) {
                    return mx2Var;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null) {
                        String strOptString = jSONObjectOptJSONObject.optString("adapter", "unknown_" + i);
                        byte[] bytes = jSONObjectOptJSONObject.toString().getBytes(defpackage.ha1.b);
                        bytes.getClass();
                        linkedHashMap.put(strOptString, Integer.valueOf((bytes.length + 512) / 1024));
                    }
                }
                return linkedHashMap;
            } catch (Exception unused) {
            }
        }
        return mx2Var;
    }

    public static int a(Map map) {
        int length = 0;
        for (Map.Entry entry : map.entrySet()) {
            byte[] bytes = (((String) entry.getKey()) + ": " + ((String) entry.getValue()) + "\r\n").getBytes(defpackage.ha1.b);
            bytes.getClass();
            length += bytes.length;
        }
        return length;
    }

    public final Map a(Map map, int i, e4 e4Var, int i2) {
        return defpackage.n05.e(new defpackage.b36("headers_size", Integer.valueOf((a(map) + 512) / 1024)), new defpackage.b36("sdk_request_size", Integer.valueOf((i + 512) / 1024)), new defpackage.b36("bidding_data_network_sizes", a(e4Var.h)), new defpackage.b36("ad_type_format", e4Var.a.b), new defpackage.b36("code", Integer.valueOf(i2)), new defpackage.b36("sdk_version", "8.2.0"), new defpackage.b36(CommonUrlParts.APP_ID, this.a.getPackageName()));
    }
}
