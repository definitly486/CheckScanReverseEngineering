package com.my.target;

import android.net.TrafficStats;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.tapjoy.TJAdUnitConstants;
import defpackage.ln9;
import defpackage.y14;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes4.dex */
public final class d1 {

    public static final class a {
        public final int a;
        public final String b;
        public final int c;
        public final String d;

        public a(int i, int i2, String str, String str2) {
            this.a = i;
            this.b = str;
            this.c = i2;
            this.d = str2;
        }

        public final boolean a() {
            int i = this.a;
            return i == 0 || i == 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0041  */
    public static a a(String str, HttpURLConnection httpURLConnection, int i) {
        boolean z;
        try {
            String string = httpURLConnection.getURL().toURI().resolve(new URI(httpURLConnection.getHeaderField("Location"))).toString();
            if (TextUtils.isEmpty(string)) {
                return new a(2, i, null, "empty redirection");
            }
            if (Build.VERSION.SDK_INT >= 28) {
                z = TextUtils.isEmpty(string) ? false : URLUtil.isHttpsUrl(string);
            }
            boolean zX = y14.x(string);
            if (zX || z) {
                return new a(1, i, string, null);
            }
            return new a(2, i, null, "im=" + zX + ", ar=" + z + ", rt=" + string);
        } catch (Throwable unused) {
            return new a(0, i, str, null);
        }
    }

    public static a b(String str, ln9 ln9Var) {
        HttpURLConnection httpURLConnection;
        a aVar;
        a aVar2 = new a(0, -10, str, null);
        int i = 0;
        while (str != null && i <= 10) {
            y14.r(null, "tryResolveUrl: ".concat(str));
            try {
                TrafficStats.setThreadStatsTag(98543098);
                httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
                try {
                    httpURLConnection.setReadTimeout(10000);
                    httpURLConnection.setConnectTimeout(10000);
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.addRequestProperty("User-Agent", System.getProperty("http.agent"));
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setRequestProperty("connection", TJAdUnitConstants.String.CLOSE);
                    y14.m(httpURLConnection);
                    ln9Var.c(httpURLConnection);
                    httpURLConnection.connect();
                    aVar = null;
                } catch (SocketTimeoutException e) {
                    e = e;
                    aVar = new a(4, -2, null, e.getMessage());
                } catch (Throwable th) {
                    th = th;
                    aVar = new a(2, -2, null, th.getMessage());
                }
            } catch (SocketTimeoutException e2) {
                e = e2;
                httpURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = null;
            }
            if (aVar == null) {
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (Throwable unused) {
                    }
                    if (responseCode == 200 || responseCode == 204) {
                        ln9Var.a(httpURLConnection);
                        aVar = new a(0, responseCode, str, null);
                    } else {
                        aVar = (responseCode == 302 || responseCode == 301 || responseCode == 303) ? a(str, httpURLConnection, responseCode) : new a(2, responseCode, null, "Unsupported response code");
                    }
                } catch (SocketTimeoutException e3) {
                    aVar2 = new a(4, -2, null, e3.getMessage());
                } catch (Throwable th3) {
                    aVar2 = new a(2, -2, null, th3.getMessage());
                }
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            aVar2 = aVar;
            str = aVar2.b;
            if (aVar2.a != 1 || y14.x(str)) {
                str = null;
            }
            i++;
        }
        if (!aVar2.a() || i <= 1) {
            return aVar2;
        }
        return new a(1, aVar2.c, aVar2.b, null);
    }
}
