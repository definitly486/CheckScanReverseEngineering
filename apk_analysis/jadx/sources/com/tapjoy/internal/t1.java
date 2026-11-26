package com.tapjoy.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TJApiDecoded;
import com.tapjoy.TJAppInfo;
import com.tapjoy.TJPrivacyPolicy;
import com.tapjoy.TJStatus;
import com.tapjoy.TJTracking;
import com.tapjoy.TJVerifierKt;
import com.tapjoy.TapjoyConnectCore;
import com.tapjoy.TapjoyConstants;
import com.tapjoy.TapjoyLog;
import defpackage.ni0;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class t1 extends e1 {
    @Override // com.tapjoy.internal.e1
    public final JSONObject b() throws JSONException {
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        Boolean bool4;
        TJPrivacyPolicy tJPrivacyPolicy = TJPrivacyPolicy.getInstance();
        JSONObject jSONObject = new JSONObject();
        TJStatus subjectToGDPR = tJPrivacyPolicy.getSubjectToGDPR();
        boolean zBooleanValue = false;
        u.a(jSONObject, TapjoyConstants.PREF_SUBJECT_TO_GDPR, Boolean.valueOf((subjectToGDPR == null || (bool4 = subjectToGDPR.getBoolean()) == null) ? false : bool4.booleanValue()));
        TJStatus userConsent = tJPrivacyPolicy.getUserConsent();
        u.a(jSONObject, TapjoyConstants.PREF_USER_CONSENT, Boolean.valueOf((userConsent == null || (bool3 = userConsent.getBoolean()) == null) ? false : bool3.booleanValue()));
        TJStatus belowConsentAge = tJPrivacyPolicy.getBelowConsentAge();
        u.a(jSONObject, TapjoyConstants.PREF_BELOW_CONSENT_AGE, Boolean.valueOf((belowConsentAge == null || (bool2 = belowConsentAge.getBoolean()) == null) ? false : bool2.booleanValue()));
        String uSPrivacy = tJPrivacyPolicy.getUSPrivacy();
        if (uSPrivacy == null) {
            uSPrivacy = "";
        }
        u.a(jSONObject, TapjoyConstants.PREF_US_PRIVACY, uSPrivacy);
        u.a(jSONObject, "ad_tracking_enabled", Boolean.valueOf(TJTracking.INSTANCE.getAdTrackingEnableIfPresent()));
        TJStatus usageStatsConsent = tJPrivacyPolicy.getUsageStatsConsent();
        if (usageStatsConsent != null && (bool = usageStatsConsent.getBoolean()) != null) {
            zBooleanValue = bool.booleanValue();
        }
        u.a(jSONObject, "package_usage_stats_consent", Boolean.valueOf(zBooleanValue));
        JSONObject jSONObject2 = new JSONObject();
        u.a(jSONObject2, "managed_device_id", TJAppInfo.INSTANCE.getManagedDeviceID());
        TJApiDecoded tJApiDecoded = TJApiDecoded.INSTANCE;
        u.a(jSONObject2, CommonUrlParts.APP_ID, tJApiDecoded.getAppID());
        u.a(jSONObject2, TJVerifierKt.TJC_TIMESTAMP, Long.valueOf(System.currentTimeMillis() / 1000));
        u.a(jSONObject2, "publisher_sdk_key", tJApiDecoded.getSdkKey());
        u.a(jSONObject2, "regs", jSONObject);
        return jSONObject2;
    }

    public final String c() {
        return ni0.c(TapjoyConnectCore.getInstance().getHostURL(), "api/set_regulations");
    }

    public final void d() {
        try {
            s2 s2VarA = r2.a(a(), c(), b().toString());
            int i = s2VarA.a;
            String str = s2VarA.b;
            if (i != 200) {
                TapjoyLog.e("Failed to request regulations - HTTP " + i + ": " + str);
                return;
            }
            if (str != null) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    boolean zOptBoolean = jSONObject.optBoolean(FirebaseAnalytics.Param.SUCCESS, false);
                    String strOptString = jSONObject.optString(TJAdUnitConstants.String.MESSAGE, "");
                    if (!zOptBoolean) {
                        TapjoyLog.e("Failed to update regulations, message: " + strOptString);
                        return;
                    }
                    String strOptString2 = jSONObject.optString("managed_device_id", "");
                    strOptString2.getClass();
                    if (strOptString2.length() > 0) {
                        TJAppInfo.INSTANCE.setManagedDeviceID(strOptString2);
                    }
                    TapjoyLog.d("Regulations success: " + strOptString + " managed_device_id: " + strOptString2 + " appUsage: " + jSONObject.optString("app_usage"));
                    boolean z = AppUsageForegroundService.b;
                    j.a(TapjoyConnectCore.getInstance().getContext(), jSONObject, false);
                } catch (Exception e) {
                    TapjoyLog.e("Failed to parse regulations response: " + e.getMessage());
                }
            }
        } catch (Exception e2) {
            TapjoyLog.e("Failed to request regulations - " + e2.getMessage());
        }
    }
}
