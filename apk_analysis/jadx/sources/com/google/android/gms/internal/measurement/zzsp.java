package com.google.android.gms.internal.measurement;

import defpackage.fg;
import defpackage.wb4;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsp {
    public static final Pattern a = Pattern.compile("(\\w+).*");

    public static String zza(String str) {
        Matcher matcher = a.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        fg.c("Invalid fragment spec: ".concat(String.valueOf(str)));
        return null;
    }

    public static String zzb(List list) {
        if (list.isEmpty()) {
            return null;
        }
        return "transform=".concat(new wb4("+").b(list));
    }
}
