package com.my.target;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import com.my.target.l2;
import defpackage.br;
import defpackage.dt9;
import defpackage.ko9;
import defpackage.s95;
import defpackage.u15;
import defpackage.yu9;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l2 extends LinearLayout implements y0.a, h0, View.OnClickListener {
    public static final /* synthetic */ int m = 0;
    public WeakReference b;
    public final ko9 c;
    public final Button d;
    public final RadioGroup e;
    public final TextView f;
    public final e6 g;
    public FrameLayout h;
    public s95 i;
    public final yu9 j;
    public final br k;
    public final o l;

    public l2(Context context, o oVar) {
        super(context);
        this.l = oVar;
        setOrientation(1);
        this.k = new br(oVar);
        ko9 ko9Var = new ko9(context);
        this.c = ko9Var;
        yu9 yu9Var = new yu9(context);
        this.j = yu9Var;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        int i = yu9.r;
        SparseIntArray sparseIntArray = yu9Var.a;
        gradientDrawable.setColor(sparseIntArray.get(i));
        int i2 = ko9.n;
        SparseIntArray sparseIntArray2 = ko9Var.a;
        float f = sparseIntArray2.get(i2);
        gradientDrawable.setCornerRadii(new float[]{f, f, f, f, 0.0f, 0.0f, 0.0f, 0.0f});
        setBackground(gradientDrawable);
        e6 e6Var = new e6(context);
        int i3 = ko9.D;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(sparseIntArray2.get(i3), sparseIntArray2.get(ko9.E));
        int i4 = ko9.k;
        int i5 = sparseIntArray2.get(i4);
        int i6 = sparseIntArray2.get(ko9.g);
        layoutParams.setMargins(i5, i6, 0, i6);
        e6Var.setLayoutParams(layoutParams);
        int i7 = sparseIntArray2.get(i4);
        int i8 = ko9.m;
        int i9 = sparseIntArray2.get(i8);
        e6Var.f = i9;
        e6Var.i = i9;
        e6Var.g = i7;
        e6Var.h = i7;
        e6Var.a(dt9.a(context, sparseIntArray2.get(ko9.w), sparseIntArray.get(yu9.G), "M 0.263 0.264 C 0.615 -0.088 1.185 -0.088 1.536 0.264 L 7 5.727 L 12.463 0.264 C 12.815 -0.088 13.385 -0.088 13.736 0.264 C 14.088 0.615 14.088 1.185 13.736 1.536 L 8.272 7 L 13.736 12.464 C 14.088 12.815 14.088 13.385 13.736 13.736 C 13.385 14.088 12.815 14.088 12.463 13.736 L 7 8.273 L 1.536 13.736 C 1.185 14.088 0.615 14.088 0.263 13.736 C -0.088 13.385 -0.088 12.815 0.263 12.464 L 5.727 7 L 0.263 1.536 C -0.088 1.185 -0.088 0.615 0.263 0.264 Z"), false);
        e6Var.setOnClickListener(new u15(this, 2));
        this.g = e6Var;
        addView(f(context));
        View view = new View(context);
        view.setLayoutParams(d());
        view.setBackgroundColor(sparseIntArray.get(yu9.F));
        addView(view);
        TextView textView = new TextView(context);
        this.f = textView;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        int i10 = ko9.r;
        int i11 = sparseIntArray2.get(i10);
        layoutParams2.setMargins(i11, sparseIntArray2.get(i2), i11, 0);
        textView.setLayoutParams(layoutParams2);
        textView.setTextColor(sparseIntArray.get(yu9.s));
        int i12 = ko9.S;
        textView.setTextSize(sparseIntArray2.get(i12));
        textView.setTypeface(null, 1);
        addView(textView);
        ScrollView scrollView = new ScrollView(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.weight = 1.0f;
        scrollView.setLayoutParams(layoutParams3);
        RadioGroup radioGroup = new RadioGroup(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        int i13 = sparseIntArray2.get(i8);
        int i14 = sparseIntArray2.get(i10);
        layoutParams4.setMargins(0, i13, 0, 0);
        radioGroup.setLayoutParams(layoutParams4);
        radioGroup.setPadding(i14, 0, i14, 0);
        this.e = radioGroup;
        scrollView.addView(radioGroup);
        addView(scrollView);
        Button button = new Button(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, sparseIntArray2.get(i3));
        int i15 = sparseIntArray2.get(i2);
        int i16 = sparseIntArray2.get(i10);
        layoutParams5.setMargins(i16, i15, i16, i15);
        button.setLayoutParams(layoutParams5);
        button.setTextColor(sparseIntArray.get(yu9.y));
        button.setTextSize(sparseIntArray2.get(i12));
        button.setBackground(yu9.b(sparseIntArray.get(yu9.B), sparseIntArray.get(yu9.A), sparseIntArray.get(yu9.C), sparseIntArray2.get(i2)));
        button.setTextAlignment(4);
        button.setEnabled(false);
        this.d = button;
        button.setText(getActionText());
        addView(button);
        e6Var.setOnClickListener(this);
    }

    @Override // com.my.target.y0.a
    public final void b(FrameLayout frameLayout) {
        this.h = frameLayout;
        frameLayout.addView(this, -1, -1);
    }

    public final void c(ArrayList arrayList) {
        int i = ko9.m;
        ko9 ko9Var = this.c;
        int i2 = ko9Var.a.get(i);
        int i3 = ko9.r;
        SparseIntArray sparseIntArray = ko9Var.a;
        int i4 = sparseIntArray.get(i3);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            final s95 s95Var = (s95) it.next();
            RadioButton radioButton = new RadioButton(getContext());
            radioButton.setPaddingRelative(i4, i2, i4, i2);
            radioButton.setText(s95Var.a);
            int i5 = yu9.s;
            yu9 yu9Var = this.j;
            radioButton.setTextColor(yu9Var.a.get(i5));
            radioButton.setTextSize(sparseIntArray.get(ko9.S));
            StateListDrawable stateListDrawable = new StateListDrawable();
            int i6 = sparseIntArray.get(ko9.v);
            int[] iArr = {R.attr.state_checked};
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(0);
            int i7 = ko9.f;
            int i8 = sparseIntArray.get(i7);
            int i9 = yu9.G;
            SparseIntArray sparseIntArray2 = yu9Var.a;
            gradientDrawable.setStroke(i8, sparseIntArray2.get(i9));
            gradientDrawable.setSize(i6, i6);
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setShape(1);
            gradientDrawable2.setColor(sparseIntArray2.get(i9));
            int i10 = sparseIntArray.get(ko9.i);
            int i11 = i6 / 2;
            gradientDrawable2.setSize(i11, i11);
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, gradientDrawable2});
            layerDrawable.setLayerInset(1, i10, i10, i10, i10);
            stateListDrawable.addState(iArr, layerDrawable);
            GradientDrawable gradientDrawable3 = new GradientDrawable();
            gradientDrawable3.setShape(1);
            gradientDrawable3.setColor(-1);
            gradientDrawable3.setStroke(sparseIntArray.get(i7), sparseIntArray2.get(yu9.H));
            gradientDrawable3.setSize(i6, i6);
            stateListDrawable.addState(new int[0], gradientDrawable3);
            radioButton.setButtonDrawable(stateListDrawable);
            radioButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: f1a
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    int i12 = l2.m;
                    if (z) {
                        l2 l2Var = this.a;
                        l2Var.i = s95Var;
                        l2Var.d.setEnabled(true);
                    }
                }
            });
            this.e.addView(radioButton);
        }
    }

    public abstract LinearLayout.LayoutParams d();

    public final TextView e(Context context) {
        TextView textView = new TextView(context);
        textView.setTextAlignment(4);
        textView.setTextColor(this.j.a.get(yu9.s));
        int i = ko9.X;
        ko9 ko9Var = this.c;
        textView.setTextSize(ko9Var.a.get(i));
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setPadding(ko9Var.a.get(ko9.k), 0, 0, 0);
        return textView;
    }

    public abstract LinearLayout f(Context context);

    public abstract String getActionText();

    @Override // com.my.target.y0.a
    public final void m() {
        FrameLayout frameLayout = this.h;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        WeakReference weakReference = this.b;
        if (weakReference != null) {
            weakReference.clear();
            this.b = null;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.g) {
            dismiss();
        }
    }
}
