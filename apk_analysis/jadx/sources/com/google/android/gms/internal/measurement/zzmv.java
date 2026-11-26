package com.google.android.gms.internal.measurement;

import defpackage.kh;
import defpackage.o8;
import defpackage.xg;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmv implements Comparable {
    public final long b;
    public final String c;
    public final int d;
    public final long e;
    public final Object f;
    public final RuntimeException g;

    public zzmv(long j, String str, int i, long j2, Object obj) {
        o8.e(((j > 0L ? 1 : (j == 0L ? 0 : -1)) == 0) == (str != null));
        this.b = j;
        this.c = str;
        this.d = i;
        this.e = j2;
        this.f = obj;
        if (i != 5) {
            this.g = null;
            return;
        }
        if (obj == null) {
            this.g = new NullPointerException("Null stringOrBytes");
        } else if ((obj instanceof byte[]) || (obj instanceof zzacr)) {
            this.g = null;
        } else {
            this.g = new RuntimeException("Wrong stringOrBytes type: ".concat(String.valueOf(obj.getClass())));
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        zzmv zzmvVar = (zzmv) obj;
        long j = zzmvVar.b;
        long j2 = this.b;
        int iCompare = Long.compare(j2, j);
        if (iCompare != 0) {
            return iCompare;
        }
        if (j2 != 0) {
            return 0;
        }
        String str = this.c;
        str.getClass();
        String str2 = zzmvVar.c;
        str2.getClass();
        return str.compareTo(str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzmv)) {
            return false;
        }
        zzmv zzmvVar = (zzmv) obj;
        return this.b == zzmvVar.b && Objects.equals(this.c, zzmvVar.c);
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.b), this.c);
    }

    public final String toString() {
        String strZza = zza();
        String strValueOf = String.valueOf(zzb());
        return kh.c(new StringBuilder(String.valueOf(strZza).length() + 1 + strValueOf.length()), strZza, StringUtils.PROCESS_POSTFIX_DELIMITER, strValueOf);
    }

    public final String zza() {
        String str = this.c;
        return str != null ? str : Long.toString(this.b);
    }

    public final Object zzb() {
        int i = this.d;
        if (i == 0) {
            return Boolean.FALSE;
        }
        if (i == 1) {
            return Boolean.TRUE;
        }
        long j = this.e;
        if (i == 2) {
            return Long.valueOf(j);
        }
        if (i == 3) {
            return Double.valueOf(Double.longBitsToDouble(j));
        }
        Object obj = this.f;
        if (i == 4) {
            obj.getClass();
            return obj;
        }
        if (i != 5) {
            xg.d("Impossible, this was validated when parsed or created");
            return null;
        }
        obj.getClass();
        try {
            return obj instanceof byte[] ? (byte[]) obj : ((zzacr) obj).zzm();
        } catch (Throwable th) {
            RuntimeException runtimeException = this.g;
            if (runtimeException != null) {
                th.addSuppressed(runtimeException);
            }
            throw th;
        }
    }
}
