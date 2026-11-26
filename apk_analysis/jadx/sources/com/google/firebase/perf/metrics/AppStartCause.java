package com.google.firebase.perf.metrics;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
final class AppStartCause {
    final int apiLevel;
    final Cause cause;
    final int importance;

    public enum Cause {
        FOREGROUND,
        UNKNOWN
    }

    public AppStartCause(Cause cause, int i, int i2) {
        this.cause = cause;
        this.importance = i;
        this.apiLevel = i2;
    }

    public static AppStartCause capture(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (context != null && ((ActivityManager) context.getSystemService("activity")) != null) {
            int importance = readImportance();
            if (i >= 34) {
                return new AppStartCause(importance == 100 ? Cause.FOREGROUND : Cause.UNKNOWN, importance, i);
            }
            return new AppStartCause(Cause.UNKNOWN, importance, i);
        }
        return new AppStartCause(Cause.UNKNOWN, -1, i);
    }

    private static int readImportance() {
        try {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            return runningAppProcessInfo.importance;
        } catch (Throwable unused) {
            return -1;
        }
    }
}
