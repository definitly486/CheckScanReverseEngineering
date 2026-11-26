package com.google.android.gms.internal.measurement;

import defpackage.ah;
import defpackage.fg;
import defpackage.o2;

/* JADX INFO: loaded from: classes4.dex */
public final class zzabr {
    public static Object zza(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        o2.d(str.concat(" must not be null"));
        return null;
    }

    public static void zzb(boolean z, String str) {
        if (z) {
            return;
        }
        fg.c(str);
    }

    public static void zzc(boolean z, String str) {
        if (z) {
            return;
        }
        ah.f(str);
    }

    public static String zzd(String str) {
        char cCharAt = str.charAt(0);
        if ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z')) {
            fg.c("identifier must start with an ASCII letter: ".concat(str));
            return null;
        }
        for (int i = 1; i < str.length(); i++) {
            char cCharAt2 = str.charAt(i);
            if ((cCharAt2 < 'a' || cCharAt2 > 'z') && ((cCharAt2 < 'A' || cCharAt2 > 'Z') && ((cCharAt2 < '0' || cCharAt2 > '9') && cCharAt2 != '_'))) {
                fg.c("identifier must contain only ASCII letters, digits or underscore: ".concat(str));
                return null;
            }
        }
        return str;
    }
}
