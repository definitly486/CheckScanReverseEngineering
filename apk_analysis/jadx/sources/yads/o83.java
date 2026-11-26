package yads;

import android.app.ActivityManager;
import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public final class o83 {
    public static Long a(Context context) {
        try {
            Object systemService = context.getApplicationContext().getSystemService("activity");
            systemService.getClass();
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
            return Long.valueOf(memoryInfo.totalMem / 1048576);
        } catch (Throwable unused) {
            return null;
        }
    }
}
