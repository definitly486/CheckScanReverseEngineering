package com.my.tracker.obfuscated;

import android.net.TrafficStats;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes4.dex */
public final class u0 extends w0 {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.my.tracker.obfuscated.w0
    public w0.b a(String str) {
        w0.b bVarD = w0.b.d();
        HttpURLConnection httpURLConnection = null;
        Object[] objArr = 0;
        try {
            b3.a("HttpGetRequest: send request to " + str);
            TrafficStats.setThreadStatsTag(27498374);
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
            try {
                httpURLConnection2.setConnectTimeout(3000);
                httpURLConnection2.setReadTimeout(3000);
                httpURLConnection2.setRequestMethod("GET");
                e0.a(httpURLConnection2);
                int responseCode = httpURLConnection2.getResponseCode();
                b3.a("HttpGetRequest: response received with response code: " + responseCode);
                bVarD.a = responseCode == 200;
                try {
                    b3.a("HttpGetRequest: processing server response");
                    BufferedReader bufferedReader = bVarD.a ? new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream())) : new BufferedReader(new InputStreamReader(httpURLConnection2.getErrorStream()));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    }
                    if (sb.length() > 0) {
                        bVarD.b = sb.toString();
                    } else {
                        b3.a("HttpGetRequest: response data is empty");
                    }
                    bufferedReader.close();
                    httpURLConnection2.disconnect();
                    return bVarD;
                } catch (Throwable th) {
                    if (0 != 0) {
                        (objArr == true ? 1 : 0).close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = httpURLConnection2;
                try {
                    b3.a("HttpGetRequest: error", th);
                    bVarD.a = false;
                    bVarD.c = "HttpGetRequest: error while sending data";
                    return bVarD;
                } finally {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
