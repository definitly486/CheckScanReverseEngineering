package com.tapjoy;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class k extends TJJSBridgeDelegate {
    public final /* synthetic */ TJAdUnit a;

    public k(TJAdUnit tJAdUnit) {
        this.a = tJAdUnit;
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final boolean dismiss() {
        this.a.b.finish();
        return true;
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final boolean fireContentReady() {
        this.a.fireContentReady();
        return true;
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final Context getContext() {
        TJAdUnit tJAdUnit = this.a;
        TJAdUnitActivity tJAdUnitActivity = tJAdUnit.b;
        if (tJAdUnitActivity != null) {
            return tJAdUnitActivity;
        }
        TJWebView tJWebView = tJAdUnit.e;
        if (tJWebView != null) {
            return tJWebView.getContext();
        }
        return null;
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final Map getOrientation() {
        HashMap map = new HashMap();
        Context context = getContext();
        if (context == null) {
            return map;
        }
        TJDeviceUtils tJDeviceUtils = TJDeviceUtils.INSTANCE;
        int screenWidth = tJDeviceUtils.getScreenWidth(context);
        int screenHeight = tJDeviceUtils.getScreenHeight(context);
        map.put(TJAdUnitConstants.String.ORIENTATION, tJDeviceUtils.getOrientationString(screenWidth, screenHeight));
        map.put(TJAdUnitConstants.String.WIDTH, Integer.valueOf(screenWidth));
        map.put(TJAdUnitConstants.String.HEIGHT, Integer.valueOf(screenHeight));
        map.put("rotation", Integer.valueOf(tJDeviceUtils.getScreenRotation(context, screenWidth, screenHeight)));
        return map;
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final int getStatusBarHeight() {
        Context context = getContext();
        if (context == null) {
            return 0;
        }
        return TJDeviceUtils.INSTANCE.getStatusBarHeight(context);
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final void getTextZoom(TJTaskHandler tJTaskHandler) {
        TapjoyUtil.runOnMainThread(new f(this, tJTaskHandler));
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final WebView getWebView() {
        return this.a.e;
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final void setBackgroundColor(String str, TJTaskHandler tJTaskHandler) {
        TapjoyUtil.runOnMainThread(new h(this, str, tJTaskHandler));
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final void setCloseButtonClickable(boolean z) {
        TapjoyUtil.runOnMainThread(new j(this, z));
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final void setCloseButtonVisible(boolean z) {
        TapjoyUtil.runOnMainThread(new i(this, z));
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final boolean setOrientation(int i) {
        TJAdUnitActivity tJAdUnitActivity = this.a.b;
        if (tJAdUnitActivity == null) {
            return true;
        }
        tJAdUnitActivity.setRequestedOrientation(i);
        return true;
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final void setTextZoom(float f) {
        TapjoyUtil.runOnMainThread(new g(this, f));
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final void setupSdkBeacons(com.tapjoy.internal.l0 l0Var) {
        TJAdUnit tJAdUnit = this.a;
        tJAdUnit.k = l0Var;
        if (l0Var == null || !tJAdUnit.f || TextUtils.isEmpty(l0Var.c) || l0Var.f) {
            return;
        }
        l0Var.f = true;
        new com.tapjoy.internal.j0(l0Var, new HashMap(l0Var.b)).start();
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final void shouldClose(boolean z) {
        TJAdUnitActivity tJAdUnitActivity;
        if (!z || (tJAdUnitActivity = this.a.b) == null) {
            return;
        }
        tJAdUnitActivity.finish();
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final boolean unsetOrientation() {
        TJAdUnitActivity tJAdUnitActivity = this.a.b;
        if (tJAdUnitActivity == null) {
            return true;
        }
        tJAdUnitActivity.setRequestedOrientation(-1);
        return true;
    }
}
