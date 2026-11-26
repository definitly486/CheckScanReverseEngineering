package com.google.firebase.sessions;

import defpackage.aa4;
import defpackage.qg;
import defpackage.zg;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class AndroidApplicationInfo {
    private final String appBuildVersion;
    private final List<ProcessDetails> appProcessDetails;
    private final ProcessDetails currentProcessDetails;
    private final String deviceManufacturer;
    private final String packageName;
    private final String versionName;

    public AndroidApplicationInfo(String str, String str2, String str3, String str4, ProcessDetails processDetails, List<ProcessDetails> list) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        processDetails.getClass();
        list.getClass();
        this.packageName = str;
        this.versionName = str2;
        this.appBuildVersion = str3;
        this.deviceManufacturer = str4;
        this.currentProcessDetails = processDetails;
        this.appProcessDetails = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AndroidApplicationInfo copy$default(AndroidApplicationInfo androidApplicationInfo, String str, String str2, String str3, String str4, ProcessDetails processDetails, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = androidApplicationInfo.packageName;
        }
        if ((i & 2) != 0) {
            str2 = androidApplicationInfo.versionName;
        }
        if ((i & 4) != 0) {
            str3 = androidApplicationInfo.appBuildVersion;
        }
        if ((i & 8) != 0) {
            str4 = androidApplicationInfo.deviceManufacturer;
        }
        if ((i & 16) != 0) {
            processDetails = androidApplicationInfo.currentProcessDetails;
        }
        if ((i & 32) != 0) {
            list = androidApplicationInfo.appProcessDetails;
        }
        ProcessDetails processDetails2 = processDetails;
        List list2 = list;
        return androidApplicationInfo.copy(str, str2, str3, str4, processDetails2, list2);
    }

    public final String component1() {
        return this.packageName;
    }

    public final String component2() {
        return this.versionName;
    }

    public final String component3() {
        return this.appBuildVersion;
    }

    public final String component4() {
        return this.deviceManufacturer;
    }

    public final ProcessDetails component5() {
        return this.currentProcessDetails;
    }

    public final List<ProcessDetails> component6() {
        return this.appProcessDetails;
    }

    public final AndroidApplicationInfo copy(String str, String str2, String str3, String str4, ProcessDetails processDetails, List<ProcessDetails> list) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        processDetails.getClass();
        list.getClass();
        return new AndroidApplicationInfo(str, str2, str3, str4, processDetails, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AndroidApplicationInfo)) {
            return false;
        }
        AndroidApplicationInfo androidApplicationInfo = (AndroidApplicationInfo) obj;
        return aa4.e(this.packageName, androidApplicationInfo.packageName) && aa4.e(this.versionName, androidApplicationInfo.versionName) && aa4.e(this.appBuildVersion, androidApplicationInfo.appBuildVersion) && aa4.e(this.deviceManufacturer, androidApplicationInfo.deviceManufacturer) && aa4.e(this.currentProcessDetails, androidApplicationInfo.currentProcessDetails) && aa4.e(this.appProcessDetails, androidApplicationInfo.appProcessDetails);
    }

    public final String getAppBuildVersion() {
        return this.appBuildVersion;
    }

    public final List<ProcessDetails> getAppProcessDetails() {
        return this.appProcessDetails;
    }

    public final ProcessDetails getCurrentProcessDetails() {
        return this.currentProcessDetails;
    }

    public final String getDeviceManufacturer() {
        return this.deviceManufacturer;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public int hashCode() {
        return this.appProcessDetails.hashCode() + ((this.currentProcessDetails.hashCode() + zg.b(zg.b(zg.b(this.packageName.hashCode() * 31, 31, this.versionName), 31, this.appBuildVersion), 31, this.deviceManufacturer)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AndroidApplicationInfo(packageName=");
        sb.append(this.packageName);
        sb.append(", versionName=");
        sb.append(this.versionName);
        sb.append(", appBuildVersion=");
        sb.append(this.appBuildVersion);
        sb.append(", deviceManufacturer=");
        sb.append(this.deviceManufacturer);
        sb.append(", currentProcessDetails=");
        sb.append(this.currentProcessDetails);
        sb.append(", appProcessDetails=");
        return qg.f(sb, this.appProcessDetails, ')');
    }
}
