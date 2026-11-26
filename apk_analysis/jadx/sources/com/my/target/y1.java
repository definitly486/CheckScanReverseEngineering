package com.my.target;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.c21;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.fo9;
import defpackage.gia;
import defpackage.h14;
import defpackage.ko9;
import defpackage.pfa;
import defpackage.t2a;
import defpackage.up9;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public final class y1 extends LinearLayout implements View.OnClickListener {
    public static final /* synthetic */ int q = 0;
    public final zh b;
    public final TextView c;
    public final TextView d;
    public final TextView e;
    public final TextView f;
    public final Button g;
    public final FrameLayout h;
    public final ko9 i;
    public yu9 j;
    public e6a k;
    public final c1 l;
    public a m;
    public boolean n;
    public t2a o;
    public fo9 p;

    public interface a {
        void a(fo9 fo9Var, int i, pfa pfaVar, View view);
    }

    public y1(Context context) {
        super(context);
        this.k = new d6a();
        this.l = new c1(new c21(this, 8));
        this.n = false;
        ko9 ko9Var = new ko9(context);
        this.i = ko9Var;
        this.j = new yu9(context);
        setOrientation(1);
        zh zhVar = new zh(context);
        this.b = zhVar;
        FrameLayout frameLayout = new FrameLayout(context);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(this.j.a.get(yu9.x));
        int i = ko9.d;
        SparseIntArray sparseIntArray = ko9Var.a;
        gradientDrawable.setStroke(sparseIntArray.get(i), this.j.a.get(yu9.k));
        gradientDrawable.setCornerRadius(sparseIntArray.get(ko9.r));
        frameLayout.setBackground(gradientDrawable);
        frameLayout.setClipToOutline(true);
        this.h = frameLayout;
        frameLayout.addView(zhVar);
        TextView textView = new TextView(context);
        int i2 = ko9.g;
        int i3 = sparseIntArray.get(i2);
        textView.setPadding(i3, i3, i3, i3);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(this.j.a.get(yu9.i));
        gradientDrawable2.setCornerRadius(sparseIntArray.get(ko9.x));
        textView.setBackground(gradientDrawable2);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i4 = ko9.i;
        int i5 = sparseIntArray.get(i4);
        layoutParams.setMargins(i5, i5, 0, 0);
        textView.setLayoutParams(layoutParams);
        textView.setTextColor(-1);
        textView.setTypeface(null, 1);
        int i6 = ko9.R;
        textView.setTextSize(sparseIntArray.get(i6));
        textView.setVisibility(8);
        this.c = textView;
        frameLayout.addView(textView);
        yu9 yu9Var = this.j;
        int i7 = yu9.s;
        TextView textViewA = a(context, yu9Var.a.get(i7), false);
        this.d = textViewA;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMarginEnd(sparseIntArray.get(i4));
        textViewA.setLayoutParams(layoutParams2);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        int i8 = sparseIntArray.get(ko9.k);
        int i9 = sparseIntArray.get(i2);
        layoutParams3.setMargins(i9, i8, i9, 0);
        linearLayout.setLayoutParams(layoutParams3);
        linearLayout.addView(textViewA);
        TextView textViewA2 = a(context, this.j.a.get(yu9.v), true);
        this.e = textViewA2;
        linearLayout.addView(textViewA2);
        textViewA2.setVisibility(8);
        addView(frameLayout);
        addView(linearLayout);
        TextView textView2 = new TextView(context);
        textView2.setTextSize(sparseIntArray.get(i6));
        textView2.setTextColor(this.j.a.get(i7));
        textView2.setLines(2);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        int i10 = sparseIntArray.get(i2);
        layoutParams4.setMargins(i10, i10 / 2, i10, i10);
        textView2.setLayoutParams(layoutParams4);
        this.f = textView2;
        addView(textView2);
        Button button = new Button(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        int i11 = sparseIntArray.get(i2);
        layoutParams5.setMargins(i11, i11, i11, i11);
        button.setLayoutParams(layoutParams5);
        int i12 = this.j.a.get(yu9.w);
        int i13 = this.j.a.get(yu9.A);
        int i14 = this.j.a.get(yu9.E);
        int i15 = ko9.m;
        button.setBackground(yu9.b(i12, i13, i14, sparseIntArray.get(i15)));
        button.setTextColor(this.j.a.get(yu9.B));
        button.setTextSize(sparseIntArray.get(ko9.Q));
        int i16 = sparseIntArray.get(i15);
        int i17 = sparseIntArray.get(i2);
        button.setPadding(i16, i17, i16, i17);
        button.setTypeface(null, 1);
        this.g = button;
        addView(button);
    }

    public final TextView a(Context context, int i, boolean z) {
        TextView textView = new TextView(context);
        textView.setTextSize(this.i.a.get(ko9.Q));
        textView.setTextColor(i);
        textView.setTypeface(null, 1);
        if (z) {
            textView.setPaintFlags(textView.getPaintFlags() | 16);
        }
        return textView;
    }

    public final void b() {
        yu9 yu9Var = new yu9(getContext());
        this.j = yu9Var;
        int i = yu9.s;
        this.d.setTextColor(yu9Var.a.get(i));
        this.e.setTextColor(this.j.a.get(yu9.v));
        this.f.setTextColor(this.j.a.get(i));
        StateListDrawable stateListDrawableB = yu9.b(this.j.a.get(yu9.w), this.j.a.get(yu9.A), this.j.a.get(yu9.E), this.i.a.get(ko9.m));
        Button button = this.g;
        button.setBackground(stateListDrawableB);
        button.setTextColor(this.j.a.get(yu9.B));
    }

    public Button getActionButton() {
        return this.g;
    }

    public zh getAdImage() {
        return this.b;
    }

    public TextView getDescriptionTextView() {
        return this.f;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        fo9 fo9Var;
        int i;
        fo9 fo9Var2;
        boolean z = this.n;
        Button button = this.g;
        if (!z) {
            a aVar = this.m;
            if (aVar == null || (fo9Var = this.p) == null) {
                return;
            }
            if (view == button) {
                aVar.a(fo9Var, 2, new gia(), view);
                return;
            } else {
                aVar.a(fo9Var, 1, new gia(), view);
                return;
            }
        }
        if (view == button) {
            i = 64;
        } else if (view == this.d || view == this.e) {
            i = 1;
        } else if (view == this.f) {
            i = 2;
        } else if (view == this.b) {
            i = 8;
        } else {
            i = view == this ? 2048 : -1;
        }
        if (i == -1) {
            return;
        }
        up9 up9Var = new up9(i, this.k);
        a aVar2 = this.m;
        if (aVar2 == null || (fo9Var2 = this.p) == null) {
            return;
        }
        if (view == button) {
            aVar2.a(fo9Var2, 2, up9Var, view);
        } else {
            aVar2.a(fo9Var2, 1, up9Var, view);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b();
    }

    public void setCard(fo9 fo9Var) {
        LinearLayout.LayoutParams layoutParams;
        this.p = fo9Var;
        b();
        this.n = fo9Var.Q.c;
        this.o = fo9Var.r;
        h14 h14Var = fo9Var.p;
        zh zhVar = this.b;
        if (h14Var != null) {
            zhVar.setImageBitmap((Bitmap) h14Var.d);
        } else {
            zhVar.setImageBitmap(null);
        }
        this.f.setText(fo9Var.e);
        this.g.setText(fo9Var.g());
        boolean zIsEmpty = TextUtils.isEmpty(fo9Var.M);
        TextView textView = this.d;
        TextView textView2 = this.e;
        if (zIsEmpty) {
            textView.setText(fo9Var.K);
            textView2.setVisibility(8);
        } else {
            textView.setText(fo9Var.M);
            textView2.setText(fo9Var.K);
            textView.setVisibility(0);
            textView2.setVisibility(0);
        }
        boolean zIsEmpty2 = TextUtils.isEmpty(fo9Var.J);
        TextView textView3 = this.c;
        if (zIsEmpty2) {
            textView3.setVisibility(8);
        } else {
            textView3.setVisibility(0);
            textView3.setText(fo9Var.J);
        }
        if (getContext().getResources().getConfiguration().orientation == 2) {
            layoutParams = new LinearLayout.LayoutParams(-2, -1);
            zhVar.setScaleType(ImageView.ScaleType.CENTER_CROP);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-2, -2);
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.weight = 1.0f;
        this.h.setLayoutParams(layoutParams2);
        setLayoutParams(layoutParams);
    }

    public void setOnClickListeners(a aVar) {
        this.m = aVar;
        boolean z = this.n;
        zh zhVar = this.b;
        TextView textView = this.d;
        TextView textView2 = this.e;
        TextView textView3 = this.f;
        Button button = this.g;
        if (!z) {
            t2a t2aVar = this.o;
            if (t2aVar == null) {
                return;
            }
            if (t2aVar.m) {
                setOnClickListener(this);
                button.setOnClickListener(this);
                zhVar.setOnClickListener(this);
                textView3.setOnClickListener(this);
                textView.setOnClickListener(this);
                textView2.setOnClickListener(this);
                return;
            }
            setOnClickListener((t2aVar.l || t2aVar.o) ? this : null);
            button.setOnClickListener(this.o.g ? this : null);
            t2a t2aVar2 = this.o;
            zhVar.setOnClickListener((t2aVar2.d || t2aVar2.o) ? this : null);
            t2a t2aVar3 = this.o;
            textView.setOnClickListener((t2aVar3.a || t2aVar3.o) ? this : null);
            t2a t2aVar4 = this.o;
            textView2.setOnClickListener((t2aVar4.a || t2aVar4.o) ? this : null);
            t2a t2aVar5 = this.o;
            if (!t2aVar5.b && !t2aVar5.o) {
                this = null;
            }
            textView3.setOnClickListener(this);
            return;
        }
        if (this.o == null) {
            return;
        }
        c1 c1Var = this.l;
        setOnTouchListener(c1Var);
        zhVar.setOnTouchListener(c1Var);
        textView.setOnTouchListener(c1Var);
        textView2.setOnTouchListener(c1Var);
        textView3.setOnTouchListener(c1Var);
        button.setOnTouchListener(c1Var);
        t2a t2aVar6 = this.o;
        if (t2aVar6.m) {
            setOnClickListener(this);
            button.setOnClickListener(this);
            zhVar.setOnClickListener(this);
            textView3.setOnClickListener(this);
            textView.setOnClickListener(this);
            textView2.setOnClickListener(this);
            return;
        }
        setOnClickListener((t2aVar6.l || t2aVar6.o) ? this : null);
        button.setOnClickListener(this.o.g ? this : null);
        t2a t2aVar7 = this.o;
        zhVar.setOnClickListener((t2aVar7.d || t2aVar7.o) ? this : null);
        t2a t2aVar8 = this.o;
        textView.setOnClickListener((t2aVar8.a || t2aVar8.o) ? this : null);
        t2a t2aVar9 = this.o;
        textView2.setOnClickListener((t2aVar9.a || t2aVar9.o) ? this : null);
        t2a t2aVar10 = this.o;
        if (!t2aVar10.b && !t2aVar10.o) {
            this = null;
        }
        textView3.setOnClickListener(this);
    }
}
