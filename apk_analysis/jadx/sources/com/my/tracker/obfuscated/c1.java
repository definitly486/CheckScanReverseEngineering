package com.my.tracker.obfuscated;

import android.text.TextUtils;
import com.my.tracker.MyTrackerConfig;
import defpackage.gd9;
import java.net.InetAddress;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class c1 {
    boolean a = false;
    private b1 b = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void b(String str, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider) {
        b3.a("Ipv4DataProvider: get IPv4 address");
        try {
            w0.b bVarA = w0.a(okHttpClientProvider).a(str);
            if (!bVarA.c()) {
                b3.a("Ipv4DataProvider: unsuccessful response from server: " + bVarA.a());
                return;
            }
            String str2 = (String) bVarA.b();
            if (TextUtils.isEmpty(str2)) {
                b3.a("Ipv4DataProvider: empty response from server");
                return;
            }
            String strOptString = new JSONObject(str2).optString("ip");
            if (TextUtils.isEmpty(strOptString)) {
                b3.a("Ipv4DataProvider: IP is empty");
                return;
            }
            b3.a("Ipv4DataProvider: IPv4 address is received " + strOptString);
            this.b = new b1(InetAddress.getByName(strOptString).getAddress());
        } catch (Throwable th) {
            b3.b("Ipv4DataProvider: failed to get IPv4 address", th);
        }
    }

    public b1 a(String str, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider) {
        if (!this.a) {
            this.a = true;
            m.b(new gd9(this, str, okHttpClientProvider, 1));
        }
        return this.b;
    }
}
