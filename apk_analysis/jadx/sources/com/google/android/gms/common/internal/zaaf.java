package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.gms.common.util.DeviceProperties;
import defpackage.ag;
import defpackage.ah;
import defpackage.r01;

/* JADX INFO: loaded from: classes4.dex */
public final class zaaf extends Button {
    public zaaf(Context context, AttributeSet attributeSet) {
        super(context, null, R.attr.buttonStyle);
    }

    public static final int a(int i, int i2, int i3, int i4) {
        if (i == 0) {
            return i2;
        }
        if (i == 1) {
            return i3;
        }
        if (i == 2) {
            return i4;
        }
        ah.f(ag.d(new StringBuilder(String.valueOf(i).length() + 22), "Unknown color scheme: ", i));
        return 0;
    }

    public final void zaa(Resources resources, int i, int i2) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i3 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i3);
        setMinWidth(i3);
        int i4 = com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_dark;
        int i5 = com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_light;
        int iA = a(i2, i4, i5, i5);
        int i6 = com.google.android.gms.base.R.drawable.common_google_signin_btn_text_dark;
        int i7 = com.google.android.gms.base.R.drawable.common_google_signin_btn_text_light;
        int iA2 = a(i2, i6, i7, i7);
        if (i == 0 || i == 1) {
            iA = iA2;
        } else if (i != 2) {
            r01.d(String.valueOf(i).length() + 21, i, "Unknown button size: ");
            return;
        }
        Drawable drawableWrap = DrawableCompat.wrap(resources.getDrawable(iA));
        DrawableCompat.setTintList(drawableWrap, resources.getColorStateList(com.google.android.gms.base.R.color.common_google_signin_btn_tint));
        DrawableCompat.setTintMode(drawableWrap, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(drawableWrap);
        int i8 = com.google.android.gms.base.R.color.common_google_signin_btn_text_dark;
        int i9 = com.google.android.gms.base.R.color.common_google_signin_btn_text_light;
        setTextColor((ColorStateList) Preconditions.checkNotNull(resources.getColorStateList(a(i2, i8, i9, i9))));
        if (i == 0) {
            setText(resources.getString(com.google.android.gms.base.R.string.common_signin_button_text));
        } else if (i == 1) {
            setText(resources.getString(com.google.android.gms.base.R.string.common_signin_button_text_long));
        } else {
            if (i != 2) {
                r01.d(String.valueOf(i).length() + 21, i, "Unknown button size: ");
                return;
            }
            setText((CharSequence) null);
        }
        setTransformationMethod(null);
        if (DeviceProperties.isWearable(getContext())) {
            setGravity(19);
        }
    }
}
