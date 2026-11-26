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
public final class ch extends s3 {
    public final zh b;
    public final TextView c;
    public final TextView d;
    public final TextView e;
    public final Button f;

    public ch(Context context) {
        super(context);
        ko9 ko9Var = new ko9(context);
        yu9 yu9Var = new yu9(context);
        int i = ko9.L;
        SparseIntArray sparseIntArray = ko9Var.a;
        setMinimumWidth(sparseIntArray.get(i));
        setBackgroundColor(0);
        setOrientation(1);
        setGravity(16);
        int i2 = ko9.r;
        int i3 = sparseIntArray.get(i2);
        setPadding(i3, i3, i3, i3);
        zh zhVar = new zh(context);
        int i4 = sparseIntArray.get(ko9.u);
        int i5 = ko9.k;
        int i6 = sparseIntArray.get(i5);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i4, i4);
        layoutParams.rightMargin = i6;
        zhVar.setLayoutParams(layoutParams);
        int i7 = ko9.d;
        int i8 = sparseIntArray.get(i7);
        zhVar.setPadding(i8, i8, i8, i8);
        zhVar.setBackground(yu9Var.a(sparseIntArray.get(i7) / 2.0f));
        zhVar.setVisibility(8);
        this.b = zhVar;
        l3a.n(zhVar, "icon_image_view");
        int i9 = ko9.O;
        float f = sparseIntArray.get(i9);
        int i10 = yu9.z;
        SparseIntArray sparseIntArray2 = yu9Var.a;
        TextView textViewA = a(context, f, sparseIntArray2.get(i10), 0, false, 1, TextUtils.TruncateAt.MARQUEE);
        this.c = textViewA;
        l3a.n(textViewA, "domain_text_view");
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(zhVar);
        linearLayout.addView(textViewA);
        l3a.n(linearLayout, "domain_container");
        addView(linearLayout);
        float f2 = sparseIntArray.get(ko9.X);
        int i11 = sparseIntArray2.get(yu9.s);
        int i12 = ko9.n;
        int i13 = sparseIntArray.get(i12);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        TextView textViewA2 = a(context, f2, i11, i13, true, 2, truncateAt);
        this.d = textViewA2;
        l3a.n(textViewA2, "title_text_view");
        addView(textViewA2);
        TextView textViewA3 = a(context, sparseIntArray.get(i9), sparseIntArray2.get(yu9.t), sparseIntArray.get(i5), false, 5, truncateAt);
        this.e = textViewA3;
        l3a.n(textViewA3, "description_text_view");
        addView(textViewA3);
        Button button = new Button(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = sparseIntArray.get(i2);
        button.setLayoutParams(layoutParams2);
        int i14 = sparseIntArray.get(i2);
        int i15 = sparseIntArray.get(i5);
        button.setPadding(i14, i15, i14, i15);
        button.setTextColor(sparseIntArray2.get(yu9.y));
        button.setTextSize(sparseIntArray.get(i9));
        button.setTypeface(null, 1);
        button.setBackground(yu9.b(sparseIntArray2.get(yu9.B), sparseIntArray2.get(yu9.A), sparseIntArray2.get(yu9.C), sparseIntArray.get(i12)));
        button.setVisibility(8);
        this.f = button;
        l3a.n(button, "action_button");
        addView(button);
    }

    public static TextView a(Context context, float f, int i, int i2, boolean z, int i3, TextUtils.TruncateAt truncateAt) {
        TextView textView = new TextView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = i2;
        textView.setLayoutParams(layoutParams);
        textView.setTextSize(f);
        textView.setTextColor(i);
        if (z) {
            textView.setTypeface(null, 1);
        }
        if (i3 > 0) {
            textView.setMaxLines(i3);
            if (truncateAt != null) {
                textView.setEllipsize(truncateAt);
            }
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
