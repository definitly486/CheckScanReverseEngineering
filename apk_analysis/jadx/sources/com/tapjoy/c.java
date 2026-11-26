package com.tapjoy;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements Runnable {
    public final /* synthetic */ Context a;
    public final /* synthetic */ TJPlacementData b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ TJAdUnit d;

    public c(TJAdUnit tJAdUnit, Context context, TJPlacementData tJPlacementData, boolean z) {
        this.d = tJAdUnit;
        this.a = context;
        this.b = tJPlacementData;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        TJAdUnit tJAdUnit = this.d;
        Context context = this.a;
        if (Looper.myLooper() != Looper.getMainLooper() || tJAdUnit.i || context == null) {
            z = tJAdUnit.i;
        } else {
            TapjoyLog.d("Constructing ad unit");
            tJAdUnit.i = true;
            try {
                tJAdUnit.d = new View(context);
                TJWebView tJWebView = new TJWebView(context);
                tJAdUnit.e = tJWebView;
                tJWebView.setWebViewClient(tJAdUnit.m);
                tJAdUnit.e.setWebChromeClient(tJAdUnit.n);
                tJAdUnit.c = new TJAdUnitJSBridge(new k(tJAdUnit));
                if (context instanceof TJAdUnitActivity) {
                    tJAdUnit.setAdUnitActivity((TJAdUnitActivity) context);
                }
                tJAdUnit.l = new TapjoyCache(context);
                z = tJAdUnit.i;
            } catch (Exception e) {
                TapjoyLog.w(e.getMessage());
                z = false;
            }
        }
        if (z) {
            TapjoyLog.i("Loading ad unit content");
            this.d.g = true;
            try {
                boolean zIsEmpty = TextUtils.isEmpty(this.b.getRedirectURL());
                TJPlacementData tJPlacementData = this.b;
                if (!zIsEmpty) {
                    boolean zIsPreloadDisabled = tJPlacementData.isPreloadDisabled();
                    TJAdUnit tJAdUnit2 = this.d;
                    if (zIsPreloadDisabled) {
                        tJAdUnit2.e.postUrl(this.b.getRedirectURL(), null);
                    } else {
                        tJAdUnit2.e.loadUrl(this.b.getRedirectURL());
                    }
                } else if (tJPlacementData.getBaseURL() == null || this.b.getHttpResponse() == null) {
                    TapjoyLog.e("Error loading ad unit content");
                    this.d.g = false;
                } else {
                    this.d.e.loadDataWithBaseURL(this.b.getBaseURL(), this.b.getHttpResponse(), "text/html", "utf-8", null);
                }
            } catch (Exception unused) {
                TapjoyLog.e("Error loading ad unit content");
                this.d.g = false;
            }
            TJAdUnit tJAdUnit3 = this.d;
            tJAdUnit3.h = tJAdUnit3.g && this.c;
        }
    }
}
