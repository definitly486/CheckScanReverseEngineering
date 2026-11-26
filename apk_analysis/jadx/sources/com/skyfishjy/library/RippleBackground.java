package com.skyfishjy.library;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.RelativeLayout;
import com.warefly.checkscan.R;
import defpackage.fg;
import defpackage.xw6;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class RippleBackground extends RelativeLayout {
    public int b;
    public float c;
    public float d;
    public int e;
    public int f;
    public int g;
    public float h;
    public int i;
    public Paint j;
    public AnimatorSet k;
    public ArrayList<Animator> l;
    public RelativeLayout.LayoutParams m;
    public final ArrayList<a> n;

    public class a extends View {
        public a(Context context) {
            super(context);
            setVisibility(4);
        }

        @Override // android.view.View
        public final void onDraw(Canvas canvas) {
            float fMin = Math.min(getWidth(), getHeight()) / 2;
            RippleBackground rippleBackground = RippleBackground.this;
            canvas.drawCircle(fMin, fMin, fMin - rippleBackground.c, rippleBackground.j);
        }
    }

    public RippleBackground(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.n = new ArrayList<>();
        a(context, attributeSet);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        if (isInEditMode()) {
            return;
        }
        if (attributeSet == null) {
            fg.c("Attributes should be provided to this view,");
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, xw6.a);
        this.b = typedArrayObtainStyledAttributes.getColor(0, getResources().getColor(R.color.rippelColor));
        this.c = typedArrayObtainStyledAttributes.getDimension(5, getResources().getDimension(R.dimen.rippleStrokeWidth));
        this.d = typedArrayObtainStyledAttributes.getDimension(2, getResources().getDimension(R.dimen.rippleRadius));
        this.e = typedArrayObtainStyledAttributes.getInt(1, 3000);
        this.f = typedArrayObtainStyledAttributes.getInt(3, 6);
        this.h = typedArrayObtainStyledAttributes.getFloat(4, 6.0f);
        this.i = typedArrayObtainStyledAttributes.getInt(6, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.g = this.e / this.f;
        Paint paint = new Paint();
        this.j = paint;
        paint.setAntiAlias(true);
        if (this.i == 0) {
            this.c = 0.0f;
            this.j.setStyle(Paint.Style.FILL);
        } else {
            this.j.setStyle(Paint.Style.STROKE);
        }
        this.j.setColor(this.b);
        int i = (int) ((this.d + this.c) * 2.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        this.m = layoutParams;
        layoutParams.addRule(13, -1);
        AnimatorSet animatorSet = new AnimatorSet();
        this.k = animatorSet;
        animatorSet.setDuration(this.e);
        this.k.setInterpolator(new AccelerateDecelerateInterpolator());
        this.l = new ArrayList<>();
        for (int i2 = 0; i2 < this.f; i2++) {
            a aVar = new a(getContext());
            addView(aVar, this.m);
            this.n.add(aVar);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(aVar, "ScaleX", 1.0f, this.h);
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setRepeatMode(1);
            objectAnimatorOfFloat.setStartDelay(this.g * i2);
            this.l.add(objectAnimatorOfFloat);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(aVar, "ScaleY", 1.0f, this.h);
            objectAnimatorOfFloat2.setRepeatCount(-1);
            objectAnimatorOfFloat2.setRepeatMode(1);
            objectAnimatorOfFloat2.setStartDelay(this.g * i2);
            this.l.add(objectAnimatorOfFloat2);
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(aVar, "Alpha", 1.0f, 0.0f);
            objectAnimatorOfFloat3.setRepeatCount(-1);
            objectAnimatorOfFloat3.setRepeatMode(1);
            objectAnimatorOfFloat3.setStartDelay(this.g * i2);
            this.l.add(objectAnimatorOfFloat3);
        }
        this.k.playTogether(this.l);
    }

    public RippleBackground(Context context) {
        super(context);
        this.n = new ArrayList<>();
    }

    public RippleBackground(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.n = new ArrayList<>();
        a(context, attributeSet);
    }
}
