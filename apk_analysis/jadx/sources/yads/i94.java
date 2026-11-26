package yads;

import androidx.webkit.ProxyConfig;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class i94 extends dr {
    public final t45 a;
    public final fn4 b;
    public final ta3 c;
    public final xa3 d;

    public i94(SSLSocketFactory sSLSocketFactory) {
        t45 t45Var = new t45();
        fn4 fn4Var = new fn4();
        ta3 ta3Var = new ta3();
        this.a = t45Var;
        this.b = fn4Var;
        this.c = ta3Var;
        this.d = new xa3(sSLSocketFactory);
    }

    public static final sa3 a(i94 i94Var, Map map, r75 r75Var) throws Throwable {
        byte[] bArrD;
        sa3 sa3VarB = i94Var.b(r75Var, map);
        i94Var.c.getClass();
        try {
            InputStream byteArrayInputStream = sa3VarB.d;
            if (byteArrayInputStream == null) {
                byteArrayInputStream = sa3VarB.e != null ? new ByteArrayInputStream(sa3VarB.e) : null;
            }
            if (byteArrayInputStream != null) {
                try {
                    bArrD = defpackage.ex0.d(byteArrayInputStream);
                    byteArrayInputStream.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        defpackage.m96.c(byteArrayInputStream, th);
                        throw th2;
                    }
                }
            } else {
                bArrD = new byte[0];
            }
        } catch (Exception unused) {
            bArrD = new byte[0];
        }
        int i = sa3VarB.a;
        List listUnmodifiableList = Collections.unmodifiableList(sa3VarB.b);
        sa3 sa3Var = new sa3(i, listUnmodifiableList, bArrD);
        x75.a(System.currentTimeMillis(), r75Var, new en4(i, bArrD, true, Collections.unmodifiableList(listUnmodifiableList)));
        return sa3Var;
    }

    public final sa3 b(r75 r75Var, Map map) throws Throwable {
        SSLSocketFactory sSLSocketFactory;
        en4 en4VarA = this.b.a(r75Var);
        if (en4VarA != null) {
            this.a.getClass();
            ArrayList arrayList = new ArrayList();
            Map map2 = en4VarA.c;
            if (map2 != null) {
                for (Map.Entry entry : map2.entrySet()) {
                    arrayList.add(new q83((String) entry.getKey(), (String) entry.getValue()));
                }
            }
            return new sa3(en4VarA.a, arrayList, en4VarA.b);
        }
        xa3 xa3Var = this.d;
        xa3Var.getClass();
        String strG = r75Var.g();
        HashMap map3 = new HashMap();
        map3.putAll(map);
        map3.putAll(r75Var.d());
        URL url = new URL(strG);
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int i = r75Var.o.a;
        httpURLConnection.setConnectTimeout(i);
        httpURLConnection.setReadTimeout(i);
        boolean z = false;
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if (ProxyConfig.MATCH_HTTPS.equals(url.getProtocol()) && (sSLSocketFactory = xa3Var.a) != null) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
        }
        try {
            for (String str : map3.keySet()) {
                httpURLConnection.setRequestProperty(str, (String) map3.get(str));
            }
            int i2 = r75Var.c;
            if (i2 == 0) {
                httpURLConnection.setRequestMethod("GET");
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("Unknown method type.");
                }
                httpURLConnection.setRequestMethod("POST");
                byte[] bArrB = r75Var.b();
                if (bArrB != null) {
                    httpURLConnection.setDoOutput(true);
                    if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
                        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
                    }
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(bArrB);
                    dataOutputStream.close();
                }
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (r75Var.c == 4 || ((100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304)) {
                sa3 sa3Var = new sa3(responseCode, xa3.a(httpURLConnection.getHeaderFields()), -1, null);
                httpURLConnection.disconnect();
                return sa3Var;
            }
            try {
                return new sa3(responseCode, xa3.a(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new wa3(httpURLConnection));
            } catch (Throwable th) {
                th = th;
                z = true;
                if (!z) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final sa3 a(r75 r75Var, Map map) {
        boolean z;
        synchronized (u94.a) {
            z = u94.b;
        }
        if (z) {
            return a(this, map, r75Var);
        }
        return b(r75Var, map);
    }
}
