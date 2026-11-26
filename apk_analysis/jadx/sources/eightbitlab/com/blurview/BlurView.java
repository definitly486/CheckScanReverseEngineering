package eightbitlab.com.blurview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import defpackage.d27;
import defpackage.gk0;
import defpackage.h27;
import defpackage.hk0;
import defpackage.qe6;
import defpackage.rw6;
import defpackage.wn5;

/* JADX INFO: loaded from: classes5.dex */
public class BlurView extends FrameLayout {
    public hk0 b;
    public int c;

    public BlurView(Context context) {
        super(context);
        this.b = new wn5(0);
        a(null, 0);
    }

    private gk0 getBlurAlgorithm() {
        return Build.VERSION.SDK_INT >= 31 ? new d27() : new h27(getContext());
    }

    public final void a(AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, rw6.a, i, 0);
        this.c = typedArrayObtainStyledAttributes.getColor(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void b(ViewGroup viewGroup) {
        gk0 blurAlgorithm = getBlurAlgorithm();
        this.b.destroy();
        this.b = new qe6(this, viewGroup, this.c, blurAlgorithm);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        if (this.b.draw(canvas)) {
            super.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isHardwareAccelerated()) {
            this.b.c(true);
        } else {
            Log.e("BlurView", "BlurView can't be used in not hardware-accelerated window!");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.b.c(false);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.b.b();
    }

    public BlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new wn5(0);
        a(attributeSet, 0);
    }

    public BlurView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new wn5(0);
        a(attributeSet, i);
    }
}
