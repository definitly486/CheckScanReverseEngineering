package com.tapjoy;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class TJPlacement {
    public final TJCorePlacement a;
    public final TJPlacementListener b;
    public final String c;
    public TJEntryPoint d;

    @Deprecated
    public TJPlacement(Context context, String str, TJPlacementListener tJPlacementListener) {
        this.d = null;
        TJCorePlacement tJCorePlacementA = TJPlacementManager.a(str);
        tJCorePlacementA = tJCorePlacementA == null ? TJPlacementManager.a(str, false) : tJCorePlacementA;
        tJCorePlacementA.setContext(context);
        this.a = tJCorePlacementA;
        this.c = UUID.randomUUID().toString();
        this.b = tJPlacementListener;
    }

    public static void dismissContent() {
        if (TJAdUnitConstants.String.TRUE.equals(TapjoyConnectCore.getInstance().getConnectFlagValue("TJC_OPTION_DISMISS_CONTENT_ALL"))) {
            TJPlacementManager.dismissContentShowing();
        }
    }

    public int getCurrencyAmountRequired(String str) {
        if (this.a.d.getCurrencyIdList().contains(str)) {
            return this.a.d.getCurrencyAmountRequired(str);
        }
        return -1;
    }

    public int getCurrencyBalance(String str) {
        if ((str != null || this.a.d.isSelfManaged()) && !this.a.d.getCurrencyIdList().contains(str)) {
            return -1;
        }
        return this.a.d.getCurrencyBalance(str);
    }

    public TJEntryPoint getEntryPoint() {
        return this.d;
    }

    public String getGUID() {
        return this.c;
    }

    public TJPlacementListener getListener() {
        return this.b;
    }

    public String getName() {
        String str = this.a.f;
        return str != null ? str : "";
    }

    public boolean isContentAvailable() {
        return this.a.isContentAvailable();
    }

    public boolean isContentReady() {
        return this.a.isContentReady();
    }

    public void requestContent() {
        String name = getName();
        TapjoyLog.i("requestContent() called for placement " + name);
        if (TJPrivacyPolicy.getInstance() != null && TJPrivacyPolicy.getInstance().getUserConsent() == TJStatus.UNKNOWN) {
            TapjoyLog.w("[INFO] Your application calls requestContent without having previously called setUserConsent. You can review Tapjoy supported consent API here - https://dev.tapjoy.com/sdk-integration/#sdk11122_gdpr_release.");
        }
        if (!TapjoyConnectCore.getInstance().isConnected()) {
            this.a.a(this, new TJError(0, "SDK not connected -- connect must be called first with a successful callback"));
            return;
        }
        if (this.a.getContext() == null) {
            TJCorePlacement tJCorePlacement = this.a;
            Context context = com.tapjoy.internal.i.a;
            if (context == null) {
                WeakReference weakReference = com.tapjoy.internal.i.c.a;
                context = (Context) (weakReference != null ? weakReference.get() : null);
            }
            tJCorePlacement.setContext(context);
        }
        if (this.a.getContext() == null) {
            this.a.a(this, new TJError(0, "Context is null -- TJPlacement requires a valid Context."));
            return;
        }
        if (TextUtils.isEmpty(name)) {
            this.a.a(this, new TJError(0, "Invalid placement name -- TJPlacement requires a valid placement name."));
            return;
        }
        TJCorePlacement tJCorePlacement2 = this.a;
        tJCorePlacement2.a("REQUEST", this);
        TJPlacementData tJPlacementData = tJCorePlacement2.c;
        if ((tJPlacementData == null ? 0L : tJPlacementData.getRequestExpiration().longValue() - SystemClock.elapsedRealtime()) <= 0) {
            tJCorePlacement2.b();
            return;
        }
        TapjoyLog.d("Content has not expired yet for " + tJCorePlacement2.f);
        if (!tJCorePlacement2.m) {
            tJCorePlacement2.a(this);
            return;
        }
        tJCorePlacement2.l = false;
        tJCorePlacement2.a(this);
        tJCorePlacement2.a();
    }

    public void setCurrencyAmountRequired(String str, int i, TJSetCurrencyAmountRequiredListener tJSetCurrencyAmountRequiredListener) {
        if (str != null && !str.isEmpty() && this.a.d.getCurrencyIdList().contains(str) && i > 0) {
            this.a.d.saveCurrencyAmountRequired(str, i);
            if (tJSetCurrencyAmountRequiredListener != null) {
                tJSetCurrencyAmountRequiredListener.onSetCurrencyAmountRequiredSuccess();
                return;
            }
            return;
        }
        if (str != null && str.isEmpty() && tJSetCurrencyAmountRequiredListener != null) {
            tJSetCurrencyAmountRequiredListener.onSetCurrencyAmountRequiredFailure(1, "Currency id is null or empty");
            return;
        }
        if (!this.a.d.getCurrencyIdList().contains(str) && tJSetCurrencyAmountRequiredListener != null) {
            tJSetCurrencyAmountRequiredListener.onSetCurrencyAmountRequiredFailure(1, "Invalid currency id");
        } else {
            if (i > 0 || tJSetCurrencyAmountRequiredListener == null) {
                return;
            }
            tJSetCurrencyAmountRequiredListener.onSetCurrencyAmountRequiredFailure(1, "Amount is negative or zero");
        }
    }

    public void setCurrencyBalance(String str, int i, TJSetCurrencyBalanceListener tJSetCurrencyBalanceListener) {
        if (str != null && !str.isEmpty() && this.a.d.getCurrencyIdList().contains(str) && ((this.a.d.isSelfManaged() || this.a.d.getAllowCurrencySetBalance()) && i >= 0)) {
            this.a.d.saveCurrencyBalance(str, i);
            if (tJSetCurrencyBalanceListener != null) {
                tJSetCurrencyBalanceListener.onSetCurrencyBalanceSuccess();
                return;
            }
            return;
        }
        if (str != null && str.isEmpty() && tJSetCurrencyBalanceListener != null) {
            tJSetCurrencyBalanceListener.onSetCurrencyBalanceFailure(1, "Currency id is null or empty");
            return;
        }
        if (!this.a.d.getCurrencyIdList().contains(str) && tJSetCurrencyBalanceListener != null) {
            tJSetCurrencyBalanceListener.onSetCurrencyBalanceFailure(1, "Invalid currency id");
            return;
        }
        if (!this.a.d.isSelfManaged() && !this.a.d.getAllowCurrencySetBalance() && tJSetCurrencyBalanceListener != null) {
            tJSetCurrencyBalanceListener.onSetCurrencyBalanceFailure(1, "App uses Tapjoy managed currencies");
        } else {
            if (i >= 0 || tJSetCurrencyBalanceListener == null) {
                return;
            }
            tJSetCurrencyBalanceListener.onSetCurrencyBalanceFailure(1, "Balance is negative");
        }
    }

    public void setEntryPoint(TJEntryPoint tJEntryPoint) {
        this.d = tJEntryPoint;
    }

    public void showContent() {
        TapjoyLog.i("showContent() called for placement " + getName());
        if (this.a.isContentAvailable()) {
            this.a.c(this);
        } else {
            TapjoyLog.e("No placement content available. Can not show content for non-200 placement.");
        }
    }

    public TJPlacement(TJCorePlacement tJCorePlacement, TJPlacementListener tJPlacementListener) {
        this.d = null;
        this.a = tJCorePlacement;
        this.c = UUID.randomUUID().toString();
        this.b = tJPlacementListener;
    }
}
