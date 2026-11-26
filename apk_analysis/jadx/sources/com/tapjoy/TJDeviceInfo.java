package com.tapjoy;

import android.app.UiModeManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.BatteryManager;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import androidx.media3.common.MimeTypes;
import java.math.BigDecimal;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes4.dex */
public final class TJDeviceInfo {
    public static final TJDeviceInfo INSTANCE = new TJDeviceInfo();

    public final Float getBatteryLevel(Context context) {
        Object systemService = context != null ? context.getSystemService("batterymanager") : null;
        BatteryManager batteryManager = systemService instanceof BatteryManager ? (BatteryManager) systemService : null;
        if (batteryManager == null) {
            return null;
        }
        return Float.valueOf(batteryManager.getIntProperty(4) / 100.0f);
    }

    public final Float getBrightness(Context context) {
        if (context != null) {
            try {
                ContentResolver contentResolver = context.getContentResolver();
                if (contentResolver != null) {
                    return Float.valueOf(new BigDecimal(Settings.System.getInt(contentResolver, "screen_brightness") / 255.0f).setScale(2, RoundingMode.HALF_UP).floatValue());
                }
            } catch (Settings.SettingNotFoundException e) {
                TapjoyLog.d(e.getMessage());
            }
        }
        return null;
    }

    public final Integer getDeviceScreenLayoutSize(Context context) {
        Resources resources;
        Configuration configuration;
        if (context != null && (resources = context.getResources()) != null && (configuration = resources.getConfiguration()) != null) {
            try {
                return Integer.valueOf(configuration.screenLayout & 15);
            } catch (Exception e) {
                TapjoyLog.d("Error getting screen density/dimensions/layout: " + e);
            }
        }
        return null;
    }

    public final Integer getScreenDPI(Context context) {
        Resources resources;
        DisplayMetrics displayMetrics;
        try {
            if (Build.VERSION.SDK_INT >= 30) {
                if (context == null || (resources = context.getResources()) == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
                    return null;
                }
                return Integer.valueOf(displayMetrics.densityDpi);
            }
            Object systemService = context != null ? context.getSystemService("window") : null;
            WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
            if (windowManager == null) {
                return null;
            }
            DisplayMetrics displayMetrics2 = new DisplayMetrics();
            Display defaultDisplay = windowManager.getDefaultDisplay();
            if (defaultDisplay != null) {
                defaultDisplay.getMetrics(displayMetrics2);
            }
            return Integer.valueOf(displayMetrics2.densityDpi);
        } catch (Exception e) {
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            TapjoyLog.d(message);
            return null;
        }
    }

    public final Integer getScreenHeight(Context context) {
        Object systemService;
        Resources resources;
        DisplayMetrics displayMetrics;
        if (context != null) {
            try {
                systemService = context.getSystemService("window");
            } catch (Exception e) {
                String message = e.getMessage();
                if (message == null) {
                    message = "";
                }
                TapjoyLog.d(message);
                return null;
            }
        } else {
            systemService = null;
        }
        WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
        if (windowManager == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
            currentWindowMetrics.getClass();
            int i = currentWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.statusBars()).top;
            Resources resources2 = context.getResources();
            if (resources2 == null || (displayMetrics = resources2.getDisplayMetrics()) == null) {
                return null;
            }
            return Integer.valueOf(displayMetrics.heightPixels - i);
        }
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        Display defaultDisplay = windowManager.getDefaultDisplay();
        if (defaultDisplay != null) {
            defaultDisplay.getMetrics(displayMetrics2);
        }
        int dimensionPixelSize = 0;
        try {
            Resources resources3 = context.getResources();
            int identifier = resources3 != null ? resources3.getIdentifier("status_bar_height", "dimen", "android") : 0;
            if (identifier > 0 && (resources = context.getResources()) != null) {
                dimensionPixelSize = resources.getDimensionPixelSize(identifier);
            }
        } catch (Exception unused) {
        }
        int i2 = displayMetrics2.heightPixels - dimensionPixelSize;
        displayMetrics2.heightPixels = i2;
        return Integer.valueOf(i2);
    }

    public final Integer getScreenWidth(Context context) {
        Resources resources;
        DisplayMetrics displayMetrics;
        try {
            if (Build.VERSION.SDK_INT >= 30) {
                if (context == null || (resources = context.getResources()) == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
                    return null;
                }
                return Integer.valueOf(displayMetrics.widthPixels);
            }
            Object systemService = context != null ? context.getSystemService("window") : null;
            WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
            if (windowManager == null) {
                return null;
            }
            DisplayMetrics displayMetrics2 = new DisplayMetrics();
            Display defaultDisplay = windowManager.getDefaultDisplay();
            if (defaultDisplay != null) {
                defaultDisplay.getMetrics(displayMetrics2);
            }
            return Integer.valueOf(displayMetrics2.widthPixels);
        } catch (Exception e) {
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            TapjoyLog.d(message);
            return null;
        }
    }

    public final String getTheme(Context context) {
        Object systemService = context != null ? context.getSystemService("uimode") : null;
        UiModeManager uiModeManager = systemService instanceof UiModeManager ? (UiModeManager) systemService : null;
        Integer numValueOf = uiModeManager != null ? Integer.valueOf(uiModeManager.getNightMode()) : null;
        return (numValueOf != null && numValueOf.intValue() == 2) ? TapjoyConstants.TJC_THEME_DARK : TapjoyConstants.TJC_THEME_LIGHT;
    }

    public final Float getVolume(Context context) {
        Object systemService;
        if (context != null) {
            try {
                systemService = context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            } catch (Exception unused) {
                TapjoyLog.d("Unable to fetch volume");
                return null;
            }
        } else {
            systemService = null;
        }
        AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
        if (audioManager == null) {
            return null;
        }
        return Float.valueOf(new BigDecimal(audioManager.getStreamVolume(3) / audioManager.getStreamMaxVolume(3)).setScale(2, RoundingMode.HALF_UP).floatValue());
    }
}
