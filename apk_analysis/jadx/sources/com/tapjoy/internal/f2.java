package com.tapjoy.internal;

import android.content.Context;
import android.text.TextUtils;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TJConnectListener;
import com.tapjoy.TJCurrency;
import com.tapjoy.TJGetUserRevenueListener;
import com.tapjoy.TJLogLevel;
import com.tapjoy.TJSession;
import com.tapjoy.TJSetUserIDListener;
import com.tapjoy.Tapjoy;
import com.tapjoy.TapjoyAppSettings;
import com.tapjoy.TapjoyConnectCore;
import com.tapjoy.TapjoyConnectFlag;
import com.tapjoy.TapjoyException;
import com.tapjoy.TapjoyIntegrationException;
import com.tapjoy.TapjoyLog;
import defpackage.cy2;
import defpackage.xt;
import java.util.Hashtable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f2 extends d2 {
    public TJCurrency b = null;
    public TJSession c = null;
    public final ExecutorService d = Executors.newSingleThreadExecutor();

    public synchronized boolean a(Context context, String str, Hashtable hashtable, TJConnectListener tJConnectListener) {
        if (hashtable != null) {
            try {
                Object obj = hashtable.get(TapjoyConnectFlag.ENABLE_LOGGING);
                if (obj != null) {
                    TapjoyLog.setDebugEnabled(TJAdUnitConstants.String.TRUE.equals(obj.toString()));
                }
                Object obj2 = hashtable.get(TapjoyConnectFlag.TJC_OPTION_LOGGING_LEVEL);
                if (obj2 != null) {
                    try {
                        if (!(obj2 instanceof TJLogLevel) && (obj2 instanceof Number)) {
                            Tapjoy.setLoggingLevel(TJLogLevel.valueOf(((Number) obj2).intValue()));
                        } else {
                            Tapjoy.setLoggingLevel((TJLogLevel) obj2);
                        }
                    } catch (Exception e) {
                        TapjoyLog.d("Failed to parse logging level: " + e.getMessage());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (context == null) {
            TapjoyLog.e("The application context is NULL");
            if (tJConnectListener != null) {
                tJConnectListener.onConnectFailure(1, "The application context is NULL");
            }
            return false;
        }
        i.a(context);
        if (TextUtils.isEmpty(str)) {
            TapjoyLog.e("The SDK key is NULL. A valid SDK key is required to connect successfully to Tapjoy");
            if (tJConnectListener != null) {
                tJConnectListener.onConnectFailure(1, "The SDK key is NULL. A valid SDK key is required to connect successfully to Tapjoy");
            }
            return false;
        }
        try {
            TapjoyAppSettings.INSTANCE.initSettings(context);
            this.b = new TJCurrency(context);
            TJSession tJSession = new TJSession(context);
            this.c = tJSession;
            c.e.c = tJSession;
            TapjoyConnectCore.getInstance().requestTapjoyConnect(context, str, hashtable, new e2(tJConnectListener));
            TJSession tJSession2 = this.c;
            if (tJSession2 != null) {
                tJSession2.setAutomaticSessionTracking(context, hashtable);
            }
            return true;
        } catch (TapjoyIntegrationException e2) {
            TapjoyLog.e(e2.getMessage());
            if (tJConnectListener != null) {
                tJConnectListener.onConnectFailure(1, e2.getMessage());
            }
            return false;
        } catch (TapjoyException e3) {
            TapjoyLog.e(e3.getMessage());
            if (tJConnectListener != null) {
                tJConnectListener.onConnectFailure(1, e3.getMessage());
            }
            return false;
        }
    }

    public final void b(String str, TJSetUserIDListener tJSetUserIDListener) {
        if (a("setUserID")) {
            this.d.submit(new xt(2, str, tJSetUserIDListener));
        } else if (tJSetUserIDListener != null) {
            tJSetUserIDListener.onSetUserIDFailure("Tapjoy SDK is not connected");
            tJSetUserIDListener.onSetUserIDFailure(0, "Tapjoy SDK is not connected");
        }
    }

    public final void a(TJGetUserRevenueListener tJGetUserRevenueListener) {
        if (a("getUserRevenue")) {
            this.d.submit(new cy2(tJGetUserRevenueListener, 1));
        } else if (tJGetUserRevenueListener != null) {
            tJGetUserRevenueListener.onGetUserRevenueResponseFailure("Tapjoy SDK is not connected");
        }
    }

    public static boolean a(String str) {
        if (TapjoyConnectCore.getInstance().isConnected()) {
            return true;
        }
        TapjoyLog.w("Can not call " + str + " because Tapjoy SDK has not successfully connected.");
        return false;
    }
}
