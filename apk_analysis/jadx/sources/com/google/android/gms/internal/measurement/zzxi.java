package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzyi;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public class zzxi<API extends zzyi<API>> {
    public final zzzf a;

    public zzxi(zzzf zzzfVar) {
        this.a = zzzfVar;
    }

    public static void a(String str, zzxz zzxzVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ").format(new Date(zzxzVar.zzf() / 1000000)));
        sb.append(": logging error [");
        zzze.zza(1, zzxzVar.zzg(), sb);
        sb.append("]: ");
        sb.append(str);
        System.err.println(sb);
        System.err.flush();
    }
}
