package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class xfa extends gh4 implements ll3<e49> {
    public final /* synthetic */ sha f;
    public final /* synthetic */ h5a g;
    public final /* synthetic */ String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xfa(sha shaVar, h5a h5aVar, String str) {
        super(0);
        this.f = shaVar;
        this.g = h5aVar;
        this.h = str;
    }

    @Override // defpackage.ll3
    public final e49 invoke() throws Throwable {
        HttpsURLConnection httpsURLConnection;
        nh5 nh5Var = this.f.a;
        JSONObject jSONObject = new JSONObject();
        h5a h5aVar = this.g;
        jSONObject.put("phone_sha256", h5aVar.a);
        jSONObject.put("platform", "android");
        jSONObject.put("partner", h5aVar.b);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("customEventName", "install");
        jSONObject2.put("eventTimestamp", String.valueOf(h5aVar.c));
        j59 j59Var = j59.a;
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, jSONObject2);
        String string = jSONObject.toString();
        string.getClass();
        String str = this.h;
        try {
            final URL url = new URL("https://ad.mail.ru/fsa/");
            URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection());
            uRLConnection.getClass();
            httpsURLConnection = (HttpsURLConnection) uRLConnection;
            httpsURLConnection.setConnectTimeout(30000);
            httpsURLConnection.setReadTimeout(30000);
            httpsURLConnection.setHostnameVerifier(new HostnameVerifier() { // from class: q2a
                @Override // javax.net.ssl.HostnameVerifier
                public final boolean verify(String str2, SSLSession sSLSession) {
                    return str2.equals(url.getHost());
                }
            });
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setRequestProperty("Authorization", "Token ".concat(str));
            httpsURLConnection.setDoOutput(true);
            OutputStream outputStream = httpsURLConnection.getOutputStream();
            try {
                byte[] bytes = string.getBytes(ha1.b);
                bytes.getClass();
                outputStream.write(bytes);
                outputStream.flush();
                outputStream.close();
                try {
                    e49 e49VarB = u49.b(httpsURLConnection);
                    httpsURLConnection.disconnect();
                    return e49VarB;
                } catch (Throwable th) {
                    th = th;
                    if (httpsURLConnection != null) {
                        httpsURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    m96.c(outputStream, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            httpsURLConnection = null;
        }
    }
}
