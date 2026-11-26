package com.my.target;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.ev9;
import defpackage.gia;
import defpackage.l3a;
import defpackage.nn9;
import defpackage.on9;
import defpackage.t2a;
import defpackage.up9;
import defpackage.x52;
import defpackage.xda;

/* JADX INFO: loaded from: classes4.dex */
public class bg extends ViewGroup implements nn9, View.OnClickListener {
    public static final /* synthetic */ int z = 0;
    public final zh b;
    public final rh c;
    public final TextView d;
    public final TextView e;
    public final TextView f;
    public final TextView g;
    public final TextView h;
    public final Button i;
    public final c3 j;
    public final c1 k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final on9 r;
    public final int s;
    public final int t;
    public final int u;
    public b v;
    public boolean w;
    public e6a x;
    public boolean y;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.c.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[b.a.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[b.b.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        public static final b a;
        public static final b b;
        public static final b c;
        private static final /* synthetic */ b[] d;

        static {
            b bVar = new b("PORTRAIT", 0);
            a = bVar;
            b bVar2 = new b("LANDSCAPE", 1);
            b = bVar2;
            b bVar3 = new b("SQUARE", 2);
            c = bVar3;
            d = new b[]{bVar, bVar2, bVar3};
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) d.clone();
        }
    }

    public bg(on9 on9Var, Context context, c3 c3Var) {
        super(context);
        this.k = new c1(new x52(this, 4));
        this.v = b.a;
        this.x = new d6a();
        this.y = false;
        this.j = c3Var;
        this.r = on9Var;
        int i = on9.F;
        SparseIntArray sparseIntArray = on9Var.a;
        this.l = sparseIntArray.get(i);
        this.m = sparseIntArray.get(on9.G);
        this.u = sparseIntArray.get(on9.H);
        this.n = sparseIntArray.get(on9.I);
        this.o = sparseIntArray.get(on9.o);
        this.p = sparseIntArray.get(on9.n);
        int i2 = sparseIntArray.get(on9.N);
        this.s = i2;
        int i3 = sparseIntArray.get(on9.U);
        this.q = sparseIntArray.get(on9.T);
        this.t = l3a.d(i2, context);
        zh zhVar = new zh(context);
        this.b = zhVar;
        rh rhVar = new rh(context);
        this.c = rhVar;
        TextView textView = new TextView(context);
        this.d = textView;
        textView.setMaxLines(1);
        textView.setTextSize(1, sparseIntArray.get(on9.J));
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setIncludeFontPadding(false);
        TextView textView2 = new TextView(context);
        this.e = textView2;
        textView2.setTextSize(1, sparseIntArray.get(on9.L));
        textView2.setMaxLines(sparseIntArray.get(on9.M));
        textView2.setEllipsize(truncateAt);
        textView2.setIncludeFontPadding(false);
        TextView textView3 = new TextView(context);
        this.f = textView3;
        float f = i2;
        textView3.setTextSize(1, f);
        textView3.setEllipsize(truncateAt);
        textView3.setLines(1);
        textView3.setIncludeFontPadding(false);
        TextView textView4 = new TextView(context);
        this.g = textView4;
        textView4.setTextSize(1, f);
        textView4.setIncludeFontPadding(false);
        Button button = new Button(context);
        this.i = button;
        button.setLines(1);
        button.setTextSize(1, sparseIntArray.get(on9.w));
        button.setEllipsize(truncateAt);
        button.setMinimumWidth(i3);
        button.setIncludeFontPadding(false);
        int i4 = sparseIntArray.get(on9.x);
        int i5 = i4 * 2;
        button.setPadding(i5, i4, i5, i4);
        TextView textView5 = new TextView(context);
        this.h = textView5;
        textView5.setPadding(sparseIntArray.get(on9.y), 0, 0, 0);
        textView5.setTextColor(-1);
        textView5.setMaxLines(sparseIntArray.get(on9.B));
        textView5.setIncludeFontPadding(false);
        textView5.setTextSize(1, sparseIntArray.get(on9.C));
        zhVar.setContentDescription("panel_icon");
        l3a.n(zhVar, "panel_icon");
        textView.setContentDescription("panel_title");
        l3a.n(textView, "panel_title");
        textView2.setContentDescription("panel_description");
        l3a.n(textView2, "panel_description");
        textView3.setContentDescription("panel_domain");
        l3a.n(textView3, "panel_domain");
        textView4.setContentDescription("panel_rating");
        l3a.n(textView4, "panel_rating");
        button.setContentDescription("panel_cta");
        l3a.n(button, "panel_cta");
        textView5.setContentDescription("age_bordering");
        l3a.n(textView5, "age_bordering");
        addView(zhVar);
        addView(rhVar);
        addView(textView);
        addView(textView2);
        addView(textView3);
        addView(textView4);
        addView(button);
        addView(textView5);
    }

    private void setClickArea(t2a t2aVar) {
        c1 c1Var = this.k;
        setOnTouchListener(c1Var);
        Button button = this.i;
        button.setOnTouchListener(c1Var);
        TextView textView = this.d;
        textView.setOnTouchListener(c1Var);
        zh zhVar = this.b;
        zhVar.setOnTouchListener(c1Var);
        TextView textView2 = this.e;
        textView2.setOnTouchListener(c1Var);
        TextView textView3 = this.g;
        textView3.setOnTouchListener(c1Var);
        rh rhVar = this.c;
        rhVar.setOnTouchListener(c1Var);
        TextView textView4 = this.f;
        textView4.setOnTouchListener(c1Var);
        TextView textView5 = this.h;
        textView5.setOnTouchListener(c1Var);
        if (t2aVar.m) {
            setOnClickListener(this);
            button.setOnClickListener(this);
            textView.setOnClickListener(this);
            zhVar.setOnClickListener(this);
            textView2.setOnClickListener(this);
            textView3.setOnClickListener(this);
            rhVar.setOnClickListener(this);
            textView4.setOnClickListener(this);
            textView5.setOnClickListener(this);
            return;
        }
        if (t2aVar.g) {
            button.setOnClickListener(this);
        } else {
            button.setEnabled(false);
        }
        if (t2aVar.l) {
            setOnClickListener(this);
        } else {
            setOnClickListener(null);
        }
        if (t2aVar.a) {
            textView.setOnClickListener(this);
        } else {
            textView.setOnClickListener(null);
        }
        if (t2aVar.c) {
            zhVar.setOnClickListener(this);
        } else {
            zhVar.setOnClickListener(null);
        }
        if (t2aVar.b) {
            textView2.setOnClickListener(this);
        } else {
            textView2.setOnClickListener(null);
        }
        if (t2aVar.e) {
            textView3.setOnClickListener(this);
            rhVar.setOnClickListener(this);
        } else {
            textView3.setOnClickListener(null);
            rhVar.setOnClickListener(null);
        }
        if (t2aVar.j) {
            textView4.setOnClickListener(this);
        } else {
            textView4.setOnClickListener(null);
        }
        if (t2aVar.h) {
            textView5.setOnClickListener(this);
        } else {
            textView5.setOnClickListener(null);
        }
    }

    private void setClickAreaLegacy(t2a t2aVar) {
        boolean z2 = t2aVar.m;
        Button button = this.i;
        if (z2) {
            setOnClickListener(this);
            button.setOnClickListener(this);
            return;
        }
        if (t2aVar.g) {
            button.setOnClickListener(this);
        } else {
            button.setEnabled(false);
        }
        if (t2aVar.l) {
            setOnClickListener(this);
        } else {
            setOnClickListener(null);
        }
        boolean z3 = t2aVar.a;
        TextView textView = this.d;
        if (z3) {
            textView.setOnClickListener(this);
        } else {
            textView.setOnClickListener(null);
        }
        boolean z4 = t2aVar.c;
        zh zhVar = this.b;
        if (z4) {
            zhVar.setOnClickListener(this);
        } else {
            zhVar.setOnClickListener(null);
        }
        boolean z5 = t2aVar.b;
        TextView textView2 = this.e;
        if (z5) {
            textView2.setOnClickListener(this);
        } else {
            textView2.setOnClickListener(null);
        }
        boolean z6 = t2aVar.e;
        rh rhVar = this.c;
        TextView textView3 = this.g;
        if (z6) {
            textView3.setOnClickListener(this);
            rhVar.setOnClickListener(this);
        } else {
            textView3.setOnClickListener(null);
            rhVar.setOnClickListener(null);
        }
        boolean z7 = t2aVar.j;
        TextView textView4 = this.f;
        if (z7) {
            textView4.setOnClickListener(this);
        } else {
            textView4.setOnClickListener(null);
        }
        boolean z8 = t2aVar.h;
        TextView textView5 = this.h;
        if (z8) {
            textView5.setOnClickListener(this);
        } else {
            textView5.setOnClickListener(null);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z2 = this.y;
        c3 c3Var = this.j;
        if (!z2) {
            c3Var.a(null, 1, new gia());
            return;
        }
        int i = 2;
        Button button = this.i;
        if (view == button) {
            c3Var.a(null, 2, new up9(64, this.x));
            return;
        }
        if (view == button) {
            i = 64;
        } else if (view == this.d) {
            i = 1;
        } else if (view == this.b) {
            i = 4;
        } else if (view != this.e) {
            if (view == this.g) {
                i = 32;
            } else if (view == this.c) {
                i = 16;
            } else if (view == this.f) {
                i = 512;
            } else {
                i = view == this.h ? 128 : 2048;
            }
        }
        c3Var.a(null, 1, new up9(i, this.x));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        TextView textView = this.f;
        int measuredHeight = textView.getMeasuredHeight();
        rh rhVar = this.c;
        int measuredHeight2 = rhVar.getMeasuredHeight();
        int i7 = a.a[this.v.ordinal()];
        Button button = this.i;
        TextView textView2 = this.g;
        int i8 = this.m;
        zh zhVar = this.b;
        TextView textView3 = this.d;
        int i9 = this.n;
        if (i7 != 1) {
            TextView textView4 = this.h;
            if (i7 != 3) {
                l3a.r(zhVar, i8, i8);
                int right = (i8 / 2) + zhVar.getRight();
                int iE = l3a.e(textView2.getMeasuredHeight(), measuredHeight2, measuredHeight);
                int iE2 = l3a.e(i2 + i8, zhVar.getTop());
                if (zhVar.getMeasuredHeight() > 0) {
                    iE2 += (((zhVar.getMeasuredHeight() - textView3.getMeasuredHeight()) - i9) - iE) / 2;
                }
                textView3.layout(right, iE2, textView3.getMeasuredWidth() + right, textView3.getMeasuredHeight() + iE2);
                l3a.g(textView3.getBottom() + i9, right, textView3.getBottom() + i9 + iE, i8 / 4, rhVar, textView2, textView);
                l3a.u(textView4, textView3.getBottom(), textView3.getRight() + i9);
                return;
            }
            int i10 = this.u;
            int i11 = (i4 - i2) - i10;
            l3a.u(zhVar, i11, i10);
            l3a.s(button, i11, (i3 - i) - i10);
            int right2 = zhVar.getRight() + i8;
            int iE3 = l3a.e(textView2.getMeasuredHeight(), measuredHeight2, measuredHeight);
            int measuredHeight3 = ((((zhVar.getMeasuredHeight() - textView3.getMeasuredHeight()) - i9) - iE3) / 2) + l3a.e(zhVar.getTop(), i9);
            textView3.layout(right2, measuredHeight3, textView3.getMeasuredWidth() + right2, textView3.getMeasuredHeight() + measuredHeight3);
            l3a.g(textView3.getBottom() + i9, right2, textView3.getBottom() + i9 + iE3, i8 / 4, rhVar, textView2, textView);
            l3a.u(textView4, textView3.getBottom(), (i8 / 2) + textView3.getRight());
            return;
        }
        int measuredHeight4 = zhVar.getMeasuredHeight();
        if (measuredHeight4 > 0) {
            i5 = measuredHeight4;
            i6 = 1;
        } else {
            i5 = 0;
            i6 = 0;
        }
        int measuredHeight5 = textView3.getMeasuredHeight();
        if (measuredHeight5 > 0) {
            i6++;
            i5 += measuredHeight5;
        }
        TextView textView5 = this.e;
        int measuredHeight6 = textView5.getMeasuredHeight();
        if (measuredHeight6 > 0) {
            i6++;
            i5 += measuredHeight6;
        }
        int iMax = Math.max(rhVar.getMeasuredHeight(), textView.getMeasuredHeight());
        if (iMax > 0) {
            i6++;
            i5 += iMax;
        }
        int measuredHeight7 = button.getMeasuredHeight();
        if (measuredHeight7 > 0) {
            i6++;
            i5 += measuredHeight7;
        }
        int i12 = (i4 - i2) - i5;
        int i13 = i12 / i6;
        if (i13 <= i9) {
            i8 = i9;
        } else if (i13 <= i8) {
            i8 = i13;
        }
        int i14 = (i12 - (i6 * i8)) / 2;
        int i15 = i3 - i;
        l3a.j(zhVar, 0, i14, i15, measuredHeight4 + i14);
        int iE4 = l3a.e(i14, zhVar.getBottom() + i8);
        l3a.j(textView3, 0, iE4, i15, measuredHeight5 + iE4);
        int iE5 = l3a.e(iE4, textView3.getBottom() + i8);
        l3a.j(textView5, 0, iE5, i15, iE5 + measuredHeight6);
        int iE6 = l3a.e(iE5, textView5.getBottom() + i8);
        l3a.g(iE6, ((((i15 - textView2.getMeasuredWidth()) - rhVar.getMeasuredWidth()) - textView.getMeasuredWidth()) - (i9 * 2)) / 2, iMax + iE6, i9, rhVar, textView2, textView);
        int iE7 = l3a.e(iE6, textView.getBottom(), rhVar.getBottom()) + i8;
        l3a.j(button, 0, iE7, i15, measuredHeight7 + iE7);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = this.m;
        int i4 = i3 * 2;
        int i5 = size - i4;
        int i6 = size2 - i4;
        if (i5 == i6) {
            this.v = b.c;
        } else if (i5 > i6) {
            this.v = b.b;
        } else {
            this.v = b.a;
        }
        int i7 = this.l;
        zh zhVar = this.b;
        l3a.i(zhVar, i7, i7, 1073741824);
        TextView textView = this.g;
        int visibility = textView.getVisibility();
        int i8 = this.n;
        if (visibility != 8) {
            l3a.i(textView, (i5 - zhVar.getMeasuredWidth()) - i8, i6, Integer.MIN_VALUE);
            rh rhVar = this.c;
            int i9 = this.t;
            l3a.i(rhVar, i9, i9, 1073741824);
        }
        TextView textView2 = this.f;
        if (textView2.getVisibility() != 8) {
            l3a.i(textView2, (i5 - zhVar.getMeasuredWidth()) - (i3 * 2), i6, Integer.MIN_VALUE);
        }
        b bVar = this.v;
        b bVar2 = b.c;
        int i10 = this.q;
        TextView textView3 = this.d;
        int i11 = this.u;
        on9 on9Var = this.r;
        TextView textView4 = this.h;
        Button button = this.i;
        TextView textView5 = this.e;
        if (bVar == bVar2) {
            int i12 = i11 * 2;
            int i13 = size - i12;
            int i14 = i5 - i12;
            textView3.setGravity(1);
            textView5.setGravity(1);
            textView5.setVisibility(0);
            button.setVisibility(0);
            textView4.setVisibility(8);
            textView3.setTypeface(Typeface.defaultFromStyle(0));
            textView3.setTextSize(1, on9Var.a.get(on9.K));
            button.measure(View.MeasureSpec.makeMeasureSpec(i14, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
            l3a.i(textView3, i14, i14, Integer.MIN_VALUE);
            l3a.i(textView5, i14, i14, Integer.MIN_VALUE);
            setMeasuredDimension(i13, i13);
            return;
        }
        if (bVar != b.b) {
            textView3.setGravity(GravityCompat.START);
            textView5.setVisibility(8);
            button.setVisibility(8);
            textView4.setVisibility(0);
            textView3.setTypeface(textView3.getTypeface(), 1);
            textView3.setTextSize(1, on9Var.a.get(on9.J));
            l3a.i(textView4, i5, i6, Integer.MIN_VALUE);
            int i15 = i3 * 2;
            l3a.i(textView3, ((i5 - zhVar.getMeasuredWidth()) - i15) - textView4.getMeasuredWidth(), zhVar.getMeasuredHeight() - (i8 * 2), Integer.MIN_VALUE);
            setMeasuredDimension(size, l3a.e(zhVar.getMeasuredHeight() + i15, l3a.e(this.s, textView2.getMeasuredHeight()) + textView3.getMeasuredHeight() + i3));
            return;
        }
        textView3.setGravity(GravityCompat.START);
        textView5.setVisibility(8);
        button.setVisibility(0);
        textView3.setTextSize(on9Var.a.get(on9.K));
        textView4.setVisibility(0);
        textView3.setTypeface(textView3.getTypeface(), 1);
        textView3.setTextSize(1, on9Var.a.get(on9.J));
        button.measure(View.MeasureSpec.makeMeasureSpec(i5 / 3, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
        l3a.i(textView4, i5, i6, Integer.MIN_VALUE);
        int measuredWidth = i5 - ((textView4.getMeasuredWidth() + ((i3 * 2) + (button.getMeasuredWidth() + zhVar.getMeasuredWidth()))) + i8);
        l3a.i(textView3, measuredWidth, i6, Integer.MIN_VALUE);
        l3a.i(textView2, measuredWidth, i6, Integer.MIN_VALUE);
        int measuredHeight = (i11 * 2) + button.getMeasuredHeight();
        if (this.w) {
            measuredHeight += this.p;
        }
        setMeasuredDimension(size, measuredHeight);
    }

    @Override // defpackage.nn9
    public void setBanner(xda xdaVar) {
        ev9 ev9Var = xdaVar.X;
        int i = ev9Var.e;
        int i2 = ev9Var.f;
        TextView textView = this.d;
        textView.setTextColor(i2);
        TextView textView2 = this.e;
        textView2.setTextColor(i);
        TextView textView3 = this.f;
        textView3.setTextColor(i);
        TextView textView4 = this.g;
        textView4.setTextColor(i);
        this.c.setColor(i);
        this.w = xdaVar.Z != null;
        this.b.setImageData(xdaVar.q);
        textView.setText(xdaVar.e);
        textView2.setText(xdaVar.c);
        this.y = xdaVar.Q.c;
        String str = xdaVar.m;
        str.getClass();
        switch (str) {
            case "web":
            case "webform":
                textView4.setVisibility(8);
                textView3.setVisibility(0);
                textView3.setText(xdaVar.l);
                textView3.setTextColor(ev9Var.i);
                break;
            case "store":
                textView3.setVisibility(8);
                if (xdaVar.b() <= 0.0f) {
                    textView4.setVisibility(8);
                    break;
                } else {
                    textView4.setVisibility(0);
                    String strValueOf = String.valueOf(xdaVar.b());
                    if (strValueOf.length() > 3) {
                        strValueOf = strValueOf.substring(0, 3);
                    }
                    textView4.setText(strValueOf);
                    break;
                }
                break;
        }
        String strG = xdaVar.g();
        Button button = this.i;
        button.setText(strG);
        l3a.o(button, ev9Var.a, ev9Var.b, this.o);
        button.setTextColor(ev9Var.e);
        this.h.setText(xdaVar.g);
        boolean z2 = this.y;
        t2a t2aVar = xdaVar.r;
        if (z2) {
            setClickArea(t2aVar);
        } else {
            setClickAreaLegacy(t2aVar);
        }
    }
}
