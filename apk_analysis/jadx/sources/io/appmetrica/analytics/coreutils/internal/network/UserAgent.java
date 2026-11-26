package io.appmetrica.analytics.coreutils.internal.network;

import android.os.Build;
import defpackage.ra8;
import defpackage.xp;
import io.appmetrica.analytics.coreutils.internal.StringExtensions;

/* JADX INFO: loaded from: classes5.dex */
public final class UserAgent {
    public static final UserAgent INSTANCE = new UserAgent();

    private UserAgent() {
    }

    public static final String getFor(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append('/');
        sb.append(str2);
        sb.append('.');
        sb.append(str3);
        sb.append(" (");
        INSTANCE.getClass();
        StringExtensions stringExtensions = StringExtensions.INSTANCE;
        String str4 = Build.MODEL;
        String str5 = Build.MANUFACTURER;
        if (!ra8.C(str4, str5, false)) {
            str4 = str5 + ' ' + str4;
        }
        sb.append(stringExtensions.replaceFirstCharWithTitleCase(str4));
        sb.append("; Android ");
        return xp.e(sb, Build.VERSION.RELEASE, ')');
    }
}
