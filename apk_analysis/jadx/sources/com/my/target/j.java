package com.my.target;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.util.SparseIntArray;
import android.view.Window;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import defpackage.ko9;
import defpackage.rp9;
import defpackage.y14;
import defpackage.yu9;
import defpackage.zu;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class j extends FrameLayout implements y0.a, h0 {
    public final ko9 b;
    public yu9 c;
    public WeakReference d;
    public final ListView e;
    public final TextView f;
    public final TextView g;
    public FrameLayout h;
    public final o i;
    public final LinearLayout j;

    public j(Context context, o oVar) {
        super(context);
        ko9 ko9Var = new ko9(context);
        this.b = ko9Var;
        this.c = new yu9(context);
        this.i = oVar;
        int i = ko9.m;
        SparseIntArray sparseIntArray = ko9Var.a;
        int i2 = sparseIntArray.get(i);
        setPadding(i2, i2, i2, i2);
        setBackgroundColor(0);
        LinearLayout linearLayout = new LinearLayout(context);
        this.j = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setBackground(d());
        addView(linearLayout);
        int i3 = ko9.r;
        int i4 = sparseIntArray.get(i3);
        int i5 = ko9.k;
        int i6 = sparseIntArray.get(i5);
        linearLayout.setElevation(sparseIntArray.get(ko9.f));
        linearLayout.setPadding(0, i4, 0, i6);
        TextView textViewC = c(context, true);
        this.f = textViewC;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i7 = sparseIntArray.get(i3);
        layoutParams.setMargins(i7, 0, i7, 0);
        textViewC.setLayoutParams(layoutParams);
        linearLayout.addView(textViewC);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(i7, sparseIntArray.get(i5), i7, 0);
        TextView textViewC2 = c(context, false);
        this.g = textViewC2;
        textViewC2.setLayoutParams(layoutParams2);
        linearLayout.addView(textViewC2);
        ListView listView = new ListView(context);
        this.e = listView;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(0, sparseIntArray.get(i3), 0, 0);
        listView.setLayoutParams(layoutParams3);
        listView.setDivider(null);
        linearLayout.addView(listView);
    }

    @Override // com.my.target.h0
    public final void a(String str, String str2, String str3, String str4, ArrayList arrayList) {
        this.f.setText(str);
        this.g.setText(str2);
        rp9 rp9Var = new rp9();
        rp9Var.b = arrayList;
        o oVar = this.i;
        Objects.requireNonNull(oVar);
        rp9Var.c = new zu(oVar);
        this.e.setAdapter((ListAdapter) rp9Var);
        try {
            y0 y0Var = new y0(this, getContext());
            this.d = new WeakReference(y0Var);
            y0Var.show();
            Window window = y0Var.getWindow();
            if (window != null) {
                window.setLayout(-1, -2);
                window.setGravity(80);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            y14.u(null, "AdChoicesOptionsController: Unable to start adchoices dialog");
            m();
        }
    }

    @Override // com.my.target.y0.a
    public final void b(FrameLayout frameLayout) {
        this.h = frameLayout;
        frameLayout.addView(this, -1, -2);
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 512.0f, 0.0f);
        translateAnimation.setDuration(300L);
        translateAnimation.setFillAfter(true);
        startAnimation(translateAnimation);
    }

    public final TextView c(Context context, boolean z) {
        TextView textView = new TextView(context);
        yu9 yu9Var = this.c;
        textView.setTextColor(yu9Var.a.get(yu9.v));
        if (z) {
            textView.setTypeface(null, 1);
            return textView;
        }
        textView.setTypeface(null, 0);
        return textView;
    }

    public final GradientDrawable d() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(this.c.a.get(yu9.r));
        gradientDrawable.setCornerRadius(this.b.a.get(ko9.n));
        return gradientDrawable;
    }

    @Override // com.my.target.h0
    public final void dismiss() {
        y0 y0Var;
        WeakReference weakReference = this.d;
        if (weakReference == null || (y0Var = (y0) weakReference.get()) == null) {
            return;
        }
        y0Var.dismiss();
    }

    @Override // com.my.target.y0.a
    public final void m() {
        FrameLayout frameLayout = this.h;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        WeakReference weakReference = this.d;
        if (weakReference != null) {
            weakReference.clear();
            this.d = null;
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.c = new yu9(getContext());
        this.j.setBackground(d());
        dismiss();
    }
}
