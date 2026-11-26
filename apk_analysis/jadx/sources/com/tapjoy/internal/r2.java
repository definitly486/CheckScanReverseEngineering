package com.tapjoy.internal;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TapjoyLog;
import defpackage.ha1;
import defpackage.j59;
import defpackage.m96;
import defpackage.pg;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class r2 {
    /* JADX WARN: Code duplicated, block: B:84:0x0214  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.StringBuilder] */
    public static s2 a(String str, String str2, Map map, String str3, String str4) throws Throwable {
        ?? r1 = str2;
        ?? r8 = 0;
        s2 s2Var = new s2(0, null, null, 0L, 0L, null);
        StringBuilder sb = new StringBuilder();
        try {
            try {
                TapjoyLog.d("http " + (str4 == null ? "get" : "post") + ": " + str + r1);
                ?? sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(r1);
                URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(sb2.toString()).openConnection());
                uRLConnection.getClass();
                HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
                try {
                    httpURLConnection.setConnectTimeout(15000);
                    httpURLConnection.setReadTimeout(30000);
                    if (map != null) {
                        for (Map.Entry entry : map.entrySet()) {
                            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                    }
                    if (str4 != null) {
                        httpURLConnection.setRequestMethod("POST");
                        TapjoyLog.d("Content-Type: " + str3 + " Content: " + str4);
                        httpURLConnection.setRequestProperty("Content-Type", str3);
                        httpURLConnection.setRequestProperty("Connection", TJAdUnitConstants.String.CLOSE);
                        httpURLConnection.setDoOutput(true);
                        byte[] bytes = str4.getBytes(ha1.b);
                        bytes.getClass();
                        httpURLConnection.setFixedLengthStreamingMode(bytes.length);
                        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream());
                        try {
                            outputStreamWriter.write(str4);
                            j59 j59Var = j59.a;
                            outputStreamWriter.close();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                m96.c(outputStreamWriter, th);
                                throw th2;
                            }
                        }
                    }
                    httpURLConnection.connect();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            sb.append(line);
                            sb.append('\n');
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                m96.c(bufferedReader, th3);
                                throw th4;
                            }
                        }
                    }
                    j59 j59Var2 = j59.a;
                    bufferedReader.close();
                    s2 s2Var2 = new s2(httpURLConnection.getResponseCode(), sb.toString(), (httpURLConnection.getResponseCode() == 302 || httpURLConnection.getResponseCode() == 301) ? httpURLConnection.getHeaderField("Location") : null, httpURLConnection.getDate(), httpURLConnection.getExpiration(), httpURLConnection.getHeaderFields());
                    httpURLConnection.disconnect();
                    s2Var = s2Var2;
                } catch (Exception e) {
                    e = e;
                    r1 = httpURLConnection;
                    TapjoyLog.e("Exception: " + e.getMessage());
                    if (r1 != 0) {
                        try {
                            sb.setLength(0);
                            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(r1.getErrorStream()));
                            while (true) {
                                try {
                                    String line2 = bufferedReader2.readLine();
                                    if (line2 == null) {
                                        break;
                                    }
                                    sb.append(line2);
                                    sb.append('\n');
                                } catch (Throwable th5) {
                                    try {
                                        throw th5;
                                    } catch (Throwable th6) {
                                        m96.c(bufferedReader2, th5);
                                        throw th6;
                                    }
                                }
                            }
                            j59 j59Var3 = j59.a;
                            bufferedReader2.close();
                            s2Var.b = sb.toString();
                        } catch (Exception e2) {
                            TapjoyLog.e("Exception trying to get error code/content: " + e2.getMessage());
                        }
                    }
                    if (r1 != 0) {
                        r1.disconnect();
                    }
                }
            } catch (Exception e3) {
                e = e3;
                r1 = 0;
            } catch (Throwable th7) {
                th = th7;
                if (r8 != 0) {
                    r8.disconnect();
                }
                throw th;
            }
            int i = s2Var.a;
            String str5 = s2Var.b;
            TapjoyLog.d("Response status: " + i + " size: " + (str5 != null ? Integer.valueOf(str5.length()) : null));
            String str6 = s2Var.c;
            if (str6 != null && str6.length() > 0) {
                TapjoyLog.i("redirectURL: " + s2Var.c);
            }
            return s2Var;
        } catch (Throwable th8) {
            th = th8;
            r8 = r1;
            if (r8 != 0) {
                r8.disconnect();
            }
            throw th;
        }
    }

    public static s2 a(Map map, String str, String str2) {
        str.getClass();
        return a(str, "", map, "application/json;charset=utf-8", str2);
    }

    public static String a(Map map) {
        String strG = "";
        if (map == null) {
            return "";
        }
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (strG.length() > 0) {
                strG = strG.concat("&");
            }
            strG = pg.g(strG, str, "=", str2);
        }
        return strG;
    }
}
