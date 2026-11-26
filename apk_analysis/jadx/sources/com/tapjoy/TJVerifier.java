package com.tapjoy;

import defpackage.jg;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class TJVerifier {
    public static final TJVerifier INSTANCE = new TJVerifier();

    public static String a(long j, int i, String str) {
        String androidID;
        try {
            TJApiDecoded tJApiDecoded = TJApiDecoded.INSTANCE;
            String appID = tJApiDecoded.getAppID();
            TJTracking tJTracking = TJTracking.INSTANCE;
            if (tJTracking.isAdvertisingIdPresent()) {
                androidID = tJTracking.getAdvertisingID();
            } else if ((tJTracking.isLegacyIdFallbackAllowed() || !tJTracking.isGooglePlayServiceIntegrated()) && tJTracking.isAndroidIdPresent()) {
                androidID = tJTracking.getAndroidID();
            } else {
                TapjoyLog.d("Error -- no valid device identifier");
                androidID = null;
            }
            String strSHA256 = TapjoyUtil.SHA256(appID + StringUtils.PROCESS_POSTFIX_DELIMITER + androidID + StringUtils.PROCESS_POSTFIX_DELIMITER + j + StringUtils.PROCESS_POSTFIX_DELIMITER + tJApiDecoded.getSecretKey() + StringUtils.PROCESS_POSTFIX_DELIMITER + i + StringUtils.PROCESS_POSTFIX_DELIMITER + str);
            strSHA256.getClass();
            return strSHA256;
        } catch (Exception e) {
            TapjoyLog.d("Error in computing awardCurrencyVerifier -- " + e);
            return "";
        }
    }

    public final JSONObject getTapjoyAwardCurrencyVerifierAndTimeStampParams(int i) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        String string = UUID.randomUUID().toString();
        string.getClass();
        jSONObject.put(TJVerifierKt.TJC_GUID, string);
        jSONObject.put(TJVerifierKt.TJC_TIMESTAMP, String.valueOf(jCurrentTimeMillis));
        jSONObject.put(TJVerifierKt.TJC_VERIFIER, a(jCurrentTimeMillis, i, string));
        return jSONObject;
    }

    public final String getVerifier(long j) {
        String androidID;
        try {
            TJApiDecoded tJApiDecoded = TJApiDecoded.INSTANCE;
            String appID = tJApiDecoded.getAppID();
            TJTracking tJTracking = TJTracking.INSTANCE;
            if (tJTracking.isAdvertisingIdPresent()) {
                androidID = tJTracking.getAdvertisingID();
            } else if ((tJTracking.isLegacyIdFallbackAllowed() || !tJTracking.isGooglePlayServiceIntegrated()) && tJTracking.isAndroidIdPresent()) {
                androidID = tJTracking.getAndroidID();
            } else {
                TapjoyLog.d("Error -- no valid device identifier");
                androidID = null;
            }
            String strSHA256 = TapjoyUtil.SHA256(appID + StringUtils.PROCESS_POSTFIX_DELIMITER + androidID + StringUtils.PROCESS_POSTFIX_DELIMITER + j + StringUtils.PROCESS_POSTFIX_DELIMITER + tJApiDecoded.getSecretKey());
            strSHA256.getClass();
            return strSHA256;
        } catch (Exception e) {
            jg.f("Error in computing verifier value -- ", e.getMessage());
            return "";
        }
    }
}
