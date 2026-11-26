package yads;

import android.os.Build;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class kp6 {
    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        rp6.a(jSONObject, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        rp6.a(jSONObject, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        rp6.a(jSONObject, "os", "Android");
        return jSONObject;
    }
}
