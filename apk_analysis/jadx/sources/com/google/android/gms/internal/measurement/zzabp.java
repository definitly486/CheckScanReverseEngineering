package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzabp extends zzabn {
    public static final String a;

    static {
        String property;
        try {
            property = System.getProperty("line.separator");
            if (!property.matches("\\n|\\r(?:\\n)?")) {
                property = "\n";
            }
        } catch (SecurityException unused) {
        }
        a = property;
    }

    public static int b(int i, String str) {
        while (i < str.length()) {
            int i2 = i + 1;
            if (str.charAt(i) != '%') {
                i = i2;
            } else {
                if (i2 >= str.length()) {
                    throw zzabo.zzc("trailing unquoted '%' character", str, i);
                }
                char cCharAt = str.charAt(i2);
                if (cCharAt != '%' && cCharAt != 'n') {
                    return i;
                }
                i += 2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzabn
    public final void a(zzabm zzabmVar) {
        int i;
        char cCharAt;
        int i2;
        int i3;
        int i4;
        int i5;
        String strZzi = zzabmVar.zzi();
        int iB = b(0, strZzi);
        int i6 = 0;
        int i7 = -1;
        while (iB >= 0) {
            int i8 = iB + 1;
            int i9 = i8;
            int i10 = 0;
            while (true) {
                if (i9 >= strZzi.length()) {
                    throw zzabo.zzc("unterminated parameter", strZzi, iB);
                }
                i = i9 + 1;
                cCharAt = strZzi.charAt(i9);
                char c = (char) (cCharAt - '0');
                if (c < '\n') {
                    i10 = (i10 * 10) + c;
                    if (i10 >= 1000000) {
                        throw zzabo.zza("index too large", strZzi, iB, i);
                    }
                    i9 = i;
                }
            }
            if (cCharAt == '$') {
                if (i9 - i8 == 0) {
                    throw zzabo.zza("missing index", strZzi, iB, i);
                }
                if (strZzi.charAt(i8) == '0') {
                    throw zzabo.zza("index has leading zero", strZzi, iB, i);
                }
                int i11 = i10 - 1;
                if (i == strZzi.length()) {
                    throw zzabo.zzc("unterminated parameter", strZzi, iB);
                }
                strZzi.charAt(i);
                i5 = i6;
                i4 = i9 + 2;
                i2 = i;
                i3 = i11;
            } else if (cCharAt != '<') {
                int i12 = i6 + 1;
                i2 = i8;
                i3 = i6;
                i4 = i;
                i5 = i12;
            } else {
                if (i7 == -1) {
                    throw zzabo.zza("invalid relative parameter", strZzi, iB, i);
                }
                if (i == strZzi.length()) {
                    throw zzabo.zzc("unterminated parameter", strZzi, iB);
                }
                strZzi.charAt(i);
                i5 = i6;
                i4 = i9 + 2;
                i2 = i;
                i3 = i7;
            }
            int i13 = i4 - 1;
            while (true) {
                if (i13 >= strZzi.length()) {
                    throw zzabo.zzc("unterminated parameter", strZzi, iB);
                }
                if (((char) ((strZzi.charAt(i13) & (-33)) - 65)) < 26) {
                    break;
                } else {
                    i13++;
                }
            }
            zzabp zzabpVar = this;
            iB = b(zzabpVar.zzb(zzabmVar, i3, strZzi, iB, i2, i13), strZzi);
            this = zzabpVar;
            i7 = i3;
            i6 = i5;
        }
    }

    public abstract int zzb(zzabm zzabmVar, int i, String str, int i2, int i3, int i4);

    @Override // com.google.android.gms.internal.measurement.zzabn
    public final void zzd(StringBuilder sb, String str, int i, int i2) {
        int i3 = i;
        while (i < i2) {
            int i4 = i + 1;
            if (str.charAt(i) == '%') {
                if (i4 == i2) {
                    break;
                }
                char cCharAt = str.charAt(i4);
                if (cCharAt == '%') {
                    sb.append((CharSequence) str, i3, i4);
                } else if (cCharAt == 'n') {
                    sb.append((CharSequence) str, i3, i);
                    sb.append(a);
                }
                i3 = i + 2;
                i = i3;
            }
            i = i4;
        }
        if (i3 < i2) {
            sb.append((CharSequence) str, i3, i2);
        }
    }
}
