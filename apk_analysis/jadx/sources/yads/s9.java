package yads;

import android.webkit.WebView;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJDeviceNetworkKt;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class s9 {
    public final String a;
    public f4 c;
    public xz3 d;
    public long f = System.nanoTime();
    public int e = 1;
    public np6 b = new np6(null);

    public s9(String str) {
        this.a = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(dp6 dp6Var, q9 q9Var, JSONObject jSONObject) {
        String str;
        String str2 = dp6Var.h;
        JSONObject jSONObject2 = new JSONObject();
        rp6.a(jSONObject2, "environment", "app");
        rp6.a(jSONObject2, "adSessionType", q9Var.e);
        rp6.a(jSONObject2, "deviceInfo", kp6.a());
        int iA = zo6.a();
        if (iA == 1) {
            str = "ctv";
        } else if (iA == 2) {
            str = TJDeviceNetworkKt.TJC_CONNECTION_TYPE_MOBILE;
        } else {
            if (iA != 3) {
                throw null;
            }
            str = "other";
        }
        rp6.a(jSONObject2, "deviceCategory", str);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        rp6.a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        q9Var.a.getClass();
        rp6.a(jSONObject3, "partnerName", "Yandex");
        q9Var.a.getClass();
        rp6.a(jSONObject3, "partnerVersion", "8.2.0");
        rp6.a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        rp6.a(jSONObject4, "libraryVersion", "1.5.6-Yandex");
        rp6.a(jSONObject4, RemoteConfigConstants.RequestFieldKey.APP_ID, kq6.b.a.getApplicationContext().getPackageName());
        rp6.a(jSONObject2, "app", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        for (h96 h96Var : Collections.unmodifiableList(q9Var.b)) {
            rp6.a(jSONObject5, h96Var.a, h96Var.c);
        }
        nq6.a.a((WebView) this.b.get(), "startSession", str2, jSONObject2, jSONObject5, jSONObject);
    }

    public void b() {
    }

    public void a(dp6 dp6Var, q9 q9Var) {
        a(dp6Var, q9Var, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(String str, JSONObject jSONObject) {
        nq6.a.a((WebView) this.b.get(), "publishMediaEvent", str, jSONObject, this.a);
    }

    public void a() {
        this.b.clear();
    }
}
