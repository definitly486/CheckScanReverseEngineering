package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzza {
    public static final long d;
    public static final zzza e;
    public final int a;
    public final int b;
    public final int c;

    static {
        long jCharAt = 0;
        for (int i = 0; i < 7; i++) {
            jCharAt |= (((long) i) + 1) << ((int) (((long) (" #(+,-0".charAt(i) - ' ')) * 3));
        }
        d = jCharAt;
        e = new zzza(0, -1, -1);
    }

    public zzza(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public static int a(int i, int i2, String str) {
        if (i == i2) {
            throw zzabo.zzb("missing precision", str, i - 1);
        }
        int i3 = 0;
        for (int i4 = i; i4 < i2; i4++) {
            char cCharAt = (char) (str.charAt(i4) - '0');
            if (cCharAt >= '\n') {
                throw zzabo.zzb("invalid precision character", str, i4);
            }
            i3 = (i3 * 10) + cCharAt;
            if (i3 > 999999) {
                throw zzabo.zza("precision too large", str, i, i2);
            }
        }
        if (i3 != 0) {
            return i3;
        }
        if (i2 == i + 1) {
            return 0;
        }
        throw zzabo.zza("invalid precision", str, i, i2);
    }

    public static zzza zza() {
        return e;
    }

    public static zzza zzb(String str, int i, int i2, boolean z) {
        if (i == i2 && !z) {
            return e;
        }
        int i3 = true != z ? 0 : 128;
        while (i != i2) {
            int i4 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt < ' ' || cCharAt > '0') {
                if (cCharAt > '9') {
                    throw zzabo.zzb("invalid flag", str, i);
                }
                int i5 = cCharAt - '0';
                while (i4 != i2) {
                    int i6 = i4 + 1;
                    char cCharAt2 = str.charAt(i4);
                    if (cCharAt2 == '.') {
                        return new zzza(i3, i5, a(i6, i2, str));
                    }
                    char c = (char) (cCharAt2 - '0');
                    if (c >= '\n') {
                        throw zzabo.zzb("invalid width character", str, i4);
                    }
                    i5 = (i5 * 10) + c;
                    if (i5 > 999999) {
                        throw zzabo.zza("width too large", str, i, i2);
                    }
                    i4 = i6;
                }
                return new zzza(i3, i5, -1);
            }
            int i7 = ((int) ((d >>> ((cCharAt - ' ') * 3)) & 7)) - 1;
            if (i7 < 0) {
                if (cCharAt == '.') {
                    return new zzza(i3, -1, a(i4, i2, str));
                }
                throw zzabo.zzb("invalid flag", str, i);
            }
            int i8 = 1 << i7;
            if ((i3 & i8) != 0) {
                throw zzabo.zzb("repeated flag", str, i);
            }
            i3 |= i8;
            i = i4;
        }
        return new zzza(i3, -1, -1);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzza) {
            zzza zzzaVar = (zzza) obj;
            if (zzzaVar.a == this.a && zzzaVar.b == this.b && zzzaVar.c == this.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((this.a * 31) + this.b) * 31) + this.c;
    }

    public final zzza zzd(int i, boolean z, boolean z2) {
        if (!zze()) {
            int i2 = this.a;
            int i3 = i2 & 128;
            if (i3 == 0) {
                return e;
            }
            if (i3 != i2 || this.b != -1 || this.c != -1) {
                return new zzza(i3, -1, -1);
            }
        }
        return this;
    }

    public final boolean zze() {
        return this == e;
    }

    public final int zzf() {
        return this.b;
    }

    public final int zzg() {
        return this.c;
    }

    public final boolean zzh(int i, boolean z) {
        int i2;
        if (zze()) {
            return true;
        }
        int i3 = ~i;
        int i4 = this.a;
        if ((i3 & i4) != 0) {
            return false;
        }
        if ((!z && this.c != -1) || (i4 & 9) == 9 || (i2 = i4 & 96) == 96) {
            return false;
        }
        return i2 == 0 || this.b != -1;
    }

    public final boolean zzi(zzyz zzyzVar) {
        return zzh(zzyzVar.a(), zzyzVar.zzc().a());
    }

    public final int zzj() {
        return this.a;
    }

    public final boolean zzk() {
        return (this.a & 128) != 0;
    }

    public final StringBuilder zzl(StringBuilder sb) {
        if (!zze()) {
            int i = 0;
            while (true) {
                int i2 = this.a & (-129);
                int i3 = 1 << i;
                if (i3 > i2) {
                    break;
                }
                if ((i2 & i3) != 0) {
                    sb.append(" #(+,-0".charAt(i));
                }
                i++;
            }
            int i4 = this.b;
            if (i4 != -1) {
                sb.append(i4);
            }
            int i5 = this.c;
            if (i5 != -1) {
                sb.append('.');
                sb.append(i5);
            }
        }
        return sb;
    }
}
