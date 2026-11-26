package com.tapjoy.internal;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import com.tapjoy.TapjoyLog;
import defpackage.jg;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class j {
    public static void a(Context context, JSONObject jSONObject, boolean z) {
        if (context == null || jSONObject == null) {
            return;
        }
        if (z) {
            Object systemService = context.getSystemService("appops");
            AppOpsManager appOpsManager = systemService instanceof AppOpsManager ? (AppOpsManager) systemService : null;
            Integer numValueOf = appOpsManager != null ? Integer.valueOf(appOpsManager.checkOpNoThrow("android:get_usage_stats", Process.myUid(), context.getPackageName())) : null;
            if (numValueOf == null || numValueOf.intValue() != 0) {
                TapjoyLog.d("AppUsage permission not granted, skipping service management");
                return;
            }
        }
        if (r0.a(jSONObject).isEmpty()) {
            b(context);
        } else {
            if (!AppUsageForegroundService.b) {
                a(context);
                return;
            }
            Intent intent = new Intent(context, (Class<?>) AppUsageForegroundService.class);
            intent.putExtra("ACTION", "UPDATE_CONFIGS");
            context.startService(intent);
        }
    }

    public static void b(Context context) {
        if (!AppUsageForegroundService.b) {
            TapjoyLog.d("AppUsageForegroundService not running");
            return;
        }
        try {
            context.stopService(new Intent(context, (Class<?>) AppUsageForegroundService.class));
        } catch (Throwable th) {
            jg.f("Failed to stop AppUsageForegroundService: ", th.getMessage());
        }
    }

    public static void a(Context context) {
        if (AppUsageForegroundService.b) {
            TapjoyLog.d("AppUsageForegroundService already running");
            return;
        }
        try {
            context.startForegroundService(new Intent(context, (Class<?>) AppUsageForegroundService.class));
        } catch (Throwable th) {
            jg.f("Failed to start AppUsageForegroundService: ", th.getMessage());
        }
    }
}
