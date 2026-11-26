package com.google.android.gms.auth;

import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.me0;

/* JADX INFO: loaded from: classes4.dex */
public final class CookieUtil {
    public static String getCookieUrl(String str, Boolean bool) {
        Preconditions.checkNotEmpty(str);
        return me0.c((bool == null || !bool.booleanValue()) ? ProxyConfig.MATCH_HTTP : ProxyConfig.MATCH_HTTPS, "://", str);
    }

    public static String getCookieValue(String str, String str2, String str3, String str4, Boolean bool, Boolean bool2, Long l) {
        if (str == null) {
            str = "";
        }
        StringBuilder sb = new StringBuilder(str);
        sb.append('=');
        if (!TextUtils.isEmpty(str2)) {
            sb.append(str2);
        }
        if (bool != null && bool.booleanValue()) {
            sb.append(";HttpOnly");
        }
        if (bool2 != null && bool2.booleanValue()) {
            sb.append(";Secure");
        }
        if (!TextUtils.isEmpty(str3)) {
            sb.append(";Domain=");
            sb.append(str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            sb.append(";Path=");
            sb.append(str4);
        }
        if (l != null && l.longValue() > 0) {
            sb.append(";Max-Age=");
            sb.append(l);
        }
        if (!TextUtils.isEmpty(null)) {
            sb.append(";Priority=null");
        }
        if (!TextUtils.isEmpty(null)) {
            sb.append(";SameSite=null");
        }
        return sb.toString();
    }
}
