package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.internal.measurement.zzabw;
import com.google.android.gms.internal.measurement.zzabx;
import com.google.common.collect.j;
import com.google.common.collect.l;
import com.google.common.collect.n;
import com.google.common.collect.w;
import com.google.common.collect.x;
import defpackage.k9c;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzof {
    public static final w a = j.v("Version", "GoogleConsent", "VendorConsent", "VendorLegitimateInterest", "gdprApplies", "EnableAdvertiserConsentMode", "PolicyVersion", "PurposeConsents", "PurposeOneTreatment", "Purpose1", "Purpose3", "Purpose4", "Purpose7", "CmpSdkID", "PublisherCC", "PublisherRestrictions1", "PublisherRestrictions3", "PublisherRestrictions4", "PublisherRestrictions7", "AuthorizePurpose1", "AuthorizePurpose3", "AuthorizePurpose4", "AuthorizePurpose7", "PurposeDiagnostics");
    public static final /* synthetic */ int zzb = 0;

    public static String a(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getString(str, "");
        } catch (ClassCastException unused) {
            return "";
        }
    }

    public static final boolean b(zzabw zzabwVar, l lVar, l lVar2, n nVar, char[] cArr, int i, int i2, int i3, String str, String str2, String str3, boolean z, boolean z2) {
        k9c k9cVar;
        char c;
        int iC = c(zzabwVar);
        if (iC > 0 && (i2 != 1 || i != 1)) {
            cArr[iC] = '2';
        }
        if (g(zzabwVar, lVar2) == zzabx.PURPOSE_RESTRICTION_NOT_ALLOWED) {
            c = '3';
        } else {
            if (zzabwVar == zzabw.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE && i3 == 1 && nVar.contains(str)) {
                if (iC > 0 && cArr[iC] != '2') {
                    cArr[iC] = '1';
                }
                return true;
            }
            if (lVar.containsKey(zzabwVar) && (k9cVar = (k9c) lVar.get(zzabwVar)) != null) {
                int iOrdinal = k9cVar.ordinal();
                if (iOrdinal != 0) {
                    if (iOrdinal != 1) {
                        if (iOrdinal == 2) {
                            return g(zzabwVar, lVar2) == zzabx.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST ? f(zzabwVar, cArr, str3, z2) : e(zzabwVar, cArr, str2, z);
                        }
                        if (iOrdinal == 3) {
                            return g(zzabwVar, lVar2) == zzabx.PURPOSE_RESTRICTION_REQUIRE_CONSENT ? e(zzabwVar, cArr, str2, z) : f(zzabwVar, cArr, str3, z2);
                        }
                        c = '0';
                    } else if (g(zzabwVar, lVar2) != zzabx.PURPOSE_RESTRICTION_REQUIRE_CONSENT) {
                        return f(zzabwVar, cArr, str3, z2);
                    }
                } else if (g(zzabwVar, lVar2) != zzabx.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST) {
                    return e(zzabwVar, cArr, str2, z);
                }
                c = '8';
            } else {
                c = '0';
            }
        }
        if (iC <= 0 || cArr[iC] == '2') {
            return false;
        }
        cArr[iC] = c;
        return false;
    }

    public static final int c(zzabw zzabwVar) {
        if (zzabwVar == zzabw.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE) {
            return 1;
        }
        if (zzabwVar == zzabw.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE) {
            return 2;
        }
        if (zzabwVar == zzabw.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS) {
            return 3;
        }
        return zzabwVar == zzabw.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE ? 4 : -1;
    }

    public static final String d(zzabw zzabwVar, String str, String str2) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        String strValueOf = CommonUrlParts.Values.FALSE_INTEGER;
        String strValueOf2 = (zIsEmpty || str.length() < zzabwVar.zza()) ? CommonUrlParts.Values.FALSE_INTEGER : String.valueOf(str.charAt(zzabwVar.zza() - 1));
        if (!TextUtils.isEmpty(str2) && str2.length() >= zzabwVar.zza()) {
            strValueOf = String.valueOf(str2.charAt(zzabwVar.zza() - 1));
        }
        return String.valueOf(strValueOf2).concat(String.valueOf(strValueOf));
    }

    public static final boolean e(zzabw zzabwVar, char[] cArr, String str, boolean z) {
        char c;
        int iC = c(zzabwVar);
        if (!z) {
            c = '4';
        } else {
            if (str.length() >= zzabwVar.zza()) {
                char cCharAt = str.charAt(zzabwVar.zza() - 1);
                boolean z2 = cCharAt == '1';
                if (iC > 0 && cArr[iC] != '2') {
                    cArr[iC] = cCharAt != '1' ? '6' : '1';
                }
                return z2;
            }
            c = '0';
        }
        if (iC > 0 && cArr[iC] != '2') {
            cArr[iC] = c;
        }
        return false;
    }

    public static final boolean f(zzabw zzabwVar, char[] cArr, String str, boolean z) {
        char c;
        int iC = c(zzabwVar);
        if (!z) {
            c = '5';
        } else {
            if (str.length() >= zzabwVar.zza()) {
                char cCharAt = str.charAt(zzabwVar.zza() - 1);
                boolean z2 = cCharAt == '1';
                if (iC > 0 && cArr[iC] != '2') {
                    cArr[iC] = cCharAt != '1' ? '7' : '1';
                }
                return z2;
            }
            c = '0';
        }
        if (iC > 0 && cArr[iC] != '2') {
            cArr[iC] = c;
        }
        return false;
    }

    public static final zzabx g(zzabw zzabwVar, l lVar) {
        Object obj = zzabx.PURPOSE_RESTRICTION_UNDEFINED;
        Object obj2 = lVar.get(zzabwVar);
        if (obj2 != null) {
            obj = obj2;
        }
        return (zzabx) obj;
    }

    public static final Map zzd(l lVar, l lVar2, n nVar, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        if (!z3) {
            return x.h;
        }
        zzabw zzabwVar = zzabw.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE;
        zzabx zzabxVar = (zzabx) lVar2.get(zzabwVar);
        zzabw zzabwVar2 = zzabw.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE;
        zzabx zzabxVar2 = (zzabx) lVar2.get(zzabwVar2);
        zzabw zzabwVar3 = zzabw.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS;
        zzabx zzabxVar3 = (zzabx) lVar2.get(zzabwVar3);
        zzabw zzabwVar4 = zzabw.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE;
        zzabx zzabxVar4 = (zzabx) lVar2.get(zzabwVar4);
        l.a aVarA = l.a();
        aVarA.b("Version", ExifInterface.GPS_MEASUREMENT_2D);
        aVarA.b("VendorConsent", true != z ? CommonUrlParts.Values.FALSE_INTEGER : "1");
        aVarA.b("VendorLegitimateInterest", true != z2 ? CommonUrlParts.Values.FALSE_INTEGER : "1");
        aVarA.b("gdprApplies", i3 != 1 ? CommonUrlParts.Values.FALSE_INTEGER : "1");
        aVarA.b("EnableAdvertiserConsentMode", i2 != 1 ? CommonUrlParts.Values.FALSE_INTEGER : "1");
        aVarA.b("PolicyVersion", String.valueOf(i4));
        aVarA.b("CmpSdkID", String.valueOf(i));
        aVarA.b("PurposeOneTreatment", i5 != 1 ? CommonUrlParts.Values.FALSE_INTEGER : "1");
        aVarA.b("PublisherCC", str);
        aVarA.b("PublisherRestrictions1", String.valueOf(zzabxVar != null ? zzabxVar.zza() : zzabx.PURPOSE_RESTRICTION_UNDEFINED.zza()));
        aVarA.b("PublisherRestrictions3", String.valueOf(zzabxVar2 != null ? zzabxVar2.zza() : zzabx.PURPOSE_RESTRICTION_UNDEFINED.zza()));
        aVarA.b("PublisherRestrictions4", String.valueOf(zzabxVar3 != null ? zzabxVar3.zza() : zzabx.PURPOSE_RESTRICTION_UNDEFINED.zza()));
        aVarA.b("PublisherRestrictions7", String.valueOf(zzabxVar4 != null ? zzabxVar4.zza() : zzabx.PURPOSE_RESTRICTION_UNDEFINED.zza()));
        aVarA.c(x.n(4, new Object[]{"Purpose1", d(zzabwVar, str2, str3), "Purpose3", d(zzabwVar2, str2, str3), "Purpose4", d(zzabwVar3, str2, str3), "Purpose7", d(zzabwVar4, str2, str3)}, null).entrySet());
        Object obj = true != b(zzabwVar, lVar, lVar2, nVar, cArr, i2, i3, i5, str, str2, str3, z, z2) ? CommonUrlParts.Values.FALSE_INTEGER : "1";
        Object obj2 = true != b(zzabwVar2, lVar, lVar2, nVar, cArr, i2, i3, i5, str, str2, str3, z, z2) ? CommonUrlParts.Values.FALSE_INTEGER : "1";
        Object obj3 = true != b(zzabwVar3, lVar, lVar2, nVar, cArr, i2, i3, i5, str, str2, str3, z, z2) ? CommonUrlParts.Values.FALSE_INTEGER : "1";
        String str4 = true != b(zzabwVar4, lVar, lVar2, nVar, cArr, i2, i3, i5, str, str2, str3, z, z2) ? CommonUrlParts.Values.FALSE_INTEGER : "1";
        Object obj4 = obj;
        aVarA.c(x.n(5, new Object[]{"AuthorizePurpose1", obj4, "AuthorizePurpose3", obj2, "AuthorizePurpose4", obj3, "AuthorizePurpose7", str4, "PurposeDiagnostics", new String(cArr)}, null).entrySet());
        return aVarA.a(true);
    }
}
