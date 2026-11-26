package com.my.target;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.Size;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.ff1;
import defpackage.gia;
import defpackage.h14;
import defpackage.ko9;
import defpackage.kv9;
import defpackage.l3a;
import defpackage.pp9;
import defpackage.r2a;
import defpackage.t2a;
import defpackage.up9;
import defpackage.v2a;
import defpackage.xda;
import defpackage.y14;
import defpackage.yu9;
import defpackage.zu;

/* JADX INFO: loaded from: classes4.dex */
public abstract class o4 extends LinearLayout implements View.OnClickListener {
    public static final /* synthetic */ int p = 0;
    public final ko9 b;
    public final TextView c;
    public final TextView d;
    public final Button e;
    public final zh f;
    public final TextView g;
    public final FrameLayout h;
    public final i0 i;
    public final e6 j;
    public boolean k;
    public v2a l;
    public e6a m;
    public final c1 n;
    public final f1 o;

    public o4(Context context, f1 f1Var) {
        super(context);
        this.m = new d6a();
        this.n = new c1(new ff1(this));
        this.o = f1Var;
        ko9 ko9Var = new ko9(context);
        this.b = ko9Var;
        setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        this.h = frameLayout;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.weight = 1.0f;
        frameLayout.setLayoutParams(layoutParams);
        i0 i0Var = new i0(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        int i = ko9.k;
        SparseIntArray sparseIntArray = ko9Var.a;
        int i2 = sparseIntArray.get(i);
        layoutParams2.setMargins(i2, i2, 0, 0);
        layoutParams2.gravity = 8388659;
        i0Var.setLayoutParams(layoutParams2);
        this.i = i0Var;
        frameLayout.addView(i0Var);
        e6 e6Var = new e6(context);
        e6Var.setOnClickListener(this);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(sparseIntArray.get(ko9.C), sparseIntArray.get(ko9.D));
        layoutParams3.gravity = 8388661;
        e6Var.setLayoutParams(layoutParams3);
        int i3 = sparseIntArray.get(i);
        e6Var.setPadding(i3, i3, i3 / 2, i3);
        e6Var.a(kv9.b(getContext(), sparseIntArray.get(ko9.w), true), false);
        this.j = e6Var;
        frameLayout.addView(e6Var);
        addView(frameLayout);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        ViewGroup.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        int i4 = ko9.r;
        int i5 = sparseIntArray.get(i4);
        linearLayout.setPadding(0, i5, 0, i5);
        linearLayout.setLayoutParams(layoutParams4);
        addView(linearLayout);
        TextView textView = new TextView(context);
        textView.setTypeface(null, 1);
        textView.setMaxLines(2);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setTextSize(sparseIntArray.get(ko9.N));
        this.c = textView;
        linearLayout.addView(textView);
        TextView textView2 = new TextView(context);
        int i6 = ko9.O;
        textView2.setTextSize(sparseIntArray.get(i6));
        textView2.setLines(2);
        textView2.setEllipsize(truncateAt);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams5.setMargins(0, sparseIntArray.get(ko9.g), 0, 0);
        textView2.setLayoutParams(layoutParams5);
        this.d = textView2;
        linearLayout.addView(textView2);
        LinearLayout linearLayout2 = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams6.weight = 1.0f;
        layoutParams6.setMargins(0, sparseIntArray.get(ko9.n), 0, 0);
        linearLayout2.setLayoutParams(layoutParams6);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        Button button = new Button(context);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams7.setMarginEnd(sparseIntArray.get(i4));
        button.setLayoutParams(layoutParams7);
        int i7 = sparseIntArray.get(i4);
        int i8 = sparseIntArray.get(ko9.m);
        button.setPadding(i7, i8, i7, i8);
        button.setTextSize(sparseIntArray.get(i6));
        button.setTypeface(null, 1);
        this.e = button;
        linearLayout2.addView(button);
        zh zhVar = new zh(context);
        int i9 = sparseIntArray.get(ko9.u);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(i9, i9);
        layoutParams8.setMarginEnd(sparseIntArray.get(i));
        zhVar.setLayoutParams(layoutParams8);
        int i10 = sparseIntArray.get(ko9.d);
        zhVar.setPadding(i10, i10, i10, i10);
        this.f = zhVar;
        linearLayout2.addView(zhVar);
        TextView textView3 = new TextView(context);
        textView3.setTextSize(sparseIntArray.get(i6));
        this.g = textView3;
        linearLayout2.addView(textView3);
        linearLayout.addView(linearLayout2);
    }

    public final Size a(int i, int i2) {
        float f;
        FrameLayout frameLayout = this.h;
        int height = frameLayout.getHeight();
        int width = frameLayout.getWidth();
        float f2 = i / i2;
        if (f2 == 1.0f) {
            if (width < height) {
                height = (int) (width / f2);
            } else {
                f = height / f2;
                width = (int) f;
            }
        } else if (f2 > 1.0f) {
            int i3 = (int) (width / f2);
            if (i3 > height) {
                f = height * f2;
                width = (int) f;
            } else {
                height = i3;
            }
        } else {
            int i4 = (int) (height * f2);
            if (i4 > width) {
                height = i4;
            } else {
                width = i4;
            }
        }
        return new Size(width, height);
    }

    public final void b() {
        yu9 yu9Var = new yu9(getContext());
        this.h.setBackground(d(yu9Var));
        int i = yu9.s;
        SparseIntArray sparseIntArray = yu9Var.a;
        this.c.setTextColor(sparseIntArray.get(i));
        this.d.setTextColor(sparseIntArray.get(yu9.t));
        int i2 = sparseIntArray.get(yu9.B);
        int i3 = yu9.y;
        int i4 = sparseIntArray.get(i3);
        int i5 = sparseIntArray.get(yu9.C);
        int i6 = ko9.n;
        ko9 ko9Var = this.b;
        StateListDrawable stateListDrawableB = yu9.b(i2, i4, i5, ko9Var.a.get(i6));
        Button button = this.e;
        button.setBackground(stateListDrawableB);
        button.setTextColor(sparseIntArray.get(i3));
        this.f.setBackground(yu9Var.a(ko9Var.a.get(ko9.d) / 2.0f));
        this.g.setTextColor(sparseIntArray.get(yu9.z));
    }

    public abstract void c(v2a v2aVar);

    public final GradientDrawable d(yu9 yu9Var) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(yu9Var.a.get(yu9.x));
        gradientDrawable.setCornerRadius(this.b.a.get(ko9.r));
        return gradientDrawable;
    }

    public int e(View view) {
        if (view == this.e) {
            return 64;
        }
        if (view == this.d) {
            return 2;
        }
        return view == this ? 2048 : -1;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        v2a v2aVar = this.l;
        if (v2aVar == null) {
            return;
        }
        boolean z = this.k;
        Button button = this.e;
        e6 e6Var = this.j;
        f1 f1Var = this.o;
        if (!z) {
            xda xdaVar = v2aVar.a;
            if (view != e6Var) {
                if (view == button) {
                    f1Var.c(xdaVar, 2, new gia(), this);
                    return;
                } else {
                    f1Var.c(xdaVar, 1, new gia(), this);
                    return;
                }
            }
            Context context = getContext();
            q qVar = xdaVar.H;
            if (qVar == null) {
                f1Var.getClass();
                return;
            }
            o oVar = f1Var.j;
            if (oVar == null) {
                y14.n(context, qVar.b, null, null, null);
                return;
            } else {
                oVar.b();
                return;
            }
        }
        int iE = e(view);
        if (iE == -1) {
            return;
        }
        up9 up9Var = new up9(iE, this.m);
        v2a v2aVar2 = this.l;
        if (v2aVar2 == null) {
            return;
        }
        xda xdaVar2 = v2aVar2.a;
        if (view != e6Var) {
            if (view == button) {
                f1Var.c(xdaVar2, 2, up9Var, this);
                return;
            } else {
                f1Var.c(xdaVar2, 1, up9Var, this);
                return;
            }
        }
        Context context2 = getContext();
        q qVar2 = xdaVar2.H;
        if (qVar2 == null) {
            f1Var.getClass();
            return;
        }
        o oVar2 = f1Var.j;
        if (oVar2 == null) {
            y14.n(context2, qVar2.b, null, null, null);
        } else {
            oVar2.b();
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b();
    }

    public void setBannerData(v2a v2aVar) {
        LinearLayout.LayoutParams layoutParams;
        b();
        this.l = v2aVar;
        xda xdaVar = v2aVar.a;
        pp9 pp9Var = xdaVar.Q;
        Context context = getContext();
        f1 f1Var = this.o;
        f1Var.getClass();
        q qVar = xdaVar.H;
        if (qVar != null && qVar.c != null) {
            o oVar = new o(qVar, xdaVar.d(), context);
            f1Var.j = oVar;
            oVar.e = new zu(f1Var);
        }
        this.k = pp9Var.c;
        c(v2aVar);
        int i = getContext().getResources().getConfiguration().orientation;
        ko9 ko9Var = this.b;
        if (i == 2) {
            int i2 = (l3a.l(getContext()).x - (ko9Var.a.get(ko9.r) * 3)) / 2;
            layoutParams = new LinearLayout.LayoutParams(i2, -1);
            setMinimumWidth(i2);
        } else {
            int i3 = (l3a.l(getContext()).y - (ko9Var.a.get(ko9.D) + (ko9Var.a.get(ko9.r) * 2))) / 2;
            layoutParams = new LinearLayout.LayoutParams(-1, i3);
            setMinimumHeight(i3);
        }
        setLayoutParams(layoutParams);
        this.c.setText(xdaVar.e);
        this.d.setText(xdaVar.c);
        this.e.setText(xdaVar.g());
        h14 h14Var = xdaVar.q;
        if (h14Var != null) {
            this.f.setImageBitmap(r2a.a((Bitmap) h14Var.d));
        }
        this.g.setText(xdaVar.m.equals("store") ? xdaVar.j : xdaVar.l);
        h14 h14Var2 = xdaVar.b0;
        String strD = xdaVar.d();
        i0 i0Var = this.i;
        if (h14Var2 == null && TextUtils.isEmpty(strD)) {
            i0Var.setVisibility(4);
        } else {
            if (h14Var2 != null) {
                i0Var.getAdsIcon().setImageBitmap((Bitmap) h14Var2.d);
            }
            i0Var.getAgeRestrictionsTextView().setText(strD);
            i0Var.setVisibility(0);
        }
        boolean z = pp9Var.c;
        t2a t2aVar = xdaVar.r;
        this.k = z;
        if (z) {
            setClickAreaActual(t2aVar);
        } else {
            setClickAreaLegacy(t2aVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.view.View, android.widget.Button] */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.view.View, android.view.View$OnClickListener, com.my.target.o4] */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    public void setClickAreaActual(t2a t2aVar) {
        c1 c1Var = this.n;
        setOnTouchListener(c1Var);
        ?? r1 = this.d;
        r1.setOnTouchListener(c1Var);
        ?? r2 = this.e;
        r2.setOnTouchListener(c1Var);
        if (t2aVar.m) {
            setOnClickListener(this);
            r2.setOnClickListener(this);
            r1.setOnClickListener(this);
        } else {
            setOnClickListener(t2aVar.l ? this : 0);
            r2.setOnClickListener(t2aVar.g ? this : 0);
            ?? r4 = this;
            if (!t2aVar.b) {
                r4 = 0;
            }
            r1.setOnClickListener(r4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View, android.widget.Button] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View, android.view.View$OnClickListener, com.my.target.o4] */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.view.View, android.widget.TextView] */
    public void setClickAreaLegacy(t2a t2aVar) {
        boolean z = t2aVar.m;
        ?? r1 = this.e;
        if (z) {
            setOnClickListener(this);
            r1.setOnClickListener(this);
        } else {
            setOnClickListener(t2aVar.l ? this : 0);
            r1.setOnClickListener(t2aVar.g ? this : 0);
            this.d.setOnClickListener(t2aVar.b ? this : 0);
        }
    }
}
