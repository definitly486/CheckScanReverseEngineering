package io.appmetrica.analytics.impl;

import android.app.ActivityManager;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import defpackage.jl0;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class J2 {
    public static final J2 a = new J2();

    private J2() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final L2 a(C1218r2 c1218r2, UsageStatsManager usageStatsManager) {
        int appStandbyBucket = usageStatsManager.getAppStandbyBucket();
        c1218r2.getClass();
        if (!AndroidUtils.isApiAchieved(28)) {
            return null;
        }
        if (AndroidUtils.isApiAchieved(30) && appStandbyBucket == 45) {
            return L2.RESTRICTED;
        }
        if (appStandbyBucket == 5) {
            return L2.EXEMPTED;
        }
        if (appStandbyBucket == 10) {
            return L2.ACTIVE;
        }
        if (appStandbyBucket == 30) {
            return L2.FREQUENT;
        }
        if (appStandbyBucket == 20) {
            return L2.WORKING_SET;
        }
        if (appStandbyBucket == 40) {
            return L2.RARE;
        }
        return null;
    }

    public static final M2 a(Context context, C1218r2 c1218r2) {
        return new M2((L2) SystemServiceUtils.accessSystemServiceByNameSafely(context, "usagestats", "getting app standby bucket", "usageStatsManager", new jl0(c1218r2, 4)), (Boolean) SystemServiceUtils.accessSystemServiceByNameSafely(context, "activity", "getting is background restricted", "activityManager", new defpackage.fg()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean a(ActivityManager activityManager) {
        return Boolean.valueOf(activityManager.isBackgroundRestricted());
    }
}
