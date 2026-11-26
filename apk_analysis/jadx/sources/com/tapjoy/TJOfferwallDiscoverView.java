package com.tapjoy;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.tapjoy.internal.p1;
import com.tapjoy.internal.s2;
import defpackage.sr4;
import defpackage.wt;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class TJOfferwallDiscoverView extends FrameLayout {
    public TJWebView a;
    public TJAdUnitJSBridge b;
    public TJOfferwallDiscoverListener c;
    public s2 d;
    public final ExecutorService e;
    public boolean f;
    public boolean g;

    public TJOfferwallDiscoverView(Context context) {
        super(context);
        this.e = Executors.newSingleThreadExecutor();
        this.f = false;
        this.g = false;
    }

    public final /* synthetic */ void a() {
        removeAllViews();
        TJWebView tJWebView = this.a;
        if (tJWebView != null) {
            tJWebView.loadUrl("about:blank");
            this.a.destroy();
            this.b.destroy();
            this.a = null;
            this.b = null;
        }
        this.f = false;
        this.g = false;
    }

    public void clearContent() {
        TapjoyUtil.runOnMainThread(new sr4(this, 3));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchVisibilityChanged(View view, int i) {
        super.dispatchVisibilityChanged(view, i);
        TJAdUnitJSBridge tJAdUnitJSBridge = this.b;
        if (i == 0) {
            if (tJAdUnitJSBridge != null) {
                tJAdUnitJSBridge.resume();
            }
        } else if (tJAdUnitJSBridge != null) {
            tJAdUnitJSBridge.pause();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        TJAdUnitJSBridge tJAdUnitJSBridge = this.b;
        if (tJAdUnitJSBridge == null || this.f || !this.g) {
            return;
        }
        tJAdUnitJSBridge.display();
        this.f = true;
    }

    public void requestContent(Context context, String str) {
        if (!TapjoyConnectCore.getInstance().isConnected()) {
            TJOfferwallDiscoverListener tJOfferwallDiscoverListener = this.c;
            if (tJOfferwallDiscoverListener != null) {
                tJOfferwallDiscoverListener.requestFailure(new TJError(-1, "Tapjoy SDK is not connected"));
                return;
            }
            return;
        }
        if (context == null) {
            TJOfferwallDiscoverListener tJOfferwallDiscoverListener2 = this.c;
            if (tJOfferwallDiscoverListener2 != null) {
                tJOfferwallDiscoverListener2.requestFailure(new TJError(0, "Context is null"));
            }
            clearContent();
            return;
        }
        if (str == null || str.length() == 0) {
            TJOfferwallDiscoverListener tJOfferwallDiscoverListener3 = this.c;
            if (tJOfferwallDiscoverListener3 != null) {
                tJOfferwallDiscoverListener3.requestFailure(new TJError(0, "Placement is null"));
            }
            clearContent();
            return;
        }
        clearContent();
        TJWebView tJWebView = new TJWebView(context);
        this.a = tJWebView;
        tJWebView.setWebViewClient(new d0(this));
        this.b = new TJAdUnitJSBridge(new c0(this));
        addView(this.a, -1, -1);
        this.e.submit(new wt(2, this, str));
    }

    public void setListener(TJOfferwallDiscoverListener tJOfferwallDiscoverListener) {
        this.c = tJOfferwallDiscoverListener;
    }

    public TJOfferwallDiscoverView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = Executors.newSingleThreadExecutor();
        this.f = false;
        this.g = false;
    }

    public TJOfferwallDiscoverView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = Executors.newSingleThreadExecutor();
        this.f = false;
        this.g = false;
    }

    public TJOfferwallDiscoverView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.e = Executors.newSingleThreadExecutor();
        this.f = false;
        this.g = false;
    }

    public final /* synthetic */ void a(String str) {
        new p1().a(str, new b0(this));
    }
}
