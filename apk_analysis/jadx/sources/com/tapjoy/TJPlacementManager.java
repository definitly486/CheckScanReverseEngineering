package com.tapjoy;

import android.content.Context;
import android.text.TextUtils;
import com.tapjoy.internal.w2;

/* JADX INFO: loaded from: classes4.dex */
public class TJPlacementManager {
    public static final w2 a = new w2();
    public static int b = 0;
    public static int c = 0;
    public static int d = 3;
    public static int e = 3;

    public static TJCorePlacement a(String str, boolean z) {
        TJCorePlacement tJCorePlacementA;
        StringBuilder sb = new StringBuilder(z ? "!SYSTEM!" : "");
        sb.append(!TextUtils.isEmpty(str) ? str : "");
        String string = sb.toString();
        TapjoyLog.d("TJCorePlacement key=".concat(string));
        w2 w2Var = a;
        synchronized (w2Var) {
            try {
                tJCorePlacementA = a(string);
                if (tJCorePlacementA == null) {
                    tJCorePlacementA = new TJCorePlacement(str, string, z);
                    w2Var.put(string, tJCorePlacementA);
                    TapjoyLog.d("Created TJCorePlacement with GUID: " + tJCorePlacementA.e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return tJCorePlacementA;
    }

    public static boolean canCachePlacement() {
        return getCachedPlacementCount() < getCachedPlacementLimit();
    }

    public static boolean canPreRenderPlacement() {
        return getPreRenderedPlacementCount() < getPreRenderedPlacementLimit();
    }

    public static TJPlacement createPlacement(Context context, String str, boolean z, TJPlacementListener tJPlacementListener) {
        TJCorePlacement tJCorePlacementA = a(str, z);
        tJCorePlacementA.setContext(context);
        return new TJPlacement(tJCorePlacementA, tJPlacementListener);
    }

    public static void decrementPlacementCacheCount() {
        int i = b - 1;
        b = i;
        if (i < 0) {
            b = 0;
        }
        printPlacementCacheInformation();
    }

    public static void decrementPlacementPreRenderCount() {
        int i = c - 1;
        c = i;
        if (i < 0) {
            c = 0;
        }
    }

    public static void dismissContentShowing() {
        TJAdUnitActivity tJAdUnitActivity = TJAdUnitActivity.i;
        if (tJAdUnitActivity != null) {
            tJAdUnitActivity.a(true);
        }
    }

    public static int getCachedPlacementCount() {
        return b;
    }

    public static int getCachedPlacementLimit() {
        return d;
    }

    public static int getPreRenderedPlacementCount() {
        return c;
    }

    public static int getPreRenderedPlacementLimit() {
        return e;
    }

    public static void incrementPlacementCacheCount() {
        int i = b + 1;
        b = i;
        int i2 = d;
        if (i > i2) {
            b = i2;
        }
        printPlacementCacheInformation();
    }

    public static void incrementPlacementPreRenderCount() {
        int i = c + 1;
        c = i;
        int i2 = e;
        if (i > i2) {
            c = i2;
        }
    }

    public static void printPlacementCacheInformation() {
        TapjoyLog.i("Space available in placement cache: " + b + " out of " + d);
    }

    public static void printPlacementPreRenderInformation() {
        TapjoyLog.i("Space available for placement pre-render: " + c + " out of " + e);
    }

    public static void setCachedPlacementLimit(int i) {
        d = i;
    }

    public static void setPreRenderedPlacementLimit(int i) {
        e = i;
    }

    public static TJCorePlacement a(String str) {
        TJCorePlacement tJCorePlacement;
        w2 w2Var = a;
        synchronized (w2Var) {
            tJCorePlacement = (TJCorePlacement) w2Var.get(str);
        }
        return tJCorePlacement;
    }
}
