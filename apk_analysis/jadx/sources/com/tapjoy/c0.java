package com.tapjoy;

import android.content.Context;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import defpackage.a52;
import defpackage.e7;
import defpackage.z42;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class c0 extends TJJSBridgeDelegate {
    public final /* synthetic */ TJOfferwallDiscoverView a;

    public c0(TJOfferwallDiscoverView tJOfferwallDiscoverView) {
        this.a = tJOfferwallDiscoverView;
    }

    public final void a(TJTaskHandler tJTaskHandler) {
        Float fValueOf = Float.valueOf(1.0f);
        try {
            TJWebView tJWebView = this.a.a;
            if (tJWebView == null || tJWebView.getSettings() == null) {
                tJTaskHandler.onComplete(fValueOf);
            } else {
                tJTaskHandler.onComplete(Float.valueOf(this.a.a.getSettings().getTextZoom() / 100.0f));
            }
        } catch (Exception e) {
            TapjoyLog.d("Error getting text zoom: " + e.getMessage());
            tJTaskHandler.onComplete(fValueOf);
        }
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final boolean fireContentError(TJError tJError) {
        super.fireContentError(tJError);
        if (this.a.c == null) {
            return true;
        }
        TapjoyUtil.runOnMainThread(new z42(3, this, tJError));
        return true;
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final boolean fireContentReady() {
        super.fireContentReady();
        if (this.a.c == null) {
            return true;
        }
        TapjoyUtil.runOnMainThread(new e7(this, 3));
        return true;
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final Context getContext() {
        return this.a.a.getContext();
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final Object getData(String str, Class cls) {
        return str.equalsIgnoreCase(TJAdUnitConstants.String.HTML) ? this.a.d.b : super.getData(str, cls);
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final Map getOrientation() {
        DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
        String str = displayMetrics.widthPixels > displayMetrics.heightPixels ? TJAdUnitConstants.String.LANDSCAPE : TJAdUnitConstants.String.PORTRAIT;
        HashMap map = new HashMap();
        map.put(TJAdUnitConstants.String.ORIENTATION, str);
        map.put(TJAdUnitConstants.String.WIDTH, Integer.valueOf(this.a.getWidth()));
        map.put(TJAdUnitConstants.String.HEIGHT, Integer.valueOf(this.a.getHeight()));
        return map;
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final void getTextZoom(TJTaskHandler tJTaskHandler) {
        TapjoyUtil.runOnMainThread(new a52(3, this, tJTaskHandler));
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final WebView getWebView() {
        return this.a.a;
    }

    @Override // com.tapjoy.TJJSBridgeDelegate
    public final void setTextZoom(final float f) {
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: np9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(f);
            }
        });
    }

    public final void a(float f) {
        TJWebView tJWebView = this.a.a;
        if (tJWebView == null || tJWebView.getSettings() == null) {
            return;
        }
        this.a.a.getSettings().setTextZoom((int) (f * 100.0f));
    }

    public final /* synthetic */ void a() {
        this.a.c.contentReady();
    }

    public final /* synthetic */ void a(TJError tJError) {
        this.a.c.contentError(tJError);
    }
}
