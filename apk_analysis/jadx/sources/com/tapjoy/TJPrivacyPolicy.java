package com.tapjoy;

import android.content.Context;
import com.tapjoy.internal.t1;
import defpackage.xh8;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class TJPrivacyPolicy {
    public static TJPrivacyPolicy h;
    public Context f;
    public TJStatus a = null;
    public TJStatus b = null;
    public TJStatus c = null;
    public TJStatus d = null;
    public String e = null;
    public final ExecutorService g = Executors.newSingleThreadExecutor();

    public static TJPrivacyPolicy getInstance() {
        TJPrivacyPolicy tJPrivacyPolicy = h;
        if (tJPrivacyPolicy != null) {
            return tJPrivacyPolicy;
        }
        TJPrivacyPolicy tJPrivacyPolicy2 = new TJPrivacyPolicy();
        h = tJPrivacyPolicy2;
        return tJPrivacyPolicy2;
    }

    public final synchronized void a(Context context) {
        TJStatus tJStatus;
        String str;
        TJStatus tJStatus2;
        TJStatus tJStatus3;
        if (context != null) {
            try {
                if (this.f == null) {
                    this.f = context;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        TJPrivacyPolicy tJPrivacyPolicy = getInstance();
        Context context2 = tJPrivacyPolicy.f;
        if (context2 != null) {
            TJKeyValueStorage tJKeyValueStorage = new TJKeyValueStorage(context2, TapjoyConstants.TJC_PREFERENCE);
            if (tJPrivacyPolicy.a == null && tJKeyValueStorage.contains(TapjoyConstants.PREF_SUBJECT_TO_GDPR)) {
                if (tJKeyValueStorage.getValueType(TapjoyConstants.PREF_SUBJECT_TO_GDPR) == Boolean.class) {
                    tJPrivacyPolicy.a = tJKeyValueStorage.getBoolean(TapjoyConstants.PREF_SUBJECT_TO_GDPR, false) ? TJStatus.TRUE : TJStatus.FALSE;
                } else if (tJKeyValueStorage.getValueType(TapjoyConstants.PREF_SUBJECT_TO_GDPR) == Integer.class) {
                    tJPrivacyPolicy.a = TJStatus.valueOf(tJKeyValueStorage.getInt(TapjoyConstants.PREF_SUBJECT_TO_GDPR, TJStatus.UNKNOWN.getValue()));
                }
            }
            if (tJPrivacyPolicy.b == null && tJKeyValueStorage.contains(TapjoyConstants.PREF_USER_CONSENT)) {
                if (tJKeyValueStorage.getValueType(TapjoyConstants.PREF_USER_CONSENT) == String.class) {
                    tJPrivacyPolicy.b = Objects.equals(tJKeyValueStorage.getString(TapjoyConstants.PREF_USER_CONSENT, ""), "1") ? TJStatus.TRUE : TJStatus.FALSE;
                } else if (tJKeyValueStorage.getValueType(TapjoyConstants.PREF_USER_CONSENT) == Integer.class) {
                    tJPrivacyPolicy.b = TJStatus.valueOf(tJKeyValueStorage.getInt(TapjoyConstants.PREF_USER_CONSENT, TJStatus.UNKNOWN.getValue()));
                }
            }
            if (tJPrivacyPolicy.c == null && tJKeyValueStorage.contains(TapjoyConstants.PREF_BELOW_CONSENT_AGE)) {
                if (tJKeyValueStorage.getValueType(TapjoyConstants.PREF_BELOW_CONSENT_AGE) == Boolean.class) {
                    tJPrivacyPolicy.c = tJKeyValueStorage.getBoolean(TapjoyConstants.PREF_BELOW_CONSENT_AGE, false) ? TJStatus.TRUE : TJStatus.FALSE;
                } else if (tJKeyValueStorage.getValueType(TapjoyConstants.PREF_BELOW_CONSENT_AGE) == Integer.class) {
                    tJPrivacyPolicy.c = TJStatus.valueOf(tJKeyValueStorage.getInt(TapjoyConstants.PREF_BELOW_CONSENT_AGE, TJStatus.UNKNOWN.getValue()));
                }
            }
            if (tJPrivacyPolicy.e == null) {
                tJPrivacyPolicy.e = tJKeyValueStorage.getString(TapjoyConstants.PREF_US_PRIVACY, "");
            }
            if (tJPrivacyPolicy.d == null && tJKeyValueStorage.contains(TapjoyConstants.PREF_USAGE_STATS_CONSENT)) {
                if (tJKeyValueStorage.getValueType(TapjoyConstants.PREF_USAGE_STATS_CONSENT) == Boolean.class) {
                    tJPrivacyPolicy.d = tJKeyValueStorage.getBoolean(TapjoyConstants.PREF_USAGE_STATS_CONSENT, false) ? TJStatus.TRUE : TJStatus.FALSE;
                } else if (tJKeyValueStorage.getValueType(TapjoyConstants.PREF_USAGE_STATS_CONSENT) == Integer.class) {
                    tJPrivacyPolicy.d = TJStatus.valueOf(tJKeyValueStorage.getInt(TapjoyConstants.PREF_USAGE_STATS_CONSENT, TJStatus.UNKNOWN.getValue()));
                }
            }
        }
        TJPrivacyPolicy tJPrivacyPolicy2 = getInstance();
        Context context3 = tJPrivacyPolicy2.f;
        if (context3 != null) {
            TJStatus tJStatus4 = tJPrivacyPolicy2.a;
            if (tJStatus4 != null) {
                if (tJStatus4 == TJStatus.UNKNOWN) {
                    new TJKeyValueStorage(context3, TapjoyConstants.TJC_PREFERENCE).remove(TapjoyConstants.PREF_SUBJECT_TO_GDPR);
                } else {
                    new TJKeyValueStorage(context3, TapjoyConstants.TJC_PREFERENCE).setValue(TapjoyConstants.PREF_SUBJECT_TO_GDPR, Integer.valueOf(tJPrivacyPolicy2.a.getValue()));
                }
            }
            Context context4 = tJPrivacyPolicy2.f;
            if (context4 != null && (tJStatus3 = tJPrivacyPolicy2.b) != null) {
                if (tJStatus3 == TJStatus.UNKNOWN) {
                    new TJKeyValueStorage(context4, TapjoyConstants.TJC_PREFERENCE).remove(TapjoyConstants.PREF_USER_CONSENT);
                } else {
                    new TJKeyValueStorage(context4, TapjoyConstants.TJC_PREFERENCE).setValue(TapjoyConstants.PREF_USER_CONSENT, Integer.valueOf(tJPrivacyPolicy2.b.getValue()));
                }
            }
            Context context5 = tJPrivacyPolicy2.f;
            if (context5 != null && (tJStatus2 = tJPrivacyPolicy2.c) != null) {
                if (tJStatus2 == TJStatus.UNKNOWN) {
                    new TJKeyValueStorage(context5, TapjoyConstants.TJC_PREFERENCE).remove(TapjoyConstants.PREF_BELOW_CONSENT_AGE);
                } else {
                    new TJKeyValueStorage(context5, TapjoyConstants.TJC_PREFERENCE).setValue(TapjoyConstants.PREF_BELOW_CONSENT_AGE, Integer.valueOf(tJPrivacyPolicy2.c.getValue()));
                }
            }
            if (tJPrivacyPolicy2.f != null && (str = tJPrivacyPolicy2.e) != null) {
                if (str.isEmpty()) {
                    new TJKeyValueStorage(tJPrivacyPolicy2.f, TapjoyConstants.TJC_PREFERENCE).remove(TapjoyConstants.PREF_US_PRIVACY);
                } else {
                    new TJKeyValueStorage(tJPrivacyPolicy2.f, TapjoyConstants.TJC_PREFERENCE).setValue(TapjoyConstants.PREF_US_PRIVACY, tJPrivacyPolicy2.e);
                }
            }
            Context context6 = tJPrivacyPolicy2.f;
            if (context6 != null && (tJStatus = tJPrivacyPolicy2.d) != null) {
                if (tJStatus == TJStatus.UNKNOWN) {
                    new TJKeyValueStorage(context6, TapjoyConstants.TJC_PREFERENCE).remove(TapjoyConstants.PREF_USAGE_STATS_CONSENT);
                } else {
                    new TJKeyValueStorage(context6, TapjoyConstants.TJC_PREFERENCE).setValue(TapjoyConstants.PREF_USAGE_STATS_CONSENT, Integer.valueOf(tJPrivacyPolicy2.d.getValue()));
                }
                tJPrivacyPolicy2.b();
            }
        }
    }

    public final void b() {
        if (Tapjoy.isConnected()) {
            if (new com.tapjoy.internal.g0(this.f).a()) {
                this.g.submit(new xh8(0));
            } else {
                TapjoyLog.d("TJRegulationsRequest feature is not enabled.");
            }
        }
    }

    public TJStatus getBelowConsentAge() {
        return this.c;
    }

    public TJStatus getSubjectToGDPR() {
        return this.a;
    }

    public String getUSPrivacy() {
        return this.e;
    }

    public TJStatus getUsageStatsConsent() {
        return this.d;
    }

    public TJStatus getUserConsent() {
        return this.b;
    }

    public void setBelowConsentAge(TJStatus tJStatus) {
        this.c = tJStatus;
        Context context = this.f;
        if (context == null || tJStatus == null) {
            return;
        }
        if (tJStatus == TJStatus.UNKNOWN) {
            new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE).remove(TapjoyConstants.PREF_BELOW_CONSENT_AGE);
        } else {
            new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE).setValue(TapjoyConstants.PREF_BELOW_CONSENT_AGE, Integer.valueOf(this.c.getValue()));
        }
    }

    public void setSubjectToGDPR(TJStatus tJStatus) {
        this.a = tJStatus;
        Context context = this.f;
        if (context == null || tJStatus == null) {
            return;
        }
        if (tJStatus == TJStatus.UNKNOWN) {
            new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE).remove(TapjoyConstants.PREF_SUBJECT_TO_GDPR);
        } else {
            new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE).setValue(TapjoyConstants.PREF_SUBJECT_TO_GDPR, Integer.valueOf(this.a.getValue()));
        }
    }

    public void setUSPrivacy(String str) {
        this.e = str;
        if (this.f == null || str == null) {
            return;
        }
        boolean zIsEmpty = str.isEmpty();
        Context context = this.f;
        if (zIsEmpty) {
            new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE).remove(TapjoyConstants.PREF_US_PRIVACY);
        } else {
            new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE).setValue(TapjoyConstants.PREF_US_PRIVACY, this.e);
        }
    }

    public void setUsageStatsConsent(TJStatus tJStatus) {
        if (this.d == tJStatus) {
            return;
        }
        this.d = tJStatus;
        Context context = this.f;
        if (context == null || tJStatus == null) {
            return;
        }
        if (tJStatus == TJStatus.UNKNOWN) {
            new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE).remove(TapjoyConstants.PREF_USAGE_STATS_CONSENT);
        } else {
            new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE).setValue(TapjoyConstants.PREF_USAGE_STATS_CONSENT, Integer.valueOf(this.d.getValue()));
        }
        b();
    }

    public void setUserConsent(TJStatus tJStatus) {
        this.b = tJStatus;
        Context context = this.f;
        if (context == null || tJStatus == null) {
            return;
        }
        if (tJStatus == TJStatus.UNKNOWN) {
            new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE).remove(TapjoyConstants.PREF_USER_CONSENT);
        } else {
            new TJKeyValueStorage(context, TapjoyConstants.TJC_PREFERENCE).setValue(TapjoyConstants.PREF_USER_CONSENT, Integer.valueOf(this.b.getValue()));
        }
    }

    public static /* synthetic */ void a() {
        try {
            new t1().d();
        } catch (Exception e) {
            TapjoyLog.e("Failed to send regulations request: " + e.getMessage());
        }
    }
}
