package com.tapjoy;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes4.dex */
public class TJAdUnit {
    public TJAdUnitWebViewListener a;
    public TJAdUnitActivity b;
    public TJAdUnitJSBridge c;
    public View d;
    public TJWebView e;
    public boolean f;
    public boolean g;
    public boolean h;
    public volatile boolean i;
    public boolean j;
    public com.tapjoy.internal.l0 k;
    public TapjoyCache l;
    public final d m = new d(this);
    public final e n = new e(this);

    public interface TJAdUnitWebViewListener {
        void onClosed();

        void onContentReady();
    }

    public void closeRequested(boolean z) {
        this.c.closeRequested(Boolean.valueOf(z));
    }

    public void destroy() {
        TJAdUnitJSBridge tJAdUnitJSBridge = this.c;
        if (tJAdUnitJSBridge != null) {
            tJAdUnitJSBridge.destroy();
        }
        View view = this.d;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.d);
            }
            this.d = null;
        }
        TJWebView tJWebView = this.e;
        if (tJWebView != null) {
            tJWebView.destroy();
            this.e = null;
        }
        this.i = false;
        this.f = false;
        setAdUnitActivity(null);
        TJAdUnitWebViewListener tJAdUnitWebViewListener = this.a;
        if (tJAdUnitWebViewListener != null) {
            tJAdUnitWebViewListener.onClosed();
        }
        resetContentLoadState();
    }

    public void fireContentReady() {
        TJAdUnitWebViewListener tJAdUnitWebViewListener = this.a;
        if (tJAdUnitWebViewListener != null) {
            tJAdUnitWebViewListener.onContentReady();
        }
    }

    public View getBackgroundView() {
        return this.d;
    }

    public boolean getCloseRequested() {
        return this.c.closeRequested;
    }

    public com.tapjoy.internal.l0 getSdkBeacon() {
        return this.k;
    }

    public TJWebView getWebView() {
        return this.e;
    }

    public boolean hasCalledLoad() {
        return this.g;
    }

    public void invokeBridgeCallback(String str, Object... objArr) {
        TJAdUnitJSBridge tJAdUnitJSBridge = this.c;
        if (tJAdUnitJSBridge == null || str == null) {
            return;
        }
        tJAdUnitJSBridge.invokeJSCallback(str, objArr);
    }

    public boolean isPrerendered() {
        return this.h;
    }

    public void load(TJPlacementData tJPlacementData, boolean z, Context context) {
        this.g = false;
        TapjoyUtil.runOnMainThread(new c(this, context, tJPlacementData, z));
    }

    public void notifyOrientationChanged() {
        TJAdUnitActivity tJAdUnitActivity;
        if (this.c == null || (tJAdUnitActivity = this.b) == null) {
            return;
        }
        TJDeviceUtils tJDeviceUtils = TJDeviceUtils.INSTANCE;
        int screenWidth = tJDeviceUtils.getScreenWidth(tJAdUnitActivity);
        int screenHeight = tJDeviceUtils.getScreenHeight(this.b);
        this.c.notifyOrientationChanged(tJDeviceUtils.getOrientationString(screenWidth, screenHeight), screenWidth, screenHeight);
    }

    public void notifyThemeChanged() {
        TJAdUnitActivity tJAdUnitActivity;
        if (this.c == null || (tJAdUnitActivity = this.b) == null) {
            return;
        }
        this.c.notifyThemeChanged((tJAdUnitActivity.getResources().getConfiguration().uiMode & 48) == 32 ? TapjoyConstants.TJC_THEME_DARK : TapjoyConstants.TJC_THEME_LIGHT);
    }

    public void pause() {
        TJAdUnitJSBridge tJAdUnitJSBridge = this.c;
        if (tJAdUnitJSBridge != null) {
            tJAdUnitJSBridge.setEnabled(false);
            this.c.pause();
        }
    }

    public boolean preload(TJPlacementData tJPlacementData, Context context) {
        if (this.g || !tJPlacementData.isPrerenderingRequested() || !TJPlacementManager.canPreRenderPlacement() || TapjoyConnectCore.getInstance().isViewOpen()) {
            fireContentReady();
            return false;
        }
        TapjoyLog.i("Pre-rendering ad unit for placement: " + tJPlacementData.getPlacementName());
        TJPlacementManager.incrementPlacementPreRenderCount();
        load(tJPlacementData, true, context);
        return true;
    }

    public void resetContentLoadState() {
        this.g = false;
        this.j = false;
        this.h = false;
    }

    public void resume() {
        TJAdUnitJSBridge tJAdUnitJSBridge = this.c;
        if (tJAdUnitJSBridge == null) {
            TJAdUnitActivity tJAdUnitActivity = this.b;
            if (tJAdUnitActivity != null) {
                tJAdUnitActivity.finish();
                TapjoyLog.w("Failed to resume TJAdUnit. TJAdUnitBridge is null.");
                return;
            }
            return;
        }
        if (tJAdUnitJSBridge.didLaunchOtherActivity) {
            TapjoyLog.d("onResume bridge.didLaunchOtherActivity callbackID: " + this.c.otherActivityCallbackID);
            TJAdUnitJSBridge tJAdUnitJSBridge2 = this.c;
            tJAdUnitJSBridge2.invokeJSCallback(tJAdUnitJSBridge2.otherActivityCallbackID, Boolean.TRUE);
            tJAdUnitJSBridge = this.c;
            tJAdUnitJSBridge.didLaunchOtherActivity = false;
        }
        tJAdUnitJSBridge.setEnabled(true);
        this.c.resume();
    }

    public void setAdUnitActivity(TJAdUnitActivity tJAdUnitActivity) {
        this.b = tJAdUnitActivity;
    }

    public void setVisible(boolean z) {
        TJAdUnitJSBridge tJAdUnitJSBridge;
        TJAdUnitActivity tJAdUnitActivity;
        if (this.c != null && (tJAdUnitActivity = this.b) != null) {
            TJDeviceUtils tJDeviceUtils = TJDeviceUtils.INSTANCE;
            int screenWidth = tJDeviceUtils.getScreenWidth(tJAdUnitActivity);
            int screenHeight = tJDeviceUtils.getScreenHeight(this.b);
            this.c.notifyOrientationChanged(tJDeviceUtils.getOrientationString(screenWidth, screenHeight), screenWidth, screenHeight);
        }
        this.f = z;
        if (z && this.j && (tJAdUnitJSBridge = this.c) != null) {
            tJAdUnitJSBridge.display();
        }
    }

    public void setWebViewListener(TJAdUnitWebViewListener tJAdUnitWebViewListener) {
        this.a = tJAdUnitWebViewListener;
    }
}
