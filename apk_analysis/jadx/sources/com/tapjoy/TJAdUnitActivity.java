package com.tapjoy;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes4.dex */
public class TJAdUnitActivity extends TJActivity {
    public static TJAdUnitActivity i;
    public TJAdUnit f;
    public TJPlacementData g;
    public final Handler e = new Handler(Looper.getMainLooper());
    public boolean h = false;

    public final void a(boolean z) {
        TJAdUnit tJAdUnit = this.f;
        if (tJAdUnit == null) {
            finish();
        } else if (!tJAdUnit.getCloseRequested()) {
            TapjoyLog.d(TJAdUnitConstants.String.CLOSE_REQUESTED);
            this.f.closeRequested(z);
            this.e.postDelayed(new l(this), 1000L);
        }
        if (this.g != null) {
            TJMemoryDataStorage.getInstance().remove(this.g.getPlacementName());
        }
    }

    public final void b() {
        TJPlacement tJPlacementA;
        i = null;
        this.h = true;
        TJAdUnit tJAdUnit = this.f;
        if (tJAdUnit != null) {
            tJAdUnit.destroy();
        }
        TJPlacementData tJPlacementData = this.g;
        if (tJPlacementData != null) {
            if (tJPlacementData.getContentViewId() != null) {
                TapjoyConnectCore.getInstance().viewDidClose(this.g.getContentViewId());
            }
            TJCorePlacement tJCorePlacementA = TJPlacementManager.a(this.g.getKey());
            if (tJCorePlacementA == null || (tJPlacementA = tJCorePlacementA.a("SHOW")) == null || tJPlacementA.getListener() == null) {
                return;
            }
            TapjoyLog.i("Content dismissed for placement " + tJCorePlacementA.f);
            if (tJPlacementA.getListener() != null) {
                tJPlacementA.getListener().onContentDismiss(tJPlacementA);
            }
        }
    }

    @Override // com.tapjoy.TJActivity, android.view.View.OnClickListener
    public void onClick(View view) {
        a(false);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TJAdUnit tJAdUnit = this.f;
        if (tJAdUnit != null) {
            tJAdUnit.notifyOrientationChanged();
            this.f.notifyThemeChanged();
        }
    }

    @Override // com.tapjoy.TJActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TJAdUnit tJAdUnit;
        TapjoyLog.d("TJAdUnitActivity onCreate: " + bundle);
        super.onCreate(bundle);
        i = this;
        Bundle extras = getIntent().getExtras();
        String string = extras != null ? extras.getString(TJAdUnitConstants.EXTRA_TJ_PLACEMENT_NAME) : null;
        TJPlacementData tJPlacementData = string != null ? (TJPlacementData) TJMemoryDataStorage.getInstance().get(string) : null;
        this.g = tJPlacementData;
        if (tJPlacementData == null) {
            TapjoyLog.e("Failed to launch AdUnit Activity");
            finish();
            return;
        }
        if (tJPlacementData.getContentViewId() != null) {
            TapjoyConnectCore.getInstance().viewWillOpen(this.g.getContentViewId());
        }
        if (TJPlacementManager.a(this.g.getKey()) != null) {
            tJAdUnit = TJPlacementManager.a(this.g.getKey()).getAdUnit();
            this.f = tJAdUnit;
        } else {
            tJAdUnit = new TJAdUnit();
            this.f = tJAdUnit;
        }
        if (!tJAdUnit.hasCalledLoad()) {
            TapjoyLog.d("No content loaded for ad unit -- loading now");
            this.f.load(this.g, false, this);
        }
        this.f.setAdUnitActivity(this);
        try {
            setRequestedOrientation(TJDeviceUtils.INSTANCE.getScreenOrientation(this));
            View backgroundView = this.f.getBackgroundView();
            backgroundView.setLayoutParams(this.b);
            if (backgroundView.getParent() != null) {
                ((ViewGroup) backgroundView.getParent()).removeView(backgroundView);
            }
            TJWebView webView = this.f.getWebView();
            webView.setLayoutParams(this.b);
            if (webView.getParent() != null) {
                ((ViewGroup) webView.getParent()).removeView(webView);
            }
            this.a.addView(backgroundView);
            this.a.addView(webView);
            if (this.g.hasProgressSpinner()) {
                setProgressSpinnerVisibility(true);
            } else {
                setProgressSpinnerVisibility(false);
            }
            this.a.addView(this.d);
            this.a.addView(this.c);
            setContentView(this.a);
            this.f.setVisible(true);
        } catch (Exception e) {
            TapjoyLog.e(e.getMessage());
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (!this.h) {
            b();
        }
        i = null;
    }

    @Override // android.app.Activity
    public final void onPause() {
        TJPlacementData tJPlacementData;
        super.onPause();
        TapjoyLog.d("onPause");
        TJAdUnit tJAdUnit = this.f;
        if (tJAdUnit != null) {
            tJAdUnit.pause();
        } else {
            finish();
        }
        if (isFinishing() && (tJPlacementData = this.g) != null && tJPlacementData.shouldHandleDismissOnPause()) {
            TapjoyLog.d("is Finishing");
            b();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        TapjoyLog.d("onResume");
        super.onResume();
        TJAdUnit tJAdUnit = this.f;
        if (tJAdUnit != null) {
            tJAdUnit.resume();
        }
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        TapjoyLog.d("onStart");
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        TapjoyLog.d("onStop");
    }

    @Override // com.tapjoy.TJActivity
    public final void a() {
        a(false);
    }
}
