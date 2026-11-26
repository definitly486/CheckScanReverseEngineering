package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import defpackage.eq;
import io.appmetrica.analytics.coreapi.internal.model.ScreenInfo;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.oj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1158oj {
    public static ScreenInfo a(Context context) {
        Point pointC;
        int i;
        float f;
        try {
            pointC = AndroidUtils.isApiAchieved(30) ? c(context) : b(context);
        } catch (Throwable unused) {
            pointC = null;
        }
        if (pointC == null) {
            return null;
        }
        int iMax = Math.max(pointC.x, pointC.y);
        int iMin = Math.min(pointC.x, pointC.y);
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            i = displayMetrics.densityDpi;
            try {
                f = displayMetrics.density;
            } catch (Throwable unused2) {
                f = 0.0f;
            }
        } catch (Throwable unused3) {
            i = 0;
        }
        return new ScreenInfo(iMax, iMin, i, f);
    }

    public static Point b(Context context) {
        Display defaultDisplay;
        Object systemService = context.getSystemService("window");
        WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
        if (windowManager == null || (defaultDisplay = windowManager.getDefaultDisplay()) == null) {
            return null;
        }
        return (Point) SystemServiceUtils.accessSystemServiceSafely(defaultDisplay, "getting display metrics", "Display", new defpackage.vh(12));
    }

    public static Point c(Context context) {
        Object systemService = context.getSystemService("window");
        WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
        if (!(context instanceof Activity) && windowManager != null) {
            try {
                Object systemService2 = (AndroidUtils.isApiAchieved(31) ? context.createWindowContext(context.getDisplay(), 2, null) : context.createWindowContext(2, null)).getSystemService("window");
                WindowManager windowManager2 = systemService2 instanceof WindowManager ? (WindowManager) systemService2 : null;
                if (windowManager2 != null) {
                    windowManager = windowManager2;
                }
            } catch (Throwable unused) {
            }
        }
        if (windowManager == null) {
            return null;
        }
        return (Point) SystemServiceUtils.accessSystemServiceSafely(windowManager, "getting maximum window metrics", "WindowManager", new eq());
    }

    public static final Point a(WindowManager windowManager) {
        Rect bounds = windowManager.getMaximumWindowMetrics().getBounds();
        return new Point(bounds.width(), bounds.height());
    }

    public static final Point a(Display display) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getRealMetrics(displayMetrics);
        return new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }
}
