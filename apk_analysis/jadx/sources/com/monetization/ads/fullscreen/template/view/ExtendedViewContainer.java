package com.monetization.ads.fullscreen.template.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.yandex.mobile.ads.R$styleable;
import defpackage.jh2;
import yads.c90;
import yads.e50;
import yads.rx3;
import yads.sx3;
import yads.uk5;
import yads.vx3;
import yads.wx3;

/* JADX INFO: loaded from: classes6.dex */
public final class ExtendedViewContainer extends FrameLayout {
    private final c90 a;
    private final wx3 b;
    private wx3 c;

    public ExtendedViewContainer(Context context, AttributeSet attributeSet, int i) {
        wx3 uk5Var;
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int dimensionPixelSize3;
        int dimensionPixelSize4;
        super(context, attributeSet, i);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MonetizationAdsInternalExtendedContainer, i, 0);
            int dimensionPixelSize5 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_corner_radius, 0);
            dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_top_left_corner_radius, dimensionPixelSize5);
            dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_top_right_corner_radius, dimensionPixelSize5);
            dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_bottom_right_corner_radius, dimensionPixelSize5);
            dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_bottom_left_corner_radius, dimensionPixelSize5);
            uk5Var = new e50(new sx3(this, typedArrayObtainStyledAttributes.getFloat(R$styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_max_screen_width, 1.0f)), new rx3(this, typedArrayObtainStyledAttributes.getFloat(R$styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_max_screen_height, 1.0f)));
            this.b = uk5Var;
            typedArrayObtainStyledAttributes.recycle();
        } else {
            uk5Var = new uk5();
            this.b = uk5Var;
            dimensionPixelSize = 0;
            dimensionPixelSize2 = 0;
            dimensionPixelSize3 = 0;
            dimensionPixelSize4 = 0;
        }
        this.c = uk5Var;
        this.a = new c90(this, dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize4, dimensionPixelSize);
        setWillNotDraw(false);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        c90 c90Var = this.a;
        if (c90Var.d != null && !c90Var.c.isEmpty()) {
            canvas.clipPath(c90Var.c);
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        vx3 vx3VarA = this.c.a(i, i2);
        super.onMeasure(vx3VarA.a, vx3VarA.b);
        this.a.a();
    }

    public final void setMeasureSpecProvider(wx3 wx3Var) {
        this.c = new e50(this.b, wx3Var);
        requestLayout();
        invalidate();
    }

    public ExtendedViewContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ ExtendedViewContainer(Context context, AttributeSet attributeSet, int i, int i2, jh2 jh2Var) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public ExtendedViewContainer(Context context) {
        this(context, null, 0, 6, null);
    }
}
