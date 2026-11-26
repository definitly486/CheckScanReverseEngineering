package com.my.target;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.my.target.m5;
import com.my.target.o;
import defpackage.dt9;
import defpackage.ko9;
import defpackage.ve1;
import defpackage.y14;
import defpackage.yu9;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class m5 extends l2 {
    public static final /* synthetic */ int p = 0;
    public TextView n;
    public TextView o;

    @Override // com.my.target.h0
    public final void a(String str, String str2, String str3, String str4, ArrayList arrayList) {
        TextView textView = this.n;
        if (textView != null) {
            if (TextUtils.isEmpty(str)) {
                str = "Объявление скрыто";
            }
            textView.setText(str);
        }
        TextView textView2 = this.o;
        if (textView2 != null) {
            if (TextUtils.isEmpty(str2)) {
                str2 = "Мы используем ваши ответы, чтобы подбирать для вас подходящую рекламу";
            }
            textView2.setText(str2);
        }
        if (TextUtils.isEmpty(str3)) {
            str3 = "Уточните причину";
        }
        this.f.setText(str3);
        if (TextUtils.isEmpty(str4)) {
            str4 = "Отправить";
        }
        Button button = this.d;
        button.setText(str4);
        c(arrayList);
        button.setOnClickListener(new View.OnClickListener() { // from class: g2a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = m5.p;
                m5 m5Var = this.b;
                s95 s95Var = m5Var.i;
                if (s95Var != null) {
                    ((o) m5Var.k.b).c(s95Var);
                }
            }
        });
        try {
            y0 y0Var = new y0(this, getContext());
            this.b = new WeakReference(y0Var);
            y0Var.show();
        } catch (Throwable th) {
            th.printStackTrace();
            y14.u(null, "AdChoicesOptionsController: Unable to start adchoices dialog");
            m();
        }
    }

    @Override // com.my.target.l2
    public final LinearLayout.LayoutParams d() {
        int i = ko9.d;
        ko9 ko9Var = this.c;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, ko9Var.a.get(i));
        int i2 = ko9Var.a.get(ko9.v);
        int i3 = ko9Var.a.get(ko9.r);
        layoutParams.setMargins(i3, i2, i3, 0);
        return layoutParams;
    }

    @Override // com.my.target.h0
    public final void dismiss() {
        y0 y0Var;
        WeakReference weakReference = this.b;
        if (weakReference == null || (y0Var = (y0) weakReference.get()) == null) {
            return;
        }
        y0Var.dismiss();
    }

    @Override // com.my.target.l2
    public final LinearLayout f(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.addView(this.g);
        ImageView imageView = new ImageView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i = ko9.y;
        ko9 ko9Var = this.c;
        int i2 = ko9Var.a.get(i);
        layoutParams.setMargins(i2, 0, i2, 0);
        layoutParams.gravity = 1;
        imageView.setLayoutParams(layoutParams);
        int i3 = ko9.F;
        SparseIntArray sparseIntArray = ko9Var.a;
        imageView.setImageBitmap(dt9.a(context, sparseIntArray.get(i3), -1, "M28 4C41.2548 4 52 14.7452 52 28C52 41.2548 41.2548 52 28 52C14.7452 52 4 41.2548 4 28C4 14.7452 14.7452 4 28 4ZM28 7C16.402 7 7 16.402 7 28C7 39.598 16.402 49 28 49C39.598 49 49 39.598 49 28C49 16.402 39.598 7 28 7ZM36.9393 20.9393C37.5251 20.3536 38.4749 20.3536 39.0607 20.9393C39.6464 21.5251 39.6464 22.4749 39.0607 23.0607L25.0607 37.0607C24.4749 37.6464 23.5251 37.6464 22.9393 37.0607L15.9393 30.0607C15.3536 29.4749 15.3536 28.5251 15.9393 27.9393C16.5251 27.3536 17.4749 27.3536 18.0607 27.9393L24 33.8787L36.9393 20.9393Z"));
        int i4 = yu9.G;
        yu9 yu9Var = this.j;
        imageView.setColorFilter(yu9Var.a.get(i4));
        linearLayout.addView(imageView);
        this.n = e(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        int i5 = sparseIntArray.get(i);
        layoutParams2.setMargins(i5, sparseIntArray.get(ko9.n), i5, 0);
        this.n.setLayoutParams(layoutParams2);
        linearLayout.addView(this.n);
        TextView textView = new TextView(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 1;
        int i6 = sparseIntArray.get(i);
        layoutParams3.setMargins(i6, sparseIntArray.get(ko9.i), i6, 0);
        textView.setLayoutParams(layoutParams3);
        textView.setTextAlignment(4);
        textView.setTextColor(yu9Var.a.get(yu9.v));
        textView.setTextSize(sparseIntArray.get(ko9.S));
        this.o = textView;
        linearLayout.addView(textView);
        return linearLayout;
    }

    @Override // com.my.target.l2
    public String getActionText() {
        return "Отправить";
    }

    @Override // com.my.target.l2, android.view.View.OnClickListener
    public final void onClick(View view) {
        ve1 ve1Var;
        super.onClick(view);
        if (view != this.g || (ve1Var = this.l.f) == null) {
            return;
        }
        ((w1) ve1Var.b).resume();
    }
}
