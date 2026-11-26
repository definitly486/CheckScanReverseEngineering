package com.warefly.checkscan.shimmer;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import defpackage.ku7;
import defpackage.pw6;

/* JADX INFO: loaded from: classes5.dex */
public class ShimmerFrameLayout extends FrameLayout {
    public final Paint b;
    public final ku7 c;
    public final boolean d;

    public ShimmerFrameLayout(Context context) {
        super(context);
        this.b = new Paint();
        this.c = new ku7();
        this.d = true;
        a(context, null);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        a.b c0174a;
        setWillNotDraw(false);
        this.c.setCallback(this);
        if (attributeSet == null) {
            b(new a.C0174a().a());
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, pw6.a, 0, 0);
        try {
            if (typedArrayObtainStyledAttributes.hasValue(4) && typedArrayObtainStyledAttributes.getBoolean(4, false)) {
                c0174a = new a.c();
                c0174a.a.p = false;
            } else {
                c0174a = new a.C0174a();
            }
            b(c0174a.b(typedArrayObtainStyledAttributes).a());
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void b(a aVar) {
        boolean zIsStarted;
        ku7 ku7Var = this.c;
        ku7Var.f = aVar;
        if (aVar != null) {
            ku7Var.b.setXfermode(new PorterDuffXfermode(ku7Var.f.p ? PorterDuff.Mode.DST_IN : PorterDuff.Mode.SRC_IN));
        }
        ku7Var.b();
        if (ku7Var.f != null) {
            ValueAnimator valueAnimator = ku7Var.e;
            if (valueAnimator != null) {
                zIsStarted = valueAnimator.isStarted();
                ku7Var.e.cancel();
                ku7Var.e.removeAllUpdateListeners();
            } else {
                zIsStarted = false;
            }
            a aVar2 = ku7Var.f;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, (aVar2.t / aVar2.s) + 1.0f);
            ku7Var.e = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setRepeatMode(ku7Var.f.r);
            ku7Var.e.setRepeatCount(ku7Var.f.q);
            ValueAnimator valueAnimator2 = ku7Var.e;
            a aVar3 = ku7Var.f;
            valueAnimator2.setDuration(aVar3.s + aVar3.t);
            ku7Var.e.addUpdateListener(ku7Var.a);
            if (zIsStarted) {
                ku7Var.e.start();
            }
        }
        ku7Var.invalidateSelf();
        if (aVar == null || !aVar.n) {
            setLayerType(0, null);
        } else {
            setLayerType(2, this.b);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.d) {
            this.c.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.c.a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ku7 ku7Var = this.c;
        ValueAnimator valueAnimator = ku7Var.e;
        if (valueAnimator == null || !valueAnimator.isStarted()) {
            return;
        }
        ku7Var.e.cancel();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.c.setBounds(0, 0, getWidth(), getHeight());
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.c;
    }

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Paint();
        this.c = new ku7();
        this.d = true;
        a(context, attributeSet);
    }

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new Paint();
        this.c = new ku7();
        this.d = true;
        a(context, attributeSet);
    }
}
