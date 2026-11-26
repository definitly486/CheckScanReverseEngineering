package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.dq;
import defpackage.kkb;
import defpackage.mvb;
import defpackage.qkb;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgu extends mvb {
    public char c;
    public long d;
    public String e;
    public final zzgs f;
    public final zzgs g;
    public final zzgs h;
    public final zzgs i;
    public final zzgs j;
    public final zzgs k;
    public final zzgs l;
    public final zzgs m;
    public final zzgs n;

    public zzgu(zzic zzicVar) {
        super(zzicVar);
        this.c = (char) 0;
        this.d = -1L;
        this.f = new zzgs(this, 6, false, false);
        this.g = new zzgs(this, 6, true, false);
        this.h = new zzgs(this, 6, false, true);
        this.i = new zzgs(this, 5, false, false);
        this.j = new zzgs(this, 5, true, false);
        this.k = new zzgs(this, 5, false, true);
        this.l = new zzgs(this, 4, false, false);
        this.m = new zzgs(this, 3, false, false);
        this.n = new zzgs(this, 2, false, false);
    }

    public static qkb d(String str) {
        if (str == null) {
            return null;
        }
        return new qkb(str);
    }

    public static String g(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String strH = h(obj, z);
        String strH2 = h(obj2, z);
        String strH3 = h(obj3, z);
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (str == null) {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(strH)) {
            sb.append(str2);
            sb.append(strH);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(strH2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(strH2);
        }
        if (!TextUtils.isEmpty(strH3)) {
            sb.append(str3);
            sb.append(strH3);
        }
        return sb.toString();
    }

    public static String h(Object obj, boolean z) {
        int iLastIndexOf;
        String className;
        int iLastIndexOf2;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            if (!z) {
                return obj.toString();
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return obj.toString();
            }
            char cCharAt = obj.toString().charAt(0);
            String strValueOf = String.valueOf(Math.abs(l.longValue()));
            long jRound = Math.round(Math.pow(10.0d, strValueOf.length() - 1));
            long jRound2 = Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
            int length = String.valueOf(jRound).length();
            String str = cCharAt == '-' ? "-" : "";
            StringBuilder sb = new StringBuilder(str.length() + str.length() + length + 3 + String.valueOf(jRound2).length());
            dq.d(sb, str, jRound, "...");
            sb.append(str);
            sb.append(jRound2);
            return sb.toString();
        }
        if (obj instanceof Boolean) {
            return obj.toString();
        }
        if (!(obj instanceof Throwable)) {
            if (obj instanceof qkb) {
                return ((qkb) obj).a;
            }
            return z ? "-" : obj.toString();
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
        String canonicalName = zzic.class.getCanonicalName();
        String strSubstring = (TextUtils.isEmpty(canonicalName) || (iLastIndexOf = canonicalName.lastIndexOf(46)) == -1) ? "" : canonicalName.substring(0, iLastIndexOf);
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null) {
                if (((TextUtils.isEmpty(className) || (iLastIndexOf2 = className.lastIndexOf(46)) == -1) ? "" : className.substring(0, iLastIndexOf2)).equals(strSubstring)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
            }
        }
        return sb2.toString();
    }

    @Override // defpackage.mvb
    public final boolean a() {
        return false;
    }

    public final void e(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(f(), i)) {
            Log.println(i, f(), g(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        Preconditions.checkNotNull(str);
        zzhz zzhzVar = this.a.g;
        if (zzhzVar == null) {
            Log.println(6, f(), "Scheduler not set. Not logging error/warn");
        } else {
            if (!zzhzVar.b) {
                Log.println(6, f(), "Scheduler not initialized. Not logging error/warn");
                return;
            }
            if (i >= 9) {
                i = 8;
            }
            zzhzVar.zzj(new kkb(this, i, str, obj, obj2, obj3));
        }
    }

    @EnsuresNonNull({"logTagDoNotUseDirectly"})
    public final String f() {
        String str;
        synchronized (this) {
            try {
                String str2 = this.e;
                if (str2 == null) {
                    this.a.zzc().a.zzaV();
                    str2 = "FA";
                    this.e = "FA";
                }
                Preconditions.checkNotNull(str2);
                str = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public final zzgs zzb() {
        return this.f;
    }

    public final zzgs zzc() {
        return this.g;
    }

    public final zzgs zzd() {
        return this.h;
    }

    public final zzgs zze() {
        return this.i;
    }

    public final zzgs zzf() {
        return this.j;
    }

    public final zzgs zzh() {
        return this.k;
    }

    public final zzgs zzi() {
        return this.l;
    }

    public final zzgs zzj() {
        return this.m;
    }

    public final zzgs zzk() {
        return this.n;
    }
}
