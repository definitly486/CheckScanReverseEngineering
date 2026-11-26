package com.my.tracker.obfuscated;

import android.content.Context;
import java.net.HttpURLConnection;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e0 {
    private static s a;
    private static boolean b;

    public static void a(HttpURLConnection httpURLConnection) {
        s sVar = a;
        if (sVar != null && (httpURLConnection instanceof HttpsURLConnection)) {
            try {
                ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sVar.b.getSocketFactory());
            } catch (Throwable th) {
                b3.a("DigitalGovCertsUtils: can't setSSLSocketFactory to httpsURLConnection" + th.getMessage());
            }
        }
    }

    public static void a(Context context) {
        if (b) {
            return;
        }
        s sVarA = new t().a(context);
        a = sVarA;
        if (sVarA == null) {
            b3.b("DigitalGovCertsUtils: can't init digital gov certs – certData is null");
        }
        b = true;
    }
}
