package io.appmetrica.analytics.coreutils.internal;

import defpackage.ga1;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class StringExtensions {
    public static final StringExtensions INSTANCE = new StringExtensions();

    private StringExtensions() {
    }

    public final String replaceFirstCharWithTitleCase(String str, Locale locale) {
        if (str.length() <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char cCharAt = str.charAt(0);
        sb.append((Object) (Character.isLowerCase(cCharAt) ? ga1.f(cCharAt, locale) : String.valueOf(cCharAt)));
        sb.append(str.substring(1));
        return sb.toString();
    }

    public final String replaceFirstCharWithTitleCase(String str) {
        return replaceFirstCharWithTitleCase(str, Locale.US);
    }
}
