package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzil;
import com.google.android.gms.internal.measurement.zzin;
import com.google.android.gms.internal.measurement.zzis;
import defpackage.fmb;
import defpackage.y9c;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzou extends y9c {
    public static final boolean b(String str) {
        String str2 = (String) zzfy.zzs.zzb(null);
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        for (String str3 : str2.split(StringUtils.COMMA)) {
            if (str.equalsIgnoreCase(str3.trim())) {
                return true;
            }
        }
        return false;
    }

    public final String a(String str) {
        String strK = this.b.zzh().k(str);
        if (TextUtils.isEmpty(strK)) {
            return (String) zzfy.zzq.zzb(null);
        }
        Uri uri = Uri.parse((String) zzfy.zzq.zzb(null));
        Uri.Builder builderBuildUpon = uri.buildUpon();
        String authority = uri.getAuthority();
        StringBuilder sb = new StringBuilder(String.valueOf(strK).length() + 1 + String.valueOf(authority).length());
        sb.append(strK);
        sb.append(".");
        sb.append(authority);
        builderBuildUpon.authority(sb.toString());
        return builderBuildUpon.build().toString();
    }

    public final zzot zza(String str) {
        fmb fmbVarZ;
        zzpg zzpgVar = this.b;
        fmb fmbVarZ2 = zzpgVar.zzj().Z(str);
        zzot zzotVar = null;
        if (fmbVarZ2 != null) {
            fmbVarZ2.a.zzaX().zzg();
            if (fmbVarZ2.u) {
                zzil zzilVarZzb = zzis.zzb();
                zzilVarZzb.zzb(2);
                zzilVarZzb.zza((zzin) Preconditions.checkNotNull(zzin.zzb(fmbVarZ2.h())));
                String strN = fmbVarZ2.n();
                com.google.android.gms.internal.measurement.zzgl zzglVarJ = zzpgVar.zzh().j(str);
                if (zzglVarJ != null && (fmbVarZ = zzpgVar.zzj().Z(str)) != null) {
                    boolean zZzp = zzglVarJ.zzp();
                    zzic zzicVar = this.a;
                    if ((zZzp && zzglVarJ.zzq().zzc() == 100) || zzicVar.zzk().B(str, fmbVarZ.l()) || (!TextUtils.isEmpty(strN) && Math.abs(strN.hashCode() % 100) < zzglVarJ.zzq().zzc())) {
                        String strM = fmbVarZ2.m();
                        zzilVarZzb.zzb(2);
                        com.google.android.gms.internal.measurement.zzgl zzglVarJ2 = zzpgVar.zzh().j(fmbVarZ2.m());
                        if (zzglVarJ2 == null || !zzglVarJ2.zzp()) {
                            zzicVar.zzaW().zzk().zzb("[sgtm] Missing sgtm_setting in remote config. appId", strM);
                            zzilVarZzb.zzc(4);
                        } else {
                            HashMap map = new HashMap();
                            if (!TextUtils.isEmpty(fmbVarZ2.l())) {
                                map.put("x-gtm-server-preview", fmbVarZ2.l());
                            }
                            String strZzd = zzglVarJ2.zzq().zzd();
                            zzin zzinVarZzb = zzin.zzb(fmbVarZ2.h());
                            if (zzinVarZzb != null && zzinVarZzb != zzin.CLIENT_UPLOAD_ELIGIBLE) {
                                zzilVarZzb.zza(zzinVarZzb);
                            } else if (b(fmbVarZ2.m())) {
                                zzilVarZzb.zza(zzin.PINNED_TO_SERVICE_UPLOAD);
                            } else if (TextUtils.isEmpty(strZzd)) {
                                zzilVarZzb.zza(zzin.MISSING_SGTM_SERVER_URL);
                            } else {
                                zzicVar.zzaW().zzk().zzb("[sgtm] Eligible for client side upload. appId", strM);
                                zzilVarZzb.zzb(3);
                                zzilVarZzb.zza(zzin.CLIENT_UPLOAD_ELIGIBLE);
                                zzotVar = new zzot(strZzd, map, zzls.SGTM_CLIENT, (zzis) zzilVarZzb.zzbd());
                            }
                            zzglVarJ2.zzq().zza();
                            zzglVarJ2.zzq().zzb();
                            zzicVar.zzaV();
                            if (TextUtils.isEmpty(strZzd)) {
                                zzilVarZzb.zzc(6);
                                zzicVar.zzaW().zzk().zzb("[sgtm] Local service, missing sgtm_server_url", fmbVarZ2.m());
                            } else {
                                zzicVar.zzaW().zzk().zzb("[sgtm] Eligible for local service direct upload. appId", strM);
                                zzilVarZzb.zzb(5);
                                zzilVarZzb.zzc(2);
                                zzotVar = new zzot(strZzd, map, zzls.SGTM, (zzis) zzilVarZzb.zzbd());
                            }
                        }
                        return zzotVar != null ? zzotVar : new zzot(a(str), Collections.EMPTY_MAP, zzls.GOOGLE_ANALYTICS, (zzis) zzilVarZzb.zzbd());
                    }
                }
                zzilVarZzb.zzc(3);
                return new zzot(a(str), Collections.EMPTY_MAP, zzls.GOOGLE_ANALYTICS, (zzis) zzilVarZzb.zzbd());
            }
        }
        return new zzot(a(str), Collections.EMPTY_MAP, zzls.GOOGLE_ANALYTICS, null);
    }
}
