package yads;

import android.content.Context;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes3.dex */
public abstract class kn4 {
    public static void a(Context context, nn4 nn4Var) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            telephonyManager.getClass();
            jn4 jn4Var = new jn4(nn4Var);
            telephonyManager.registerTelephonyCallback(context.getMainExecutor(), jn4Var);
            telephonyManager.unregisterTelephonyCallback(jn4Var);
        } catch (RuntimeException unused) {
            nn4Var.a(5);
        }
    }
}
