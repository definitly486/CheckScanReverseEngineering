package com.tapjoy;

import android.app.Activity;
import android.content.Context;
import android.opengl.GLSurfaceView;
import android.text.TextUtils;
import com.tapjoy.internal.b2;
import com.tapjoy.internal.c2;
import com.tapjoy.internal.d2;
import com.tapjoy.internal.f2;
import com.tapjoy.internal.h2;
import java.util.Hashtable;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class Tapjoy {
    @Deprecated
    public static void actionComplete(String str) {
    }

    public static void addUserTag(String str) {
        d2.a.getClass();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        TJUser tJUser = TJUser.INSTANCE;
        Set<String> userTags = tJUser.getUserTags();
        if (userTags.add(str)) {
            tJUser.setUserTags(userTags);
        }
    }

    public static void awardCurrency(int i, TJAwardCurrencyListener tJAwardCurrencyListener) {
        h2 h2Var = d2.a;
        h2Var.getClass();
        if (!f2.a("awardCurrency")) {
            if (tJAwardCurrencyListener != null) {
                tJAwardCurrencyListener.onAwardCurrencyResponseFailure("Tapjoy SDK is not connected");
            }
        } else {
            TJCurrency tJCurrency = h2Var.b;
            if (tJCurrency != null) {
                tJCurrency.awardCurrency(i, tJAwardCurrencyListener);
            }
        }
    }

    public static void clearUserTags() {
        d2.a.getClass();
        TJUser.INSTANCE.setUserTags(null);
    }

    public static synchronized boolean connect(Context context, String str, Hashtable<String, ?> hashtable, TJConnectListener tJConnectListener) {
        h2 h2Var;
        h2Var = d2.a;
        h2Var.e = 0;
        return h2Var.f.a(context, str, hashtable, tJConnectListener);
    }

    public static void endSession() {
        h2 h2Var = d2.a;
        h2Var.getClass();
        if (f2.a("endSession")) {
            com.tapjoy.internal.c.a();
            TJSession tJSession = h2Var.c;
            if (tJSession != null) {
                tJSession.setSemiAutoSessionTrackingStarted(false);
                h2Var.c.endSession();
            }
        }
    }

    public static void getCurrencyBalance(TJGetCurrencyBalanceListener tJGetCurrencyBalanceListener) {
        h2 h2Var = d2.a;
        h2Var.getClass();
        if (!f2.a("getCurrencyBalance")) {
            if (tJGetCurrencyBalanceListener != null) {
                tJGetCurrencyBalanceListener.onGetCurrencyBalanceResponseFailure("Tapjoy SDK is not connected");
            }
        } else {
            TJCurrency tJCurrency = h2Var.b;
            if (tJCurrency != null) {
                tJCurrency.getCurrencyBalance(tJGetCurrencyBalanceListener);
            }
        }
    }

    public static String getCustomParameter() {
        d2.a.getClass();
        return TapjoyConnectCore.getInstance().getCustomParameter();
    }

    public static TJLogLevel getLoggingLevel() {
        d2.a.getClass();
        return TapjoyLog.getLoggingLevel();
    }

    public static int getMaxLevel() {
        d2.a.getClass();
        return TJUser.INSTANCE.getUserMaxLevel();
    }

    public static boolean getOptOutAdvertisingID(Context context) {
        d2.a.getClass();
        return TJTracking.INSTANCE.getOptOutAdvertisingID(context);
    }

    public static TJPlacement getPlacement(String str, TJPlacementListener tJPlacementListener) {
        TJPlacement tJPlacement;
        d2.a.getClass();
        synchronized (TJPlacementManager.a) {
            tJPlacement = new TJPlacement(TJPlacementManager.a(str, false), tJPlacementListener);
        }
        return tJPlacement;
    }

    public static TJPrivacyPolicy getPrivacyPolicy() {
        d2.a.getClass();
        return TJPrivacyPolicy.getInstance();
    }

    @Deprecated
    public static String getSupportURL() {
        return "";
    }

    public static String getUserID() {
        d2.a.getClass();
        return TJUser.INSTANCE.getUserID();
    }

    public static int getUserLevel() {
        d2.a.getClass();
        return TJUser.INSTANCE.getUserLevel();
    }

    public static void getUserRevenue(TJGetUserRevenueListener tJGetUserRevenueListener) {
        d2.a.a(tJGetUserRevenueListener);
    }

    public static TJSegment getUserSegment() {
        d2.a.getClass();
        return TJUser.INSTANCE.getUserSegment();
    }

    public static Set<String> getUserTags() {
        d2.a.getClass();
        return TJUser.INSTANCE.getUserTags();
    }

    public static String getVersion() {
        d2.a.getClass();
        return "14.8.0";
    }

    public static boolean isConnected() {
        d2.a.getClass();
        return TapjoyConnectCore.getInstance().isConnected();
    }

    public static void loadSharedLibrary() {
        try {
            System.loadLibrary("tapjoy");
        } catch (UnsatisfiedLinkError unused) {
        }
    }

    public static void onActivityStart(Activity activity) {
        TapjoyUtil.runOnMainThread(new b2(activity));
    }

    public static void onActivityStop(Activity activity) {
        TapjoyUtil.runOnMainThread(new c2(activity));
    }

    public static void optOutAdvertisingID(Context context, boolean z) {
        d2.a.getClass();
        TJTracking.INSTANCE.optOutAdvertisingID(context, z);
    }

    public static void removeUserTag(String str) {
        d2.a.getClass();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        TJUser tJUser = TJUser.INSTANCE;
        Set<String> userTags = tJUser.getUserTags();
        if (userTags.remove(str)) {
            tJUser.setUserTags(userTags);
        }
    }

    @Deprecated
    public static void setActivity(Activity activity) {
    }

    public static void setCustomParameter(String str) {
        d2.a.getClass();
        TapjoyConnectCore.getInstance().setCustomParameter(str);
    }

    @Deprecated
    public static void setDebugEnabled(boolean z) {
        d2.a.getClass();
        TapjoyLog.setDebugEnabled(z);
    }

    public static void setEarnedCurrencyListener(TJEarnedCurrencyListener tJEarnedCurrencyListener) {
        h2 h2Var = d2.a;
        if (h2Var.b == null || !f2.a("setEarnedCurrencyListener")) {
            return;
        }
        h2Var.b.setEarnedCurrencyListener(tJEarnedCurrencyListener);
    }

    @Deprecated
    public static void setGLSurfaceView(GLSurfaceView gLSurfaceView) {
    }

    public static void setLoggingLevel(TJLogLevel tJLogLevel) {
        d2.a.getClass();
        if (TapjoyAppSettings.INSTANCE.getLoggingLevel() == null) {
            TapjoyLog.setLoggingLevel(tJLogLevel, false);
        } else {
            TapjoyLog.w("Server-side logging enabled. Cannot override.");
        }
    }

    public static void setMaxLevel(int i) {
        d2.a.getClass();
        TJUser.INSTANCE.setUserMaxLevel(i);
    }

    public static void setUserID(String str, TJSetUserIDListener tJSetUserIDListener) {
        d2.a.b(str, tJSetUserIDListener);
    }

    public static void setUserLevel(int i) {
        d2.a.getClass();
        TJUser.INSTANCE.setUserLevel(i);
    }

    public static void setUserSegment(TJSegment tJSegment) {
        d2.a.getClass();
        TJUser.INSTANCE.setUserSegment(tJSegment);
    }

    public static void setUserTags(Set<String> set) {
        d2.a.getClass();
        TJUser.INSTANCE.setUserTags(set);
    }

    public static void spendCurrency(int i, TJSpendCurrencyListener tJSpendCurrencyListener) {
        h2 h2Var = d2.a;
        h2Var.getClass();
        if (!f2.a("spendCurrency")) {
            if (tJSpendCurrencyListener != null) {
                tJSpendCurrencyListener.onSpendCurrencyResponseFailure("Tapjoy SDK is not connected");
            }
        } else {
            TJCurrency tJCurrency = h2Var.b;
            if (tJCurrency != null) {
                tJCurrency.spendCurrency(i, tJSpendCurrencyListener);
            }
        }
    }

    public static void startSession() {
        h2 h2Var = d2.a;
        h2Var.getClass();
        if (f2.a("startSession")) {
            com.tapjoy.internal.c.a();
            TJSession tJSession = h2Var.c;
            if (tJSession != null) {
                tJSession.initSession();
            }
        }
    }

    public static void trackPurchase(String str, double d) {
        d2.a.getClass();
        TJPurchases.INSTANCE.trackPurchase(str, Double.valueOf(d));
    }

    @Deprecated
    public static String getSupportURL(String str) {
        return "";
    }

    @Deprecated
    public static void trackPurchase(String str, String str2, String str3, String str4) {
    }

    @Deprecated
    public static void trackPurchase(String str, String str2, double d, String str3) {
        d2.a.getClass();
        TJPurchases.INSTANCE.trackPurchase(str2, Double.valueOf(d));
    }

    public static boolean connect(Context context, String str, Hashtable<String, ?> hashtable) {
        h2 h2Var = d2.a;
        h2Var.e = 0;
        return h2Var.f.a(context, str, hashtable, null);
    }

    public static boolean connect(Context context, String str) {
        h2 h2Var = d2.a;
        h2Var.getClass();
        h2Var.e = 0;
        return h2Var.f.a(context, str, null, null);
    }
}
