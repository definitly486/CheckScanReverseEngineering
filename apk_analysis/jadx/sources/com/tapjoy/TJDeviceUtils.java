package com.tapjoy;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Insets;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import androidx.core.hardware.display.DisplayManagerCompat;

/* JADX INFO: loaded from: classes4.dex */
public final class TJDeviceUtils {
    public static final TJDeviceUtils INSTANCE = new TJDeviceUtils();

    public final long getAvailableDiskSpace() {
        return new StatFs(Environment.getDataDirectory().getPath()).getFreeBytes() / 1000000;
    }

    public final float getDensity(Context context) {
        Resources resources;
        DisplayMetrics displayMetrics;
        if (context == null || (resources = context.getResources()) == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            return 1.0f;
        }
        return displayMetrics.density;
    }

    public final String getOrientationString(int i, int i2) {
        return i > i2 ? TJAdUnitConstants.String.LANDSCAPE : TJAdUnitConstants.String.PORTRAIT;
    }

    public final int getScreenHeight(Context context) {
        Display display;
        if (context == null || (display = DisplayManagerCompat.getInstance(context).getDisplay(0)) == null) {
            return 0;
        }
        return context.createDisplayContext(display).getResources().getDisplayMetrics().heightPixels;
    }

    public final int getScreenOrientation(Activity activity) {
        PackageManager packageManager;
        PackageInfo packageInfo;
        if (activity == null || (packageManager = activity.getPackageManager()) == null) {
            return -1;
        }
        try {
            packageInfo = packageManager.getPackageInfo(activity.getPackageName(), 1);
        } catch (PackageManager.NameNotFoundException e) {
            TapjoyLog.d(e.getMessage());
            packageInfo = null;
        }
        if ((packageInfo != null ? packageInfo.activities : null) == null) {
            return -1;
        }
        ActivityInfo[] activityInfoArr = packageInfo.activities;
        activityInfoArr.getClass();
        if (activityInfoArr.length == 0) {
            return -1;
        }
        ActivityInfo[] activityInfoArr2 = packageInfo.activities;
        activityInfoArr2.getClass();
        return activityInfoArr2[0].screenOrientation;
    }

    public final int getScreenRotation(Context context, int i, int i2) {
        if (context != null) {
            Display display = DisplayManagerCompat.getInstance(context).getDisplay(0);
            int rotation = display != null ? display.getRotation() : 0;
            if (((rotation == 0 || rotation == 2) && i2 > i) || ((rotation == 1 || rotation == 3) && i > i2)) {
                if (rotation == 1) {
                    return 270;
                }
                if (rotation == 2) {
                    return 180;
                }
                if (rotation == 3) {
                    return 90;
                }
                TapjoyLog.w("Unknown screen orientation. Defaulting to landscape.");
                return 0;
            }
            if (rotation == 0) {
                return 270;
            }
            if (rotation != 1) {
                if (rotation == 2) {
                    return 90;
                }
                if (rotation == 3) {
                    return 180;
                }
                TapjoyLog.w("Unknown screen orientation. Defaulting to landscape.");
                return 0;
            }
        }
        return 0;
    }

    public final int getScreenWidth(Context context) {
        Display display;
        if (context == null || (display = DisplayManagerCompat.getInstance(context).getDisplay(0)) == null) {
            return 0;
        }
        return context.createDisplayContext(display).getResources().getDisplayMetrics().widthPixels;
    }

    public final int getStatusBarHeight(Context context) {
        context.getClass();
        if (Build.VERSION.SDK_INT <= 34 || context.getApplicationInfo().targetSdkVersion <= 34) {
            return 0;
        }
        Object systemService = context.getSystemService("window");
        systemService.getClass();
        WindowMetrics currentWindowMetrics = ((WindowManager) systemService).getCurrentWindowMetrics();
        currentWindowMetrics.getClass();
        Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.displayCutout());
        insetsIgnoringVisibility.getClass();
        return (int) (((int) Math.max(Math.max(insetsIgnoringVisibility.left, insetsIgnoringVisibility.top), Math.max(insetsIgnoringVisibility.right, insetsIgnoringVisibility.bottom))) / (context.getResources().getDisplayMetrics().densityDpi / 160.0f));
    }

    public final long getTotalDiskSpace() {
        return new StatFs(Environment.getDataDirectory().getPath()).getTotalBytes() / 1000000;
    }
}
