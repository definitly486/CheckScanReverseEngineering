package defpackage;

import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.webkit.UserAgentMetadata;

/* JADX INFO: loaded from: classes4.dex */
public final class wm2 {
    public static final String a(Context context) {
        String str;
        double dWidth;
        double dHeight;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        displayMetrics.getClass();
        if (context.getPackageManager().hasSystemFeature("amazon.hardware.fire_tv")) {
            return "TV";
        }
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
            return "TV";
        }
        int i = context.getResources().getConfiguration().smallestScreenWidthDp;
        if (i == 0) {
            str = null;
        } else {
            str = i >= 600 ? UserAgentMetadata.FORM_FACTOR_TABLET : UserAgentMetadata.FORM_FACTOR_MOBILE;
        }
        if (str != null) {
            return str;
        }
        Object systemService = context.getSystemService("window");
        WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
        if (windowManager != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
                bounds.getClass();
                double d = context.getResources().getConfiguration().densityDpi;
                dWidth = ((double) bounds.width()) / d;
                dHeight = ((double) bounds.height()) / d;
            } else {
                dWidth = ((double) displayMetrics.widthPixels) / ((double) displayMetrics.xdpi);
                dHeight = ((double) displayMetrics.heightPixels) / ((double) displayMetrics.ydpi);
            }
            double dSqrt = Math.sqrt(Math.pow(dHeight, 2.0d) + Math.pow(dWidth, 2.0d));
            if (3.0d <= dSqrt && dSqrt <= 6.9d) {
                return UserAgentMetadata.FORM_FACTOR_MOBILE;
            }
            if (dSqrt > 6.9d && dSqrt <= 18.0d) {
                return UserAgentMetadata.FORM_FACTOR_TABLET;
            }
        }
        return null;
    }
}
