package com.google.android.gms.internal.measurement;

import defpackage.fh;

/* JADX INFO: loaded from: classes4.dex */
public final class zzabo extends RuntimeException {
    public static String a(int i, int i2, String str, String str2) {
        if (i2 < 0) {
            i2 = str2.length();
        }
        StringBuilder sbD = fh.d(str, ": ");
        if (i > 8) {
            sbD.append("...");
            sbD.append((CharSequence) str2, i - 5, i);
        } else {
            sbD.append((CharSequence) str2, 0, i);
        }
        sbD.append('[');
        sbD.append(str2.substring(i, i2));
        sbD.append(']');
        if (str2.length() - i2 > 8) {
            sbD.append((CharSequence) str2, i2, i2 + 5);
            sbD.append("...");
        } else {
            sbD.append((CharSequence) str2, i2, str2.length());
        }
        return sbD.toString();
    }

    public static zzabo zza(String str, String str2, int i, int i2) {
        return new zzabo(a(i, i2, str, str2));
    }

    public static zzabo zzb(String str, String str2, int i) {
        return new zzabo(a(i, i + 1, str, str2));
    }

    public static zzabo zzc(String str, String str2, int i) {
        return new zzabo(a(i, -1, str, str2));
    }

    public static zzabo zzd(String str, String str2) {
        return new zzabo(str);
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return this;
    }
}
