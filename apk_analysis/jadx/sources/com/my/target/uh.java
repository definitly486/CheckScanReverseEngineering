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
public final class uh extends s3 {
    public final TextView b;
    public final TextView c;
    public final Button d;

    public uh(Context context) {
        super(context);
        ko9 ko9Var = new ko9(context);
        yu9 yu9Var = new yu9(context);
        int i = ko9.H;
        SparseIntArray sparseIntArray = ko9Var.a;
        setMinimumHeight(sparseIntArray.get(i));
        setBackgroundColor(0);
        setOrientation(0);
        setGravity(16);
        int i2 = ko9.n;
        int i3 = sparseIntArray.get(i2);
        int i4 = ko9.r;
        int i5 = sparseIntArray.get(i4);
        setPadding(i3, i5, i3, i5);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.rightMargin = sparseIntArray.get(i2);
        linearLayout.setLayoutParams(layoutParams);
        float f = sparseIntArray.get(ko9.T);
        int i6 = yu9.s;
        SparseIntArray sparseIntArray2 = yu9Var.a;
        TextView textViewA = a(context, f, sparseIntArray2.get(i6), 0, true);
        this.b = textViewA;
        l3a.n(textViewA, "title_text_view");
        linearLayout.addView(textViewA);
        int i7 = ko9.O;
        TextView textViewA2 = a(context, sparseIntArray.get(i7), sparseIntArray2.get(yu9.t), sparseIntArray.get(ko9.g), false);
        this.c = textViewA2;
        l3a.n(textViewA2, "description_text_view");
        linearLayout.addView(textViewA2);
        addView(linearLayout);
        Button button = new Button(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 8388629;
        button.setLayoutParams(layoutParams2);
        int i8 = sparseIntArray.get(i4);
        int i9 = sparseIntArray.get(ko9.k);
        button.setPadding(i8, i9, i8, i9);
        button.setTextColor(sparseIntArray2.get(yu9.y));
        button.setTextSize(sparseIntArray.get(i7));
        button.setTypeface(null, 1);
        button.setBackground(yu9.b(sparseIntArray2.get(yu9.B), sparseIntArray2.get(yu9.A), sparseIntArray2.get(yu9.C), sparseIntArray.get(i2)));
        button.setVisibility(8);
        this.d = button;
        l3a.n(button, "action_button");
        addView(button);
    }

    public static TextView a(Context context, float f, int i, int i2, boolean z) {
        TextView textView = new TextView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = i2;
        textView.setLayoutParams(layoutParams);
        textView.setTextSize(f);
        textView.setTextColor(i);
        if (z) {
            textView.setTypeface(null, 1);
        }
        textView.setMaxLines(2);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setVisibility(8);
        return textView;
    }

    @Override // com.my.target.s3
    public Button getCtaButton() {
        return this.d;
    }

    @Override // com.my.target.s3
    public TextView getDescriptionTextView() {
        return this.c;
    }

    @Override // com.my.target.s3
    public TextView getDomainTextView() {
        return null;
    }

    @Override // com.my.target.s3
    public zh getLogoImageView() {
        return null;
    }

    @Override // com.my.target.s3
    public TextView getTitleTextView() {
        return this.b;
    }
}
