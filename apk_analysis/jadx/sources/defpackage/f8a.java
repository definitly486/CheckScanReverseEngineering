package defpackage;

import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class f8a {
    public final fh8 a = new fh8(new x4a(0));

    public f8a(l1 l1Var, qu6 qu6Var, ql9.a aVar) {
    }

    public static String a(ArrayList arrayList) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            x06 x06Var = (x06) it.next();
            x06Var.getClass();
            String str = x06Var.c;
            ya5 ya5Var = x06Var.e;
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("event_name", ya5Var.a);
            jSONObject2.put("user_id", str);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("package_name", x06Var.a);
            String str2 = x06Var.d;
            if (str2 == null) {
                str2 = null;
            }
            jSONObject3.put(RemoteConfigConstants.RequestFieldKey.APP_VERSION, str2);
            jSONObject3.put("userIdSdk", str);
            jSONObject3.put("time", String.valueOf(ya5Var.c));
            for (Map.Entry<String, String> entry : ya5Var.b.entrySet()) {
                jSONObject3.put(entry.getKey(), entry.getValue());
            }
            jSONObject2.put(TJAdUnitConstants.String.BEACON_PARAMS, jSONObject3);
            String string = jSONObject2.toString();
            string.getClass();
            jSONArray.put(new JSONObject(string));
        }
        jSONObject.put("events", jSONArray);
        String string2 = jSONObject.toString();
        string2.getClass();
        return string2;
    }

    public final HttpsURLConnection b() throws ProtocolException {
        fh8 fh8Var = this.a;
        URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(((URL) fh8Var.getValue()).openConnection());
        uRLConnection.getClass();
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnection;
        final URL url = (URL) fh8Var.getValue();
        url.getClass();
        httpsURLConnection.setHostnameVerifier(new HostnameVerifier() { // from class: a8a
            @Override // javax.net.ssl.HostnameVerifier
            public final boolean verify(String str, SSLSession sSLSession) {
                return str.equals(url.getHost());
            }
        });
        httpsURLConnection.setRequestMethod("POST");
        httpsURLConnection.setRequestProperty("content-type", "application/json");
        httpsURLConnection.setRequestProperty("X-Metrics-Request-Time", String.valueOf(System.currentTimeMillis()));
        httpsURLConnection.setConnectTimeout(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
        httpsURLConnection.setReadTimeout(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
        httpsURLConnection.setDoOutput(true);
        return httpsURLConnection;
    }
}
