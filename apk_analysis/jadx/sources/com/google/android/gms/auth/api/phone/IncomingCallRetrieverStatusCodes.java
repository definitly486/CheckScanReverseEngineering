package com.google.android.gms.auth.api.phone;

import com.google.android.gms.common.api.CommonStatusCodes;

/* JADX INFO: loaded from: classes4.dex */
public final class IncomingCallRetrieverStatusCodes extends CommonStatusCodes {
    public static final int API_UNAVAILABLE = 53003;
    public static final int CONCURRENT_REQUESTS = 53001;
    public static final int FAILURE_OTHER = 53008;
    public static final IncomingCallRetrieverStatusCodes INSTANCE = new IncomingCallRetrieverStatusCodes();
    public static final int INVALID_PHONE_NUMBER_RANGE = 53006;
    public static final int IN_EMERGENCY_CALL = 53002;
    public static final int RATE_LIMIT_REACHED = 53004;
    public static final int TELEPHONY_FEATURE_UNAVAILABLE = 53005;
    public static final int USER_CONSENT_DENIED = 53007;

    public final String getVerificationStatusCodeString(int i) {
        switch (i) {
            case CONCURRENT_REQUESTS /* 53001 */:
                return "ERROR_REASON_CONCURRENT_REQUESTS";
            case IN_EMERGENCY_CALL /* 53002 */:
                return "ERROR_REASON_IN_EMERGENCY_CALL";
            case API_UNAVAILABLE /* 53003 */:
                return "API_NOT_AVAILABLE";
            case RATE_LIMIT_REACHED /* 53004 */:
                return "ERROR_REASON_RATE_LIMIT_REACHED";
            case TELEPHONY_FEATURE_UNAVAILABLE /* 53005 */:
                return "TELEPHONY_FEATURE_UNAVAILABLE";
            case INVALID_PHONE_NUMBER_RANGE /* 53006 */:
                return "INVALID_PHONE_NUMBER_RANGE";
            case USER_CONSENT_DENIED /* 53007 */:
                return "USER_CONSENT_DENIED";
            case FAILURE_OTHER /* 53008 */:
                return "FAILURE_OTHER";
            default:
                String statusCodeString = CommonStatusCodes.getStatusCodeString(i);
                statusCodeString.getClass();
                return statusCodeString;
        }
    }
}
