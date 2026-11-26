package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.common.collect.w;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzod {
    public final HashMap a;

    public zzod(Map map) {
        HashMap map2 = new HashMap();
        this.a = map2;
        map2.putAll(map);
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        w wVar = zzof.a;
        int i = wVar.e;
        for (int i2 = 0; i2 < i; i2++) {
            String str = (String) wVar.get(i2);
            HashMap map = this.a;
            if (map.containsKey(str)) {
                if (sb.length() > 0) {
                    sb.append(";");
                }
                sb.append(str);
                sb.append("=");
                sb.append((String) map.get(str));
            }
        }
        return sb.toString();
    }

    public final int b() {
        try {
            String str = (String) this.a.get("PolicyVersion");
            if (TextUtils.isEmpty(str)) {
                return -1;
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzod) {
            return a().equalsIgnoreCase(((zzod) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a();
    }

    public final Bundle zzb() {
        int iB;
        HashMap map = this.a;
        if ("1".equals(map.get("gdprApplies")) && "1".equals(map.get("EnableAdvertiserConsentMode"))) {
            String str = "denied";
            if (map.get("Version") == null) {
                if ("1".equals(map.get("GoogleConsent")) && (iB = b()) >= 0) {
                    String str2 = (String) map.get("PurposeConsents");
                    if (TextUtils.isEmpty(str2)) {
                        return Bundle.EMPTY;
                    }
                    Bundle bundle = new Bundle();
                    if (str2.length() > 0) {
                        bundle.putString(zzjk.AD_STORAGE.zze, str2.charAt(0) == '1' ? "granted" : "denied");
                    }
                    if (str2.length() > 3) {
                        bundle.putString(zzjk.AD_PERSONALIZATION.zze, (str2.charAt(2) == '1' && str2.charAt(3) == '1') ? "granted" : "denied");
                    }
                    if (str2.length() > 6 && iB >= 4) {
                        String str3 = zzjk.AD_USER_DATA.zze;
                        if (str2.charAt(0) == '1' && str2.charAt(6) == '1') {
                            str = "granted";
                        }
                        bundle.putString(str3, str);
                    }
                    return bundle;
                }
                return Bundle.EMPTY;
            }
            if (b() >= 0) {
                Bundle bundle2 = new Bundle();
                bundle2.putString(zzjk.AD_STORAGE.zze, true != Objects.equals(map.get("AuthorizePurpose1"), "1") ? "denied" : "granted");
                bundle2.putString(zzjk.AD_PERSONALIZATION.zze, (Objects.equals(map.get("AuthorizePurpose3"), "1") && Objects.equals(map.get("AuthorizePurpose4"), "1")) ? "granted" : "denied");
                if (b() >= 4) {
                    String str4 = zzjk.AD_USER_DATA.zze;
                    if (Objects.equals(map.get("AuthorizePurpose1"), "1") && Objects.equals(map.get("AuthorizePurpose7"), "1")) {
                        str = "granted";
                    }
                    bundle2.putString(str4, str);
                }
                return bundle2;
            }
        }
        return Bundle.EMPTY;
    }

    public final String zzc() {
        String str = (String) this.a.get("PurposeDiagnostics");
        return TextUtils.isEmpty(str) ? "200000" : str;
    }

    public final String zzd(zzod zzodVar) {
        HashMap map = zzodVar.a;
        boolean zIsEmpty = map.isEmpty();
        String str = CommonUrlParts.Values.FALSE_INTEGER;
        String str2 = (zIsEmpty || ((String) map.get("Version")) != null) ? CommonUrlParts.Values.FALSE_INTEGER : "1";
        Bundle bundleZzb = zzb();
        Bundle bundleZzb2 = zzodVar.zzb();
        if (bundleZzb.size() != bundleZzb2.size() || !Objects.equals(bundleZzb.getString("ad_storage"), bundleZzb2.getString("ad_storage")) || !Objects.equals(bundleZzb.getString("ad_personalization"), bundleZzb2.getString("ad_personalization")) || !Objects.equals(bundleZzb.getString("ad_user_data"), bundleZzb2.getString("ad_user_data"))) {
            str = "1";
        }
        return str2.concat(str);
    }

    public final String zze() {
        HashMap map = this.a;
        StringBuilder sb = new StringBuilder("1");
        int i = -1;
        try {
            String str = (String) map.get("CmpSdkID");
            if (!TextUtils.isEmpty(str)) {
                i = Integer.parseInt(str);
            }
        } catch (NumberFormatException unused) {
        }
        if (i < 0 || i > 4095) {
            sb.append("00");
        } else {
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i >> 6));
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i & 63));
        }
        int iB = b();
        if (iB < 0 || iB > 63) {
            sb.append(CommonUrlParts.Values.FALSE_INTEGER);
        } else {
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(iB));
        }
        Preconditions.checkArgument(true);
        int i2 = true != "1".equals(map.get("gdprApplies")) ? 0 : 2;
        int i3 = i2 | 4;
        if ("1".equals(map.get("EnableAdvertiserConsentMode"))) {
            i3 = i2 | 12;
        }
        sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i3));
        return sb.toString();
    }
}
