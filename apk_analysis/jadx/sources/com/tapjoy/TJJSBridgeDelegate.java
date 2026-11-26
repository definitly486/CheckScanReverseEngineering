package com.tapjoy;

import android.content.Context;
import android.webkit.WebView;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TJJSBridgeDelegate {
    public boolean dismiss() {
        return false;
    }

    public boolean fireContentError(TJError tJError) {
        return false;
    }

    public boolean fireContentReady() {
        return false;
    }

    public abstract Context getContext();

    public <T> T getData(String str, Class<T> cls) {
        return null;
    }

    public Map<String, Object> getOrientation() {
        return null;
    }

    public int getStatusBarHeight() {
        return 0;
    }

    public void getTextZoom(TJTaskHandler<Float> tJTaskHandler) {
        tJTaskHandler.onComplete(Float.valueOf(1.0f));
    }

    public abstract WebView getWebView();

    public void setBackgroundColor(String str, TJTaskHandler<Boolean> tJTaskHandler) {
        tJTaskHandler.onComplete(Boolean.FALSE);
    }

    public void setCloseButtonClickable(boolean z) {
    }

    public void setCloseButtonVisible(boolean z) {
    }

    public boolean setOrientation(int i) {
        return false;
    }

    public void setTextZoom(float f) {
    }

    public void setupSdkBeacons(com.tapjoy.internal.l0 l0Var) {
    }

    public void shouldClose(boolean z) {
    }

    public boolean unsetOrientation() {
        return false;
    }
}
