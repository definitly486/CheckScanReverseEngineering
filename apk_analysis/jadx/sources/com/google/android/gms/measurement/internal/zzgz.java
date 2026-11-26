package com.google.android.gms.measurement.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzib;
import defpackage.dlb;
import defpackage.fmb;
import defpackage.lac;
import defpackage.mlb;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgz extends lac {
    public zzgz(zzpg zzpgVar) {
        super(zzpgVar);
    }

    @Override // defpackage.lac
    public final void b() {
    }

    public final boolean zzb() {
        a();
        ConnectivityManager connectivityManager = (ConnectivityManager) this.a.zzaZ().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = null;
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final void zzc(String str, zzot zzotVar, zzib zzibVar, dlb dlbVar) {
        String str2;
        zzic zzicVar = this.a;
        zzg();
        a();
        try {
            URL url = new URI(zzotVar.zza()).toURL();
            this.b.zzp();
            byte[] bArrZzcd = zzibVar.zzcd();
            str2 = str;
            try {
                zzicVar.zzaX().zzm(new mlb(this, str2, url, bArrZzcd, zzotVar.zzb(), dlbVar));
            } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
                zzicVar.zzaW().zzb().zzc("Failed to parse URL. Not uploading MeasurementBatch. appId", zzgu.d(str2), zzotVar.zza());
            }
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused2) {
            str2 = str;
        }
    }

    public final void zzd(fmb fmbVar, Map map, dlb dlbVar) {
        zzic zzicVar = this.a;
        zzg();
        a();
        Preconditions.checkNotNull(fmbVar);
        Preconditions.checkNotNull(dlbVar);
        zzou zzouVarZzf = this.b.zzf();
        Uri.Builder builder = new Uri.Builder();
        Uri.Builder builderAppendQueryParameter = builder.scheme((String) zzfy.zze.zzb(null)).encodedAuthority((String) zzfy.zzf.zzb(null)).path("config/app/".concat(String.valueOf(fmbVar.p()))).appendQueryParameter("platform", "android");
        zzouVarZzf.a.zzc().zzi();
        builderAppendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(161000L)).appendQueryParameter("runtime_version", CommonUrlParts.Values.FALSE_INTEGER);
        String string = builder.build().toString();
        try {
            zzicVar.zzaX().zzm(new mlb(this, fmbVar.m(), new URI(string).toURL(), null, map, dlbVar));
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
            zzicVar.zzaW().zzb().zzc("Failed to parse config URL. Not fetching. appId", zzgu.d(fmbVar.m()), string);
        }
    }
}
