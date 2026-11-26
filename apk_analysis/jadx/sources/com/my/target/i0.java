package com.my.target;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.SparseIntArray;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.ko9;
import defpackage.l3a;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public final class i0 extends LinearLayout {
    public final ImageView b;
    public final TextView c;

    public i0(Context context) {
        super(context);
        ko9 ko9Var = new ko9(context);
        yu9 yu9Var = new yu9(context);
        int i = ko9.i;
        SparseIntArray sparseIntArray = ko9Var.a;
        int i2 = sparseIntArray.get(i);
        int i3 = ko9.g;
        int i4 = sparseIntArray.get(i3);
        setPadding(i2, i4, i2, i4);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i5 = sparseIntArray.get(ko9.k);
        layoutParams.setMargins(i5, i5, i5, i5);
        setLayoutParams(layoutParams);
        setOrientation(0);
        setGravity(16);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(yu9Var.a.get(yu9.d));
        gradientDrawable.setCornerRadius(sparseIntArray.get(ko9.y));
        setBackground(gradientDrawable);
        ImageView imageView = new ImageView(context);
        int i6 = sparseIntArray.get(ko9.m);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i6, i6);
        layoutParams2.setMarginEnd(sparseIntArray.get(i3));
        imageView.setLayoutParams(layoutParams2);
        imageView.setColorFilter(-1);
        this.b = imageView;
        l3a.n(imageView, "ads_icon");
        addView(imageView);
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setTextSize(sparseIntArray.get(ko9.Y));
        textView.setTextColor(-1);
        textView.setAllCaps(true);
        this.c = textView;
        l3a.n(textView, "age_restrictions_text_view");
        addView(textView);
    }

    public ImageView getAdsIcon() {
        return this.b;
    }

    public TextView getAgeRestrictionsTextView() {
        return this.c;
    }
}
