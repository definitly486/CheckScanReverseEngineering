package com.tapjoy.internal;

import com.tapjoy.TJPrivacyPolicy;
import com.tapjoy.TJStatus;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes4.dex */
public final class s1 {
    public final Boolean a;
    public final Boolean b;
    public final String c;
    public final String d;
    public final Boolean e;

    public s1() {
        String str;
        Boolean bool;
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        TJPrivacyPolicy tJPrivacyPolicy = TJPrivacyPolicy.getInstance();
        TJStatus belowConsentAge = tJPrivacyPolicy.getBelowConsentAge();
        this.a = belowConsentAge != null ? belowConsentAge.getBoolean() : null;
        TJStatus subjectToGDPR = tJPrivacyPolicy.getSubjectToGDPR();
        this.b = subjectToGDPR != null ? subjectToGDPR.getBoolean() : null;
        TJStatus userConsent = tJPrivacyPolicy.getUserConsent();
        if (userConsent == null || (bool = userConsent.getBoolean()) == null) {
            str = null;
        } else {
            str = bool.booleanValue() ? "1" : CommonUrlParts.Values.FALSE_INTEGER;
        }
        this.c = str;
        String uSPrivacy = tJPrivacyPolicy.getUSPrivacy();
        this.d = (uSPrivacy == null || uSPrivacy.length() == 0) ? null : tJPrivacyPolicy.getUSPrivacy();
        TJStatus usageStatsConsent = tJPrivacyPolicy.getUsageStatsConsent();
        this.e = usageStatsConsent != null ? usageStatsConsent.getBoolean() : null;
    }
}
