package com.my.target;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.my.target.yc;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public class yc extends h1 {
    public static final /* synthetic */ int i = 0;
    public a e;
    public boolean f;
    public boolean g;
    public int h;

    public interface a {
    }

    public static class b extends GestureDetector {
        public final yc a;
        public defpackage.k4 b;

        public b(Context context, yc ycVar) {
            super(context, new GestureDetector.SimpleOnGestureListener());
            this.a = ycVar;
            setIsLongpressEnabled(false);
        }
    }

    public yc(Context context) {
        super(context);
        this.f = getVisibility() == 0;
        WebSettings settings = getSettings();
        if (settings != null) {
            settings.setJavaScriptEnabled(true);
            settings.setDomStorageEnabled(true);
            settings.setAllowFileAccess(false);
            settings.setAllowContentAccess(false);
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
        }
        final b bVar = new b(getContext(), this);
        bVar.b = new defpackage.k4(this, 7);
        setOnTouchListener(new View.OnTouchListener() { // from class: yha
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                yc ycVar;
                int i2 = yc.i;
                int action = motionEvent.getAction();
                yc.b bVar2 = bVar;
                if (action == 0) {
                    bVar2.onTouchEvent(motionEvent);
                    return false;
                }
                if (action == 1) {
                    if (bVar2.b == null) {
                        y14.r(null, "MraidWebView$ViewGestureDetector: View's onUserClick() is not registered");
                        return false;
                    }
                    y14.r(null, "MraidWebView$ViewGestureDetector: Gestures - user clicked");
                    ((yc) bVar2.b.c).g = true;
                    return false;
                }
                if (action != 2 || (ycVar = bVar2.a) == null) {
                    return false;
                }
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (x < 0.0f || x > ycVar.getWidth() || y < 0.0f || y > ycVar.getHeight()) {
                    return false;
                }
                bVar2.onTouchEvent(motionEvent);
                return false;
            }
        });
    }

    public final void d(boolean z) {
        y14.r(null, "MraidWebView: Pause, finishing " + z);
        WebView webView = this.b;
        if (z) {
            if (webView != null) {
                try {
                    webView.stopLoading();
                } catch (Throwable th) {
                    h1.c(th);
                }
            }
            b("");
        }
        if (webView == null) {
            return;
        }
        try {
            webView.onPause();
        } catch (Throwable th2) {
            h1.c(th2);
        }
    }

    @Override // com.my.target.h1, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        w0 w0Var;
        int i4 = ((float) View.MeasureSpec.getSize(i2)) / ((float) View.MeasureSpec.getSize(i3)) > 1.0f ? 2 : 1;
        if (i4 != this.h) {
            this.h = i4;
            a aVar = this.e;
            if (aVar != null && (w0Var = a2.this.c) != null) {
                w0Var.j();
            }
        }
        super.onMeasure(i2, i3);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i2) {
        w0 w0Var;
        super.onVisibilityChanged(view, i2);
        boolean z = i2 == 0;
        if (z != this.f) {
            this.f = z;
            a aVar = this.e;
            if (aVar == null || (w0Var = a2.this.c) == null) {
                return;
            }
            w0Var.f.f(z);
        }
    }

    public void setClicked(boolean z) {
        this.g = z;
    }

    public void setVisibilityChangedListener(a aVar) {
        this.e = aVar;
    }
}
