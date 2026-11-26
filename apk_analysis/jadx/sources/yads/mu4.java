package yads;

import androidx.webkit.ProxyConfig;
import defpackage.ta8;
import defpackage.u96;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class mu4 {
    public static final List a;
    public static final sr b;

    static {
        List listH = u96.h(new tr('0', "\\d", '_'));
        a = listH;
        b = new sr(a(""), listH, false);
    }

    public static final String a(String str) throws JSONException {
        if (ta8.M(str)) {
            return "000000000000000";
        }
        JSONObject jSONObject = nu4.a;
        int i = 0;
        while (!jSONObject.has("value")) {
            int length = str.length();
            String str2 = ProxyConfig.MATCH_ALL_SCHEMES;
            if (i >= length) {
                Object obj = jSONObject.get(ProxyConfig.MATCH_ALL_SCHEMES);
                obj.getClass();
                jSONObject = (JSONObject) obj;
                break;
            }
            int i2 = i + 1;
            String strValueOf = String.valueOf(str.charAt(i));
            if (jSONObject.has(strValueOf)) {
                str2 = strValueOf;
            }
            Object obj2 = jSONObject.get(str2);
            obj2.getClass();
            jSONObject = (JSONObject) obj2;
            i = i2;
        }
        return defpackage.ni0.c(jSONObject.getString("value"), "00");
    }

    public static final sr a() {
        return b;
    }
}
