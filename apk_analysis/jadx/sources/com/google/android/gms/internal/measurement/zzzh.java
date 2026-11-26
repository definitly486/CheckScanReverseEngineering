package com.google.android.gms.internal.measurement;

import defpackage.kh;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.util.Arrays;
import java.util.Formattable;
import java.util.Formatter;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzzh {
    public static final Locale a = Locale.ROOT;

    public static void a(StringBuilder sb, long j, boolean z) {
        if (j == 0) {
            sb.append(CommonUrlParts.Values.FALSE_INTEGER);
            return;
        }
        String str = true != z ? "0123456789abcdef" : "0123456789ABCDEF";
        for (int iNumberOfLeadingZeros = (63 - Long.numberOfLeadingZeros(j)) & (-4); iNumberOfLeadingZeros >= 0; iNumberOfLeadingZeros -= 4) {
            sb.append(str.charAt((int) ((j >>> iNumberOfLeadingZeros) & 15)));
        }
    }

    public static String b(Object obj, String str) {
        String name = obj.getClass().getName();
        int iIdentityHashCode = System.identityHashCode(obj);
        int length = name.length();
        StringBuilder sb = new StringBuilder(length + 2 + String.valueOf(iIdentityHashCode).length() + 2 + String.valueOf(str).length() + 1);
        sb.append("{");
        sb.append(name);
        sb.append("@");
        sb.append(iIdentityHashCode);
        return kh.c(sb, ": ", str, "}");
    }

    public static String zza(Object obj) {
        String simpleName;
        if (obj == null) {
            return "null";
        }
        try {
            if (!obj.getClass().isArray()) {
                String string = obj.toString();
                return string != null ? string : b(obj, "toString() returned null");
            }
            if (obj instanceof int[]) {
                return Arrays.toString((int[]) obj);
            }
            if (obj instanceof long[]) {
                return Arrays.toString((long[]) obj);
            }
            if (obj instanceof byte[]) {
                return Arrays.toString((byte[]) obj);
            }
            if (obj instanceof char[]) {
                return Arrays.toString((char[]) obj);
            }
            if (obj instanceof short[]) {
                return Arrays.toString((short[]) obj);
            }
            if (obj instanceof float[]) {
                return Arrays.toString((float[]) obj);
            }
            if (obj instanceof double[]) {
                return Arrays.toString((double[]) obj);
            }
            return obj instanceof boolean[] ? Arrays.toString((boolean[]) obj) : Arrays.toString((Object[]) obj);
        } catch (RuntimeException e) {
            try {
                simpleName = e.toString();
            } catch (RuntimeException e2) {
                simpleName = e2.getClass().getSimpleName();
            }
            return b(obj, simpleName);
        }
    }

    public static void zzb(Formattable formattable, StringBuilder sb, zzza zzzaVar) {
        String simpleName;
        int iZzj = zzzaVar.zzj();
        int i = iZzj & 162;
        if (i != 0) {
            i = ((iZzj & 32) != 0 ? 1 : 0) | ((iZzj & 128) != 0 ? 2 : 0) | ((iZzj & 2) != 0 ? 4 : 0);
        }
        int length = sb.length();
        Formatter formatter = new Formatter(sb, a);
        try {
            formattable.formatTo(formatter, i, zzzaVar.zzf(), zzzaVar.zzg());
        } catch (RuntimeException e) {
            sb.setLength(length);
            try {
                Appendable appendableOut = formatter.out();
                try {
                    simpleName = e.toString();
                } catch (RuntimeException e2) {
                    simpleName = e2.getClass().getSimpleName();
                }
                appendableOut.append(b(formattable, simpleName));
            } catch (IOException unused) {
            }
        }
    }
}
