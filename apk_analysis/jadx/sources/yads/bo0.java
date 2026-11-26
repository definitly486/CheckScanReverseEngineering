package yads;

import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes6.dex */
public final class bo0 {
    public final ed5 a = new ed5();

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
    
        if (r5.getCurrentModeType() == 4) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
    
        if (r5 == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0062, code lost:
    
        return yads.ao0.TV;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ao0 a(Context context) {
        boolean zHasSystemFeature;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Point pointA = this.a.a(context);
        int i = pointA.x;
        int i2 = pointA.y;
        float f = displayMetrics.density;
        float f2 = i;
        float f3 = f2 / f;
        float f4 = i2;
        float f5 = f4 / f;
        if (f3 > f5) {
            f3 = f5;
        }
        float f6 = f * 160.0f;
        float f7 = f2 / f6;
        float f8 = f4 / f6;
        double dSqrt = Math.sqrt((f8 * f8) + (f7 * f7));
        if (za.a(13)) {
            Object systemService = context.getSystemService("uimode");
            UiModeManager uiModeManager = systemService instanceof UiModeManager ? (UiModeManager) systemService : null;
            if (uiModeManager != null) {
            }
            return (dSqrt < 7.0d || f3 >= 600.0f) ? ao0.TABLET : ao0.PHONE;
        }
        if (dSqrt >= 15.0d) {
            try {
                zHasSystemFeature = context.getPackageManager().hasSystemFeature("android.hardware.touchscreen");
            } catch (Throwable unused) {
                zHasSystemFeature = false;
            }
        }
        if (dSqrt < 7.0d) {
        }
    }
}
