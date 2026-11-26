package com.my.target;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.ko9;
import defpackage.l3a;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public final class l1 extends s3 {
    public final zh b;
    public final TextView c;
    public final TextView d;
    public final TextView e;
    public final Button f;

    public l1(Context context) {
        super(context);
        ko9 ko9Var = new ko9(context);
        yu9 yu9Var = new yu9(context);
        setBackgroundColor(0);
        setOrientation(1);
        setGravity(17);
        int i = ko9.u;
        SparseIntArray sparseIntArray = ko9Var.a;
        int i2 = sparseIntArray.get(i);
        setPadding(i2, i2, i2, i2);
        zh zhVar = new zh(context);
        int i3 = sparseIntArray.get(ko9.z);
        zhVar.setLayoutParams(new LinearLayout.LayoutParams(i3, i3));
        zhVar.setVisibility(8);
        int i4 = ko9.d;
        zhVar.setBackground(yu9Var.a(sparseIntArray.get(i4) / 2.0f));
        int i5 = sparseIntArray.get(i4);
        zhVar.setPadding(i5, i5, i5, i5);
        this.b = zhVar;
        l3a.n(zhVar, "icon_image_view");
        addView(zhVar);
        float f = sparseIntArray.get(ko9.O);
        int i6 = yu9.z;
        SparseIntArray sparseIntArray2 = yu9Var.a;
        TextView textViewA = a(context, f, sparseIntArray2.get(i6), sparseIntArray.get(ko9.g), false, 0);
        this.c = textViewA;
        l3a.n(textViewA, "domain_text_view");
        addView(textViewA);
        float f2 = sparseIntArray.get(ko9.V);
        int i7 = sparseIntArray2.get(yu9.s);
        int i8 = ko9.n;
        TextView textViewA2 = a(context, f2, i7, sparseIntArray.get(i8), true, 2);
        this.d = textViewA2;
        l3a.n(textViewA2, "title_text_view");
        addView(textViewA2);
        int i9 = ko9.U;
        TextView textViewA3 = a(context, sparseIntArray.get(i9), sparseIntArray2.get(yu9.t), sparseIntArray.get(ko9.k), false, 5);
        this.e = textViewA3;
        l3a.n(textViewA3, "description_text_view");
        addView(textViewA3);
        Button button = new Button(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = sparseIntArray.get(ko9.r);
        button.setLayoutParams(layoutParams);
        int i10 = sparseIntArray.get(ko9.v);
        int i11 = sparseIntArray.get(i8);
        button.setPadding(i10, i11, i10, i11);
        button.setTextColor(sparseIntArray2.get(yu9.y));
        button.setTextSize(sparseIntArray.get(i9));
        button.setTypeface(null, 1);
        button.setBackground(yu9.b(sparseIntArray2.get(yu9.B), sparseIntArray2.get(yu9.A), sparseIntArray2.get(yu9.C), sparseIntArray.get(i8)));
        button.setVisibility(8);
        this.f = button;
        l3a.n(button, "action_button");
        addView(button);
    }

    public static TextView a(Context context, float f, int i, int i2, boolean z, int i3) {
        TextView textView = new TextView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = i2;
        textView.setLayoutParams(layoutParams);
        textView.setGravity(1);
        textView.setTextSize(f);
        textView.setTextColor(i);
        if (z) {
            textView.setTypeface(null, 1);
        }
        if (i3 > 0) {
            textView.setMaxLines(i3);
            textView.setEllipsize(TextUtils.TruncateAt.END);
        }
        textView.setVisibility(8);
        return textView;
    }

    @Override // com.my.target.s3
    public Button getCtaButton() {
        return this.f;
    }

    @Override // com.my.target.s3
    public TextView getDescriptionTextView() {
        return this.e;
    }

    @Override // com.my.target.s3
    public TextView getDomainTextView() {
        return this.c;
    }

    @Override // com.my.target.s3
    public zh getLogoImageView() {
        return this.b;
    }

    @Override // com.my.target.s3
    public TextView getTitleTextView() {
        return this.d;
    }
}
