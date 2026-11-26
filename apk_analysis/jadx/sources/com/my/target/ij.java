package com.my.target;

import android.content.Context;
import android.util.SparseIntArray;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.ko9;
import defpackage.kv9;
import defpackage.l3a;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public final class ij extends LinearLayout {
    public final ko9 b;
    public final yu9 c;
    public final zh d;
    public final TextView e;
    public final TextView f;
    public final TextView g;
    public final zh h;
    public final r1 i;

    public ij(Context context) {
        super(context);
        ko9 ko9Var = new ko9(context);
        this.b = ko9Var;
        yu9 yu9Var = new yu9(context);
        this.c = yu9Var;
        setOrientation(0);
        setGravity(16);
        setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        zh zhVar = new zh(context);
        int i = ko9.y;
        SparseIntArray sparseIntArray = ko9Var.a;
        int i2 = sparseIntArray.get(i);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
        int i3 = sparseIntArray.get(ko9.m);
        int i4 = sparseIntArray.get(ko9.n);
        layoutParams.setMargins(i4, i4, i3, i4);
        zhVar.setLayoutParams(layoutParams);
        zhVar.setBackground(yu9Var.a(sparseIntArray.get(ko9.d) / 2.0f));
        this.d = zhVar;
        l3a.n(zhVar, "logo_icon");
        addView(zhVar);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.weight = 1.0f;
        linearLayout.setLayoutParams(layoutParams2);
        TextView textView = new TextView(context);
        textView.setTextSize(sparseIntArray.get(ko9.O));
        int i5 = yu9.s;
        SparseIntArray sparseIntArray2 = yu9Var.a;
        textView.setTextColor(sparseIntArray2.get(i5));
        textView.setTypeface(textView.getTypeface(), 1);
        this.e = textView;
        l3a.n(textView, "title_text_view");
        linearLayout.addView(textView);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout2.setGravity(16);
        linearLayout2.setOrientation(0);
        TextView textViewA = a(context);
        this.f = textViewA;
        linearLayout2.addView(textViewA);
        TextView textViewA2 = a(context);
        textViewA2.setText("·");
        linearLayout2.addView(textViewA2);
        TextView textViewA3 = a(context);
        this.g = textViewA3;
        linearLayout2.addView(textViewA3);
        zh zhVar2 = new zh(context);
        int i6 = sparseIntArray.get(ko9.l);
        zhVar2.setLayoutParams(new LinearLayout.LayoutParams(i6, i6));
        zhVar2.setColorFilter(sparseIntArray2.get(yu9.z));
        this.h = zhVar2;
        linearLayout2.addView(zhVar2);
        linearLayout.addView(linearLayout2);
        addView(linearLayout);
        r1 r1Var = new r1(context);
        this.i = r1Var;
        r1Var.getAdChoicesButton().a(kv9.b(context, sparseIntArray.get(ko9.w), false), false);
        r1Var.getAdChoicesButton().setBackgroundColor(0);
        addView(r1Var);
    }

    public final TextView a(Context context) {
        TextView textView = new TextView(context);
        int i = ko9.Y;
        ko9 ko9Var = this.b;
        textView.setTextSize(ko9Var.a.get(i));
        textView.setTextColor(this.c.a.get(yu9.z));
        textView.setAllCaps(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMarginEnd(ko9Var.a.get(ko9.g));
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    public zh getAdsIcon() {
        return this.h;
    }

    public TextView getAgeRestrictionTextView() {
        return this.g;
    }

    public r1 getButtonsView() {
        return this.i;
    }

    public TextView getDomainTextView() {
        return this.f;
    }

    public zh getLogoIcon() {
        return this.d;
    }

    public TextView getTitleTextView() {
        return this.e;
    }
}
