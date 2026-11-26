package com.google.android.gms.internal.measurement;

import android.content.Context;
import defpackage.ita;

/* JADX INFO: loaded from: classes4.dex */
public final class zzagr {
    public static final zzph a;
    public static final zzom b;
    public static volatile String c;
    public static final zzog d;

    static {
        zzpj zzpjVar = new zzpj(ita.b);
        zzpjVar.zza();
        zzph zzphVarZzb = zzpjVar.zzb();
        a = zzphVarZzb;
        zzog zzogVar = new zzog("com.google.android.gms.measurement", zzphVarZzb);
        d = zzogVar;
        b = zzogVar.zzd("__phenotype_server_token", "");
        c = null;
    }

    public static String zza() {
        return (String) b.get();
    }

    public static String zzb(Context context) {
        String strZzb;
        String str = c;
        if (str != null) {
            return str;
        }
        synchronized (zzagr.class) {
            try {
                strZzb = c;
                if (strZzb == null) {
                    strZzb = zzlg.zzb(context, "com.google.android.gms.measurement", false);
                    c = strZzb;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return strZzb;
    }

    public static zzog zzc() {
        return d;
    }
}
