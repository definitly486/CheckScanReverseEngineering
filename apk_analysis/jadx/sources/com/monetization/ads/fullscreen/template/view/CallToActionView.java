package com.monetization.ads.fullscreen.template.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R$styleable;
import defpackage.jh2;
import yads.pw5;

/* JADX INFO: loaded from: classes6.dex */
public final class CallToActionView extends Button {
    private String a;

    public CallToActionView(Context context, AttributeSet attributeSet, int i) {
        int i2;
        super(context, attributeSet, i);
        Drawable drawable = null;
        int i3 = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MonetizationAdsInternalIconButton, i, 0);
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MonetizationAdsInternalIconButton_monetization_internal_icon, 0);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MonetizationAdsInternalIconButton_monetization_internal_icon_size, 0);
            int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MonetizationAdsInternalIconButton_monetization_internal_icon_offset, 0);
            typedArrayObtainStyledAttributes.recycle();
            drawable = resourceId != 0 ? ContextCompat.getDrawable(context, resourceId) : null;
            i2 = dimensionPixelSize2;
            i3 = dimensionPixelSize;
        } else {
            i2 = 0;
        }
        setSpannableFactory(new pw5(drawable, i3, i2));
    }

    public final void a() {
        setSpannableFactory(Spannable.Factory.getInstance());
        setText(this.a);
    }

    @Override // android.widget.TextView
    public final CharSequence getText() {
        return this.a;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (charSequence instanceof String) {
            this.a = (String) charSequence;
        }
        super.setText(this.a, TextView.BufferType.SPANNABLE);
    }

    public CallToActionView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ CallToActionView(Context context, AttributeSet attributeSet, int i, int i2, jh2 jh2Var) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public CallToActionView(Context context) {
        this(context, null, 0, 6, null);
    }
}
