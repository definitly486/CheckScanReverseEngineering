package defpackage;

import android.net.TrafficStats;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.my.target.d1;
import com.my.target.e2;
import com.tapjoy.TJAdUnitConstants;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pda implements Runnable {
    public final /* synthetic */ dha b;
    public final /* synthetic */ String c;
    public final /* synthetic */ int d;
    public final /* synthetic */ pp9 e;
    public final /* synthetic */ e5a f;

    public /* synthetic */ pda(dha dhaVar, String str, int i, pp9 pp9Var, e5a e5aVar) {
        this.b = dhaVar;
        this.c = str;
        this.d = i;
        this.e = pp9Var;
        this.f = e5aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpURLConnection httpURLConnection;
        d1.a aVar;
        d1.a aVar2;
        dha dhaVar = this.b;
        if (dhaVar != null) {
            dhaVar.b();
        }
        d1 d1Var = e2.f;
        ln9 ln9Var = e2.h;
        d1Var.getClass();
        String str = this.c;
        d1.a aVar3 = new d1.a(0, -10, str, null);
        int i = 0;
        String str2 = str;
        while (str2 != null && i <= this.d) {
            y14.r(null, "tryResolveUrl: ".concat(str2));
            try {
                TrafficStats.setThreadStatsTag(98543098);
                httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str2).openConnection()));
                try {
                    httpURLConnection.setReadTimeout(10000);
                    httpURLConnection.setConnectTimeout(10000);
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.addRequestProperty("User-Agent", System.getProperty("http.agent"));
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setRequestProperty("connection", TJAdUnitConstants.String.CLOSE);
                    y14.m(httpURLConnection);
                    if (ln9Var != null) {
                        ln9Var.c(httpURLConnection);
                    }
                    httpURLConnection.connect();
                    aVar = null;
                } catch (SocketTimeoutException e) {
                    e = e;
                    aVar = new d1.a(4, -2, null, e.getMessage());
                } catch (Throwable th) {
                    th = th;
                    aVar = new d1.a(2, -2, null, th.getMessage());
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
                    if (responseCode == 200 || responseCode == 204 || responseCode == 404 || responseCode == 403) {
                        if (ln9Var != null) {
                            ln9Var.a(httpURLConnection);
                        }
                        aVar = new d1.a(0, responseCode, str2, null);
                    } else {
                        aVar = (responseCode == 302 || responseCode == 301 || responseCode == 303) ? d1.a(str2, httpURLConnection, responseCode) : new d1.a(2, responseCode, null, "Unsupported response code");
                    }
                } catch (SocketTimeoutException e3) {
                    aVar2 = new d1.a(4, -2, null, e3.getMessage());
                } catch (Throwable th3) {
                    aVar2 = new d1.a(2, -2, null, th3.getMessage());
                }
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            aVar2 = aVar;
            String str3 = aVar2.b;
            String str4 = aVar2.d;
            int i2 = aVar2.c;
            boolean zA = aVar2.a();
            int i3 = aVar2.a;
            if (zA) {
                str2 = (i3 != 1 || y14.x(str3)) ? null : str3;
                aVar3 = aVar2;
            } else {
                StringBuilder sbF = bg.f(i3, i2, "tryResolveUrl error: result=", ", code=", ", error=");
                sbF.append(str4);
                y14.r(null, sbF.toString());
                aVar3 = new d1.a(0, i2, str2, str4);
                str2 = null;
            }
            i++;
        }
        if (aVar3.a() && i > 1) {
            aVar3 = new d1.a(1, aVar3.c, aVar3.b, null);
        }
        if (!aVar3.a()) {
            this.e.d(2, 7004, "responseCode=" + aVar3.c + ", url=" + str + ", error=" + aVar3.d);
            if (dhaVar != null) {
                dhaVar.a();
            }
        }
        e5a e5aVar = this.f;
        if (e5aVar == null) {
            if (dhaVar != null) {
                dhaVar.a();
            }
        } else {
            if (!aVar3.a() && dhaVar != null) {
                dhaVar.a();
            }
            w4a.c(new ek8(1, e5aVar, aVar3));
        }
    }
}
