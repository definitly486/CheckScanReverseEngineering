package yads;

import android.app.KeyguardManager;
import android.content.Context;
import android.os.PowerManager;

/* JADX INFO: loaded from: classes6.dex */
public final class qu4 {
    public final Context a;

    public qu4(Context context) {
        this.a = context.getApplicationContext();
    }

    public final ou4 a() {
        Object systemService = this.a.getSystemService("power");
        PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
        Boolean boolValueOf = powerManager != null ? Boolean.valueOf(powerManager.isInteractive()) : null;
        if (!(boolValueOf != null ? boolValueOf.booleanValue() : true)) {
            return ou4.SCREEN_OFF;
        }
        Object systemService2 = this.a.getSystemService("keyguard");
        KeyguardManager keyguardManager = systemService2 instanceof KeyguardManager ? (KeyguardManager) systemService2 : null;
        return keyguardManager != null ? keyguardManager.isKeyguardLocked() : false ? ou4.SCREEN_ON : ou4.USER_PRESENT;
    }
}
