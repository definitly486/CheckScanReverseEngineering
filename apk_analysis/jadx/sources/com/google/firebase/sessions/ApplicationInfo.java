package com.google.firebase.sessions;

import defpackage.aa4;
import defpackage.zg;

/* JADX INFO: loaded from: classes4.dex */
public final class ApplicationInfo {
    private final AndroidApplicationInfo androidAppInfo;
    private final String appId;
    private final String deviceModel;
    private final LogEnvironment logEnvironment;
    private final String osVersion;
    private final String sessionSdkVersion;

    public ApplicationInfo(String str, String str2, String str3, String str4, LogEnvironment logEnvironment, AndroidApplicationInfo androidApplicationInfo) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        logEnvironment.getClass();
        androidApplicationInfo.getClass();
        this.appId = str;
        this.deviceModel = str2;
        this.sessionSdkVersion = str3;
        this.osVersion = str4;
        this.logEnvironment = logEnvironment;
        this.androidAppInfo = androidApplicationInfo;
    }

    public static /* synthetic */ ApplicationInfo copy$default(ApplicationInfo applicationInfo, String str, String str2, String str3, String str4, LogEnvironment logEnvironment, AndroidApplicationInfo androidApplicationInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            str = applicationInfo.appId;
        }
        if ((i & 2) != 0) {
            str2 = applicationInfo.deviceModel;
        }
        if ((i & 4) != 0) {
            str3 = applicationInfo.sessionSdkVersion;
        }
        if ((i & 8) != 0) {
            str4 = applicationInfo.osVersion;
        }
        if ((i & 16) != 0) {
            logEnvironment = applicationInfo.logEnvironment;
        }
        if ((i & 32) != 0) {
            androidApplicationInfo = applicationInfo.androidAppInfo;
        }
        LogEnvironment logEnvironment2 = logEnvironment;
        AndroidApplicationInfo androidApplicationInfo2 = androidApplicationInfo;
        return applicationInfo.copy(str, str2, str3, str4, logEnvironment2, androidApplicationInfo2);
    }

    public final String component1() {
        return this.appId;
    }

    public final String component2() {
        return this.deviceModel;
    }

    public final String component3() {
        return this.sessionSdkVersion;
    }

    public final String component4() {
        return this.osVersion;
    }

    public final LogEnvironment component5() {
        return this.logEnvironment;
    }

    public final AndroidApplicationInfo component6() {
        return this.androidAppInfo;
    }

    public final ApplicationInfo copy(String str, String str2, String str3, String str4, LogEnvironment logEnvironment, AndroidApplicationInfo androidApplicationInfo) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        logEnvironment.getClass();
        androidApplicationInfo.getClass();
        return new ApplicationInfo(str, str2, str3, str4, logEnvironment, androidApplicationInfo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApplicationInfo)) {
            return false;
        }
        ApplicationInfo applicationInfo = (ApplicationInfo) obj;
        return aa4.e(this.appId, applicationInfo.appId) && aa4.e(this.deviceModel, applicationInfo.deviceModel) && aa4.e(this.sessionSdkVersion, applicationInfo.sessionSdkVersion) && aa4.e(this.osVersion, applicationInfo.osVersion) && this.logEnvironment == applicationInfo.logEnvironment && aa4.e(this.androidAppInfo, applicationInfo.androidAppInfo);
    }

    public final AndroidApplicationInfo getAndroidAppInfo() {
        return this.androidAppInfo;
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getDeviceModel() {
        return this.deviceModel;
    }

    public final LogEnvironment getLogEnvironment() {
        return this.logEnvironment;
    }

    public final String getOsVersion() {
        return this.osVersion;
    }

    public final String getSessionSdkVersion() {
        return this.sessionSdkVersion;
    }

    public int hashCode() {
        return this.androidAppInfo.hashCode() + ((this.logEnvironment.hashCode() + zg.b(zg.b(zg.b(this.appId.hashCode() * 31, 31, this.deviceModel), 31, this.sessionSdkVersion), 31, this.osVersion)) * 31);
    }

    public String toString() {
        return "ApplicationInfo(appId=" + this.appId + ", deviceModel=" + this.deviceModel + ", sessionSdkVersion=" + this.sessionSdkVersion + ", osVersion=" + this.osVersion + ", logEnvironment=" + this.logEnvironment + ", androidAppInfo=" + this.androidAppInfo + ')';
    }
}
