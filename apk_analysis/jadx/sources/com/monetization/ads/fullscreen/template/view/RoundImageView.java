package com.monetization.ads.fullscreen.template.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.yandex.mobile.ads.R$styleable;
import defpackage.jh2;
import yads.c90;
import yads.d90;

/* JADX INFO: loaded from: classes6.dex */
public final class RoundImageView extends ImageView {
    private final c90 a;

    public RoundImageView(Context context, AttributeSet attributeSet, int i, d90 d90Var) {
        float dimensionPixelSize;
        super(context, attributeSet, i);
        d90Var.getClass();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MonetizationAdsInternalRoundImageView, i, 0);
            dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MonetizationAdsInternalRoundImageView_monetization_internal_corner_radius, 0);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            dimensionPixelSize = 0.0f;
        }
        float f = dimensionPixelSize;
        this.a = new c90(this, f, f, f, f);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        c90 c90Var = this.a;
        if (c90Var.d != null && !c90Var.c.isEmpty()) {
            canvas.clipPath(c90Var.c);
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.a.a();
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, null, 12, null);
    }

    public RoundImageView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, null, 8, null);
    }

    public /* synthetic */ RoundImageView(Context context, AttributeSet attributeSet, int i, d90 d90Var, int i2, jh2 jh2Var) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? new d90() : d90Var);
    }

    public RoundImageView(Context context) {
        this(context, null, 0, null, 14, null);
    }
}
