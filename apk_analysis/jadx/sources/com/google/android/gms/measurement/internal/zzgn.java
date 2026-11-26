package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.ad2;
import defpackage.me0;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgn {
    public static final AtomicReference b = new AtomicReference();
    public static final AtomicReference c = new AtomicReference();
    public static final AtomicReference d = new AtomicReference();
    public final zzgm a;

    public zzgn(zzgm zzgmVar) {
        this.a = zzgmVar;
    }

    public static final String g(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        String str2;
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        Preconditions.checkNotNull(atomicReference);
        Preconditions.checkArgument(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (Objects.equals(str, strArr[i])) {
                synchronized (atomicReference) {
                    try {
                        String[] strArr3 = (String[]) atomicReference.get();
                        if (strArr3 == null) {
                            strArr3 = new String[strArr2.length];
                            atomicReference.set(strArr3);
                        }
                        str2 = strArr3[i];
                        if (str2 == null) {
                            str2 = strArr2[i] + "(" + strArr[i] + ")";
                            strArr3[i] = str2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    public final String a(String str) {
        if (str == null) {
            return null;
        }
        return !this.a.zza() ? str : g(str, zzjm.zzf, zzjm.zza, b);
    }

    public final String b(String str) {
        if (str == null) {
            return null;
        }
        return !this.a.zza() ? str : g(str, zzjn.zzb, zzjn.zza, c);
    }

    public final String c(String str) {
        if (str == null) {
            return null;
        }
        if (this.a.zza()) {
            return str.startsWith("_exp_") ? me0.c("experiment_id(", str, ")") : g(str, zzjo.zzb, zzjo.zza, d);
        }
        return str;
    }

    public final String d(zzbh zzbhVar) {
        String string;
        zzgm zzgmVar = this.a;
        if (!zzgmVar.zza()) {
            return zzbhVar.toString();
        }
        StringBuilder sb = new StringBuilder("origin=");
        sb.append(zzbhVar.zzc);
        sb.append(",name=");
        sb.append(a(zzbhVar.zza));
        sb.append(",params=");
        zzbf zzbfVar = zzbhVar.zzb;
        if (zzbfVar == null) {
            string = null;
        } else {
            string = !zzgmVar.zza() ? zzbfVar.toString() : e(zzbfVar.zzf());
        }
        sb.append(string);
        return sb.toString();
    }

    public final String e(Bundle bundle) {
        String strF;
        if (bundle == null) {
            return null;
        }
        if (!this.a.zza()) {
            return bundle.toString();
        }
        StringBuilder sbC = ad2.c("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sbC.length() != 8) {
                sbC.append(", ");
            }
            sbC.append(b(str));
            sbC.append("=");
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                strF = f(new Object[]{obj});
            } else if (obj instanceof Object[]) {
                strF = f((Object[]) obj);
            } else {
                strF = obj instanceof ArrayList ? f(((ArrayList) obj).toArray()) : String.valueOf(obj);
            }
            sbC.append(strF);
        }
        sbC.append("}]");
        return sbC.toString();
    }

    public final String f(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sbC = ad2.c("[");
        for (Object obj : objArr) {
            String strE = obj instanceof Bundle ? e((Bundle) obj) : String.valueOf(obj);
            if (strE != null) {
                if (sbC.length() != 1) {
                    sbC.append(", ");
                }
                sbC.append(strE);
            }
        }
        sbC.append("]");
        return sbC.toString();
    }
}
