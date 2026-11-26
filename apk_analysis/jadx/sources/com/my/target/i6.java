package com.my.target;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.navigation.NavigationBarView;
import defpackage.ko9;
import defpackage.l3a;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public final class i6 extends FrameLayout {
    public static final int f = View.generateViewId();
    public final zh b;
    public final TextView c;
    public final zh d;
    public final LinearLayout e;

    public i6(Context context) {
        super(context);
        ko9 ko9Var = new ko9(context);
        yu9 yu9Var = new yu9(context);
        zh zhVar = new zh(context);
        zhVar.setId(f);
        int i = yu9.x;
        SparseIntArray sparseIntArray = yu9Var.a;
        zhVar.setBackgroundColor(sparseIntArray.get(i));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        if (context.getResources().getConfiguration().orientation == 2) {
            layoutParams.gravity = NavigationBarView.ITEM_GRAVITY_START_CENTER;
        } else {
            layoutParams.gravity = 49;
        }
        zhVar.setScaleType(ImageView.ScaleType.FIT_XY);
        zhVar.setLayoutParams(layoutParams);
        this.b = zhVar;
        l3a.n(zhVar, "image_view");
        addView(zhVar);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 8388693;
        int i2 = ko9.g;
        SparseIntArray sparseIntArray2 = ko9Var.a;
        int i3 = sparseIntArray2.get(i2);
        layoutParams2.setMargins(i3, i3, i3, i3);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(sparseIntArray.get(yu9.d));
        gradientDrawable.setCornerRadius(sparseIntArray2.get(ko9.v));
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setGravity(16);
        int i4 = sparseIntArray2.get(i2);
        linearLayout.setPadding(i4, i4, i4, i4);
        linearLayout.setLayoutParams(layoutParams2);
        this.e = linearLayout;
        zh zhVar2 = new zh(context);
        int i5 = sparseIntArray2.get(ko9.n);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i5, i5);
        layoutParams3.setMarginEnd(sparseIntArray2.get(i2));
        zhVar2.setLayoutParams(layoutParams3);
        this.d = zhVar2;
        linearLayout.addView(zhVar2);
        l3a.n(zhVar2, "icon_image_view");
        TextView textView = new TextView(context);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 16;
        textView.setTextColor(-1);
        textView.setLayoutParams(layoutParams4);
        textView.setTextSize(sparseIntArray2.get(ko9.R));
        this.c = textView;
        l3a.n(textView, "domain_text_view");
        linearLayout.addView(textView);
        l3a.n(linearLayout, "domain_container");
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams5.gravity = 80;
        linearLayout2.setLayoutParams(layoutParams5);
        linearLayout2.addView(linearLayout);
        linearLayout.setVisibility(8);
        l3a.n(linearLayout2, "bottom_layout");
        addView(linearLayout2);
    }

    public LinearLayout getDomainContainer() {
        return this.e;
    }

    public TextView getDomainTextView() {
        return this.c;
    }

    public zh getImageView() {
        return this.b;
    }

    public zh getLogoImageView() {
        return this.d;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        zh zhVar = this.b;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) zhVar.getLayoutParams();
        if (configuration.orientation == 2) {
            layoutParams.gravity = NavigationBarView.ITEM_GRAVITY_START_CENTER;
        } else {
            layoutParams.gravity = 49;
        }
        zhVar.setLayoutParams(layoutParams);
    }
}
