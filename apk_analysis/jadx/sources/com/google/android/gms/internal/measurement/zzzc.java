package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public final class zzzc implements zzyk {
    public static final HashSet c = new HashSet(Arrays.asList(Boolean.class, Byte.class, Short.class, Integer.class, Long.class, Float.class, Double.class));
    public final StringBuilder a;
    public boolean b = false;

    public zzzc(String str, String str2, StringBuilder sb) {
        this.a = sb;
    }

    public static int a(int i, String str) {
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt < ' ' || cCharAt == '\"' || cCharAt == '\\') {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzyk
    public final void zza(String str, Object obj) {
        boolean z = this.b;
        StringBuilder sb = this.a;
        if (z) {
            sb.append(' ');
        } else {
            if (sb.length() > 0) {
                sb.append((sb.length() > 1000 || sb.indexOf("\n") != -1) ? '\n' : ' ');
            }
            sb.append("[CONTEXT ");
            this.b = true;
        }
        sb.append(str);
        sb.append('=');
        if (obj == null) {
            sb.append(true);
            return;
        }
        if (c.contains(obj.getClass())) {
            sb.append(obj);
            return;
        }
        sb.append('\"');
        String string = obj.toString();
        int i = 0;
        while (true) {
            int iA = a(i, string);
            if (iA == -1) {
                sb.append((CharSequence) string, i, string.length());
                sb.append('\"');
                return;
            }
            sb.append((CharSequence) string, i, iA);
            i = iA + 1;
            char cCharAt = string.charAt(iA);
            if (cCharAt == '\t') {
                cCharAt = 't';
            } else if (cCharAt == '\n') {
                cCharAt = 'n';
            } else if (cCharAt == '\r') {
                cCharAt = 'r';
            } else if (cCharAt != '\"' && cCharAt != '\\') {
                sb.append((char) 65533);
            }
            sb.append("\\");
            sb.append(cCharAt);
        }
    }

    public final void zzb() {
        if (this.b) {
            this.a.append(" ]");
        }
    }
}
