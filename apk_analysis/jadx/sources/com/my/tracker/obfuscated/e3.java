package com.my.tracker.obfuscated;

import android.net.Uri;
import androidx.webkit.ProxyConfig;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e3 {
    public static String a(String str, String str2, String str3) {
        return a(str + "." + str2, str3);
    }

    public static String a(String str, String str2) {
        Uri.Builder builderEncodedAuthority = new Uri.Builder().scheme(ProxyConfig.MATCH_HTTPS).encodedAuthority(str);
        if (str2 != null) {
            builderEncodedAuthority.appendEncodedPath(str2);
        }
        return builderEncodedAuthority.toString();
    }
}
