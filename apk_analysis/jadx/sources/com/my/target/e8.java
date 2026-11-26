package com.my.target;

import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import defpackage.nz9;

/* JADX INFO: loaded from: classes4.dex */
public final class e8 extends nz9 {
    public boolean b;

    public interface a {
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.b) {
            throw null;
        }
        return true;
    }

    public WebView getWebView() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        throw null;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        View.MeasureSpec.makeMeasureSpec(size, 1073741824);
        View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
        throw null;
    }

    public void setInteractionEnabled(boolean z) {
        this.b = z;
    }

    public void setPlayableStartInteractiveListener(a aVar) {
    }
}
