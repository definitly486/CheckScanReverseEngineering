package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.PersistableBundle;
import android.view.View;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class TJWebViewActivity extends TJActivity {
    public View e;
    public TJWebView f;
    public TJAdUnitJSBridge g;

    public class BridgeDelegate extends TJJSBridgeDelegate {
        public BridgeDelegate() {
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public boolean dismiss() {
            super.dismiss();
            TJWebViewActivity.this.finish();
            return true;
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public boolean fireContentReady() {
            super.fireContentReady();
            TJWebViewActivity.this.setProgressSpinnerVisibility(false);
            return true;
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public Context getContext() {
            return TJWebViewActivity.this;
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public Map<String, Object> getOrientation() {
            HashMap map = new HashMap();
            TJDeviceUtils tJDeviceUtils = TJDeviceUtils.INSTANCE;
            int screenWidth = tJDeviceUtils.getScreenWidth(TJWebViewActivity.this);
            int screenHeight = tJDeviceUtils.getScreenHeight(TJWebViewActivity.this);
            map.put(TJAdUnitConstants.String.ORIENTATION, tJDeviceUtils.getOrientationString(screenWidth, screenHeight));
            map.put(TJAdUnitConstants.String.WIDTH, Integer.valueOf(screenWidth));
            map.put(TJAdUnitConstants.String.HEIGHT, Integer.valueOf(screenHeight));
            return map;
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public int getStatusBarHeight() {
            Context context = getContext();
            if (context == null) {
                return 0;
            }
            return TJDeviceUtils.INSTANCE.getStatusBarHeight(context);
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public void getTextZoom(TJTaskHandler<Float> tJTaskHandler) {
            TapjoyUtil.runOnMainThread(new o0(this, tJTaskHandler));
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public WebView getWebView() {
            return TJWebViewActivity.this.f;
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public void setBackgroundColor(String str, TJTaskHandler<Boolean> tJTaskHandler) {
            TapjoyUtil.runOnMainThread(new l0(this, str, tJTaskHandler));
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public void setCloseButtonClickable(boolean z) {
            super.setCloseButtonClickable(z);
            TapjoyUtil.runOnMainThread(new n0(this, z));
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public void setCloseButtonVisible(boolean z) {
            super.setCloseButtonVisible(z);
            TapjoyUtil.runOnMainThread(new m0(this, z));
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public boolean setOrientation(int i) {
            TJWebViewActivity.this.setRequestedOrientation(i);
            return true;
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public void setTextZoom(float f) {
            TapjoyUtil.runOnMainThread(new p0(this, f));
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public void shouldClose(boolean z) {
            if (z) {
                TJWebViewActivity.this.finish();
            }
        }

        @Override // com.tapjoy.TJJSBridgeDelegate
        public boolean unsetOrientation() {
            TJWebViewActivity.this.setRequestedOrientation(-1);
            return true;
        }
    }

    @Override // com.tapjoy.TJActivity
    public final void a() {
        TJAdUnitJSBridge tJAdUnitJSBridge = this.g;
        if (tJAdUnitJSBridge == null || tJAdUnitJSBridge.closeRequested) {
            return;
        }
        TapjoyLog.d(TJAdUnitConstants.String.CLOSE_REQUESTED);
        this.g.closeRequested(Boolean.FALSE);
        new Handler(getMainLooper()).postDelayed(new k0(this), 1000L);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.g != null) {
            TJDeviceUtils tJDeviceUtils = TJDeviceUtils.INSTANCE;
            int screenWidth = tJDeviceUtils.getScreenWidth(this);
            int screenHeight = tJDeviceUtils.getScreenHeight(this);
            this.g.notifyOrientationChanged(tJDeviceUtils.getOrientationString(screenWidth, screenHeight), screenWidth, screenHeight);
            this.g.notifyThemeChanged((getResources().getConfiguration().uiMode & 48) == 32 ? TapjoyConstants.TJC_THEME_DARK : TapjoyConstants.TJC_THEME_LIGHT);
        }
    }

    @Override // com.tapjoy.TJActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        String str2;
        boolean zBooleanValue;
        Bundle extras;
        super.onCreate(bundle);
        setRequestedOrientation(TJDeviceUtils.INSTANCE.getScreenOrientation(this));
        Intent intent = getIntent();
        if (intent == null || (extras = intent.getExtras()) == null) {
            str = null;
            str2 = null;
            zBooleanValue = false;
        } else {
            String str3 = extras.containsKey("url") ? (String) intent.getExtras().get("url") : null;
            zBooleanValue = extras.containsKey(TJAdUnitConstants.String.REUSE_HTML) ? ((Boolean) intent.getExtras().get(TJAdUnitConstants.String.REUSE_HTML)).booleanValue() : false;
            str2 = extras.containsKey(TJAdUnitConstants.String.HTML) ? (String) intent.getExtras().get(TJAdUnitConstants.String.HTML) : null;
            str = str3;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        View view = new View(this);
        this.e = view;
        view.setBackgroundColor(0);
        this.a.addView(this.e, -1, -1);
        TJWebView tJWebView = new TJWebView(this);
        this.f = tJWebView;
        tJWebView.setWebViewClient(new q0(this));
        this.g = new TJAdUnitJSBridge(new BridgeDelegate());
        TJWebView tJWebView2 = this.f;
        if (zBooleanValue) {
            tJWebView2.loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
        } else {
            tJWebView2.loadUrl(str);
        }
        this.a.addView(this.f, -1, -1);
        this.a.addView(this.d);
        this.a.addView(this.c);
        setContentView(this.a, layoutParams);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        this.a.removeAllViews();
        TJWebView tJWebView = this.f;
        if (tJWebView != null) {
            tJWebView.loadUrl("about:blank");
            this.f.destroy();
            this.f = null;
        }
        TJAdUnitJSBridge tJAdUnitJSBridge = this.g;
        if (tJAdUnitJSBridge != null) {
            tJAdUnitJSBridge.destroy();
            this.g = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        TJWebView tJWebView = this.f;
        if (tJWebView != null) {
            tJWebView.onPause();
        }
        TJAdUnitJSBridge tJAdUnitJSBridge = this.g;
        if (tJAdUnitJSBridge != null) {
            tJAdUnitJSBridge.setEnabled(false);
            this.g.pause();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        TJWebView tJWebView = this.f;
        if (tJWebView != null) {
            tJWebView.onResume();
        }
        TJAdUnitJSBridge tJAdUnitJSBridge = this.g;
        if (tJAdUnitJSBridge != null) {
            tJAdUnitJSBridge.setEnabled(true);
            this.g.resume();
        }
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle, PersistableBundle persistableBundle) {
        super.onCreate(bundle, persistableBundle);
    }
}
