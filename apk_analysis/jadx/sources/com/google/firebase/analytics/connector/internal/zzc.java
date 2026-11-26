package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.measurement.internal.zzjo;
import com.google.common.collect.j;
import com.google.common.collect.n;
import com.google.firebase.abt.FirebaseABTesting;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import defpackage.m96;

/* JADX INFO: loaded from: classes4.dex */
public final class zzc {
    public static final /* synthetic */ int zza = 0;
    private static final n zzb;
    private static final j zzc;
    private static final j zzd;
    private static final j zze;
    private static final j zzf;
    private static final j zzg;

    static {
        String[] strArr = {"_ac", FirebaseAnalytics.Event.CAMPAIGN_DETAILS, "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"};
        int i = n.d;
        Object[] objArr = new Object[15];
        objArr[0] = "_in";
        objArr[1] = "_xa";
        objArr[2] = "_xu";
        objArr[3] = "_aq";
        objArr[4] = "_aa";
        objArr[5] = "_ai";
        System.arraycopy(strArr, 0, objArr, 6, 9);
        zzb = n.m(15, objArr);
        j.b bVar = j.c;
        Object[] objArr2 = {"_e", "_f", "_iap", "_s", "_au", "_ui", "_cd"};
        m96.b(7, objArr2);
        zzc = j.k(7, objArr2);
        zzd = j.u(TtmlNode.TEXT_EMPHASIS_AUTO, "app", "am");
        zze = j.t("_r", "_dbg");
        j.a aVar = new j.a();
        aVar.d(zzjo.zza);
        aVar.d(zzjo.zzb);
        zzf = aVar.g();
        zzg = j.t("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");
    }

    public static boolean zza(String str) {
        return !zzd.contains(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean zzb(String str, Bundle bundle) {
        if (zzc.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        j jVar = zze;
        int size = jVar.size();
        int i = 0;
        while (i < size) {
            boolean zContainsKey = bundle.containsKey((String) jVar.get(i));
            i++;
            if (zContainsKey) {
                return false;
            }
        }
        return true;
    }

    public static boolean zzc(String str) {
        return !zzb.contains(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean zzd(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals(FirebaseABTesting.OriginService.REMOTE_CONFIG);
        }
        if (Constants.ScionAnalytics.USER_PROPERTY_FIREBASE_LAST_NOTIFICATION.equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        }
        if (zzf.contains(str2)) {
            return false;
        }
        j jVar = zzg;
        int size = jVar.size();
        int i = 0;
        while (i < size) {
            boolean zMatches = str2.matches((String) jVar.get(i));
            i++;
            if (zMatches) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean zze(String str, String str2, Bundle bundle) {
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!zza(str) || bundle == null) {
            return false;
        }
        j jVar = zze;
        int size = jVar.size();
        int i = 0;
        while (i < size) {
            boolean zContainsKey = bundle.containsKey((String) jVar.get(i));
            i++;
            if (zContainsKey) {
                return false;
            }
        }
        int iHashCode = str.hashCode();
        if (iHashCode != 101200) {
            if (iHashCode != 101230) {
                if (iHashCode == 3142703 && str.equals("fiam")) {
                    bundle.putString("_cis", "fiam_integration");
                    return true;
                }
            } else if (str.equals("fdl")) {
                bundle.putString("_cis", "fdl_integration");
                return true;
            }
        } else if (str.equals("fcm")) {
            bundle.putString("_cis", "fcm_integration");
            return true;
        }
        return false;
    }
}
