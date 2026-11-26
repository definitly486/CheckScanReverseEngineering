package io.appmetrica.analytics.networktasks.impl;

import android.net.Uri;
import androidx.webkit.ProxyConfig;

/* JADX INFO: loaded from: classes5.dex */
public final class c {
    public final String a;

    public c(String str) {
        this.a = a(str);
    }

    public static String a(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        Uri uri = Uri.parse(str);
        return ProxyConfig.MATCH_HTTP.equals(uri.getScheme()) ? uri.buildUpon().scheme(ProxyConfig.MATCH_HTTPS).build().toString() : str;
    }
}
