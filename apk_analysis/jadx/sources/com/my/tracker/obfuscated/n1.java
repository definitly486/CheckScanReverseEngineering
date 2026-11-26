package com.my.tracker.obfuscated;

import android.text.TextUtils;
import com.my.tracker.MyTrackerConfig;
import defpackage.b37;
import defpackage.b57;
import defpackage.jy6;
import defpackage.z47;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes4.dex */
public final class n1 extends w0 {
    final MyTrackerConfig.OkHttpClientProvider a;

    public n1(MyTrackerConfig.OkHttpClientProvider okHttpClientProvider) {
        this.a = okHttpClientProvider;
    }

    @Override // com.my.tracker.obfuscated.w0
    public w0.b a(String str) {
        w0.b bVarD = w0.b.d();
        z47 z47Var = null;
        z47Var = null;
        b3.a("OkHttpGetRequest: send request to " + str);
        b37.a aVar = new b37.a();
        aVar.e(str);
        try {
            aVar.c("GET", null);
            b37 b37VarA = aVar.a();
            OkHttpClient okHttpClient = this.a.getOkHttpClient();
            okHttpClient.getClass();
            z47 z47VarExecute = new jy6(okHttpClient, b37VarA).execute();
            try {
                int i = z47VarExecute.e;
                if (i == 200) {
                    b3.a("OkHttpGetRequest: response successfully received");
                    bVarD.a = true;
                } else {
                    b3.a("OkHttpGetRequest error: response code " + i);
                    bVarD.a = false;
                }
                if (i == 200) {
                    b3.a("OkHttpGetRequest: processing server response");
                    b57 b57Var = z47VarExecute.h;
                    String strV = b57Var != null ? b57Var.v() : null;
                    if (TextUtils.isEmpty(strV)) {
                        b3.a("OkHttpGetRequest: response data is empty");
                    } else {
                        bVarD.b = strV;
                    }
                }
                z47VarExecute.close();
                return bVarD;
            } catch (Throwable th) {
                th = th;
                z47Var = z47VarExecute;
                try {
                    b3.a("OkHttpGetRequest error: error while sending data", th);
                    bVarD.a = false;
                    bVarD.c = "OkHttpGetRequest error: error while sending data";
                    return bVarD;
                } finally {
                    if (z47Var != null) {
                        z47Var.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
