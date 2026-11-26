package com.google.android.gms.measurement.internal;

import android.content.pm.PackageManager;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.hnb;
import defpackage.lac;
import defpackage.p7c;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zznn extends lac {
    public final HashMap d;
    public final zzhe zza;
    public final zzhe zzb;
    public final zzhe zzc;
    public final zzhe zzd;
    public final zzhe zze;
    public final zzhe zzf;

    public zznn(zzpg zzpgVar) {
        super(zzpgVar);
        this.d = new HashMap();
        hnb hnbVarZzd = this.a.zzd();
        Objects.requireNonNull(hnbVarZzd);
        this.zza = new zzhe(hnbVarZzd, "last_delete_stale", 0L);
        hnb hnbVarZzd2 = this.a.zzd();
        Objects.requireNonNull(hnbVarZzd2);
        this.zzb = new zzhe(hnbVarZzd2, "last_delete_stale_batch", 0L);
        hnb hnbVarZzd3 = this.a.zzd();
        Objects.requireNonNull(hnbVarZzd3);
        this.zzc = new zzhe(hnbVarZzd3, "backoff", 0L);
        hnb hnbVarZzd4 = this.a.zzd();
        Objects.requireNonNull(hnbVarZzd4);
        this.zzd = new zzhe(hnbVarZzd4, "last_upload", 0L);
        hnb hnbVarZzd5 = this.a.zzd();
        Objects.requireNonNull(hnbVarZzd5);
        this.zze = new zzhe(hnbVarZzd5, "last_upload_attempt", 0L);
        hnb hnbVarZzd6 = this.a.zzd();
        Objects.requireNonNull(hnbVarZzd6);
        this.zzf = new zzhe(hnbVarZzd6, "midnight_offset", 0L);
    }

    @Override // defpackage.lac
    public final void b() {
    }

    @Deprecated
    public final Pair c(String str) {
        p7c p7cVar;
        AdvertisingIdClient.Info advertisingIdInfo;
        zzg();
        zzic zzicVar = this.a;
        long jElapsedRealtime = zzicVar.zzba().elapsedRealtime();
        HashMap map = this.d;
        p7c p7cVar2 = (p7c) map.get(str);
        if (p7cVar2 != null && jElapsedRealtime < p7cVar2.c) {
            return new Pair(p7cVar2.a, Boolean.valueOf(p7cVar2.b));
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        long jZzl = zzicVar.zzc().zzl(str, zzfy.zza) + jElapsedRealtime;
        try {
            try {
                advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zzicVar.zzaZ());
            } catch (PackageManager.NameNotFoundException unused) {
                if (p7cVar2 != null && jElapsedRealtime < p7cVar2.c + zzicVar.zzc().zzl(str, zzfy.zzb)) {
                    return new Pair(p7cVar2.a, Boolean.valueOf(p7cVar2.b));
                }
                advertisingIdInfo = null;
            }
            if (advertisingIdInfo == null) {
                return new Pair("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
            }
            String id = advertisingIdInfo.getId();
            p7cVar = id != null ? new p7c(id, advertisingIdInfo.isLimitAdTrackingEnabled(), jZzl) : new p7c("", advertisingIdInfo.isLimitAdTrackingEnabled(), jZzl);
            map.put(str, p7cVar);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair(p7cVar.a, Boolean.valueOf(p7cVar.b));
        } catch (Exception e) {
            zzicVar.zzaW().zzj().zzb("Unable to get advertising id", e);
            p7cVar = new p7c("", false, jZzl);
        }
    }

    public final Pair zzc(zzr zzrVar, zzjl zzjlVar) {
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        return (zzjlVar.zzo(zzjk.AD_STORAGE) && zzrVar.zzn) ? c(str) : new Pair("", Boolean.FALSE);
    }

    public final String zzf(zzr zzrVar, zzjl zzjlVar) {
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        if (!zzjlVar.zzo(zzjk.AD_STORAGE) || !zzrVar.zzn) {
            return "";
        }
        zzg();
        String str2 = (String) c(str).first;
        MessageDigest messageDigestQ = zzpp.q();
        if (messageDigestQ == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestQ.digest(str2.getBytes())));
    }
}
