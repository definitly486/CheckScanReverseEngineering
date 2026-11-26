package com.my.tracker.obfuscated;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.firebase.remoteconfig.RemoteConfigConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class t1 {
    private static volatile t1 b;
    private final SharedPreferences a;

    private t1(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences;
    }

    public static t1 a(Context context) {
        t1 t1Var;
        t1 t1Var2 = b;
        if (t1Var2 != null) {
            return t1Var2;
        }
        synchronized (t1.class) {
            try {
                t1Var = b;
                if (t1Var == null) {
                    t1Var = new t1(context.getSharedPreferences("mytracker_prefs", 0));
                    b = t1Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return t1Var;
    }

    public long b(String str) {
        try {
            return this.a.getLong(str, 0L);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public String c(String str) {
        try {
            return this.a.getString(str, "");
        } catch (Throwable unused) {
            return "";
        }
    }

    public String d() {
        return c("appSetId");
    }

    public int e() {
        return (int) b("appSetIdScope");
    }

    public String f() {
        return c("appVersionName");
    }

    public String g() {
        return c("appsHash");
    }

    public String h() {
        return c("attribution");
    }

    public String i() {
        return c("firebaseAppInstanceId");
    }

    public long j() {
        return b("installTimestamp");
    }

    public String k() {
        return c("instanceId");
    }

    public long l() {
        return b("lastUpdateTimestamp");
    }

    public String m() {
        return c("referrer");
    }

    public long n() {
        long jB = b("lastStopTimeStampSec");
        a("lastStopTimeStampSec", 0L);
        return jB;
    }

    public boolean o() {
        return a("apiReferrerSent");
    }

    public boolean p() {
        return a("huaweiApiReferrerSent");
    }

    public boolean q() {
        return a("preinstallRead");
    }

    public boolean r() {
        return a("referrerSent");
    }

    public void s() {
        a("apiReferrerSent", true);
    }

    public void t() {
        a("huaweiApiReferrerSent", true);
    }

    public void u() {
        a("preinstallRead", true);
    }

    public void v() {
        a("referrerSent", true);
    }

    public void d(String str) {
        a(RemoteConfigConstants.RequestFieldKey.APP_VERSION, str);
    }

    public void f(String str) {
        a("appSetId", str);
    }

    public void g(String str) {
        a("appVersionName", str);
    }

    public void h(String str) {
        a("appsHash", str);
    }

    public void i(String str) {
        a("attribution", str);
    }

    public void j(String str) {
        a("firebaseAppInstanceId", str);
    }

    public void k(String str) {
        a("instanceId", str);
    }

    public void l(String str) {
        a("referrer", str);
    }

    public void d(long j) {
        a("lastStopTimeStampSec", j);
    }

    public void e(String str) {
        a(RemoteConfigConstants.RequestFieldKey.APP_ID, str);
    }

    public long b() {
        return b("appGalleryTrackedTime");
    }

    public void c(long j) {
        a("lastUpdateTimestamp", j);
    }

    public void b(long j) {
        a("installTimestamp", j);
    }

    public String c() {
        return c(RemoteConfigConstants.RequestFieldKey.APP_ID);
    }

    public String a() {
        return c(RemoteConfigConstants.RequestFieldKey.APP_VERSION);
    }

    public void a(int i) {
        a("appSetIdScope", i);
    }

    public void a(long j) {
        a("appGalleryTrackedTime", j);
    }

    public boolean a(String str) {
        try {
            return this.a.getBoolean(str, false);
        } catch (Throwable unused) {
            return false;
        }
    }

    public void a(String str, long j) {
        try {
            this.a.edit().putLong(str, j).commit();
        } catch (Throwable th) {
            b3.a("PrefsCache error: ", th);
        }
    }

    public void a(String str, String str2) {
        try {
            this.a.edit().putString(str, str2).commit();
        } catch (Throwable th) {
            b3.a("PrefsCache error: ", th);
        }
    }

    public void a(String str, boolean z) {
        try {
            this.a.edit().putBoolean(str, z).commit();
        } catch (Throwable th) {
            b3.a("PrefsCache error: ", th);
        }
    }
}
