package defpackage;

import android.net.TrafficStats;
import androidx.media3.common.PlaybackException;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.tapjoy.TJAdUnitConstants;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class g5a extends y14 {
    public static final Charset p = StandardCharsets.UTF_8;
    public final z8a o;

    public g5a(z8a z8aVar) {
        this.o = z8aVar;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0198  */
    public final vda U(String str, String str2, Map map) {
        Throwable th;
        HttpURLConnection httpURLConnection;
        String str3;
        vda vdaVar = new vda();
        try {
            y14.r(null, "HttpAdRequest: Send ad request - " + str);
            TrafficStats.setThreadStatsTag(98543098);
            httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
            try {
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setInstanceFollowRedirects(true);
                httpURLConnection.setRequestProperty("connection", TJAdUnitConstants.String.CLOSE);
                y14.m(httpURLConnection);
                if (map != null) {
                    for (Map.Entry entry : ((HashMap) map).entrySet()) {
                        httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                    }
                }
                if (str2 != null) {
                    str3 = "body - " + str2;
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setRequestProperty("Content-Type", "application/x-mtrgdata-v1");
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    try {
                        outputStream.write(str2.getBytes());
                        outputStream.close();
                    } catch (Throwable th2) {
                        if (outputStream == null) {
                            throw th2;
                        }
                        try {
                            outputStream.close();
                            throw th2;
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                            throw th2;
                        }
                    }
                } else {
                    str3 = "url - " + str;
                    httpURLConnection.connect();
                }
                y14.r(null, "HttpAdRequest: Send ad request, " + str3);
                int responseCode = httpURLConnection.getResponseCode();
                vdaVar.b = responseCode;
                if (responseCode == 200) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), p));
                    try {
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            sb.append(line);
                            th = th;
                            this.o.a("message=" + th.getMessage() + "\nexception=" + y14.p(th), 0, 3, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, null);
                            if (th instanceof SocketTimeoutException) {
                                vdaVar.b = 408;
                            }
                            vdaVar.a = false;
                            vdaVar.d = th.getMessage();
                            i01.d(new StringBuilder("HttpAdRequest: Ad request error - "), vdaVar.d, null);
                        }
                        vdaVar.c = sb.toString();
                        bufferedReader.close();
                    } catch (Throwable th4) {
                        try {
                            bufferedReader.close();
                            throw th4;
                        } catch (Throwable th5) {
                            th4.addSuppressed(th5);
                            throw th4;
                        }
                    }
                } else if (responseCode != 204) {
                    this.o.a("code=" + httpURLConnection.getResponseCode(), 0, 1, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, null);
                    vdaVar.a = false;
                    vdaVar.d = "Ad request error - response code " + responseCode;
                    y14.r(null, "HttpAdRequest: " + vdaVar.d);
                }
            } catch (Throwable th6) {
                th = th6;
                this.o.a("message=" + th.getMessage() + "\nexception=" + y14.p(th), 0, 3, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, null);
                if (th instanceof SocketTimeoutException) {
                    vdaVar.b = 408;
                }
                vdaVar.a = false;
                vdaVar.d = th.getMessage();
                i01.d(new StringBuilder("HttpAdRequest: Ad request error - "), vdaVar.d, null);
            }
        } catch (Throwable th7) {
            th = th7;
            httpURLConnection = null;
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        return vdaVar;
    }
}
