package yads;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.navigation.NavigationBarView;

/* JADX INFO: loaded from: classes4.dex */
public final class i44 extends ViewGroup {
    public final ip0 a;
    public final FrameLayout b;
    public final ImageView c;
    public final TextView d;
    public final ImageView e;
    public final Button f;
    public final TextView g;
    public final ImageView h;
    public final TextView i;
    public final TextView j;
    public final TextView k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;

    public i44(Context context) {
        super(context);
        this.a = new ip0();
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(View.generateViewId());
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-16777216);
        gradientDrawable.setCornerRadius(ip0.a(getContext(), 4.0f));
        frameLayout.setBackground(gradientDrawable);
        frameLayout.setClipToOutline(true);
        this.b = frameLayout;
        ImageView imageView = new ImageView(context);
        imageView.setId(View.generateViewId());
        imageView.setBackgroundColor(-16777216);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.c = imageView;
        TextView textView = new TextView(context);
        textView.setId(View.generateViewId());
        textView.setTextSize(2, 11.0f);
        textView.setTextColor(-16777216);
        textView.setPadding(ip0.a(getContext(), 4.0f), ip0.a(getContext(), 0.0f), ip0.a(getContext(), 4.0f), ip0.a(getContext(), 0.0f));
        textView.setGravity(17);
        textView.setMaxLines(1);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(Color.argb(216, 211, 211, 211));
        gradientDrawable2.setCornerRadius(ip0.a(getContext(), 5.0f));
        textView.setBackground(gradientDrawable2);
        textView.setElevation(999.0f);
        textView.setVisibility(8);
        this.d = textView;
        ImageView imageView2 = new ImageView(context);
        imageView2.setId(View.generateViewId());
        imageView2.setVisibility(8);
        this.e = imageView2;
        Button button = new Button(context, null, R.attr.borderlessButtonStyle);
        button.setId(View.generateViewId());
        button.setTextSize(2, 12.0f);
        button.setTextColor(-16745729);
        button.setTypeface(null, 1);
        button.setMaxLines(1);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        button.setEllipsize(truncateAt);
        button.setGravity(17);
        button.setAllCaps(false);
        button.setPadding(0, 0, 0, 0);
        button.setMinWidth(0);
        button.setMinimumWidth(0);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setIncludeFontPadding(false);
        this.f = button;
        TextView textView2 = new TextView(context);
        textView2.setId(View.generateViewId());
        textView2.setTextSize(2, 10.0f);
        textView2.setTextColor(-7434605);
        textView2.setVisibility(8);
        textView2.setMaxLines(1);
        textView2.setEllipsize(truncateAt);
        textView2.setIncludeFontPadding(false);
        this.g = textView2;
        ImageView imageView3 = new ImageView(context);
        imageView3.setId(View.generateViewId());
        imageView3.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView3.setVisibility(8);
        this.h = imageView3;
        TextView textView3 = new TextView(context);
        textView3.setId(View.generateViewId());
        textView3.setTextSize(2, 11.0f);
        textView3.setTextColor(-16777216);
        textView3.setMaxLines(2);
        textView3.setVisibility(8);
        this.i = textView3;
        TextView textView4 = new TextView(context);
        textView4.setId(View.generateViewId());
        textView4.setTextSize(2, 12.0f);
        textView4.setTypeface(null, 1);
        textView4.setTextColor(-16777216);
        textView4.setMaxLines(2);
        textView4.setEllipsize(truncateAt);
        textView4.setIncludeFontPadding(false);
        textView4.setGravity(8388659);
        this.j = textView4;
        TextView textView5 = new TextView(context);
        textView5.setId(View.generateViewId());
        textView5.setTextSize(2, 12.0f);
        textView5.setTextColor(-7434605);
        textView5.setMaxLines(1);
        textView5.setEllipsize(truncateAt);
        textView5.setVisibility(8);
        textView5.setIncludeFontPadding(false);
        textView5.setGravity(NavigationBarView.ITEM_GRAVITY_START_CENTER);
        this.k = textView5;
        setBackgroundColor(-1);
        setMinimumHeight(ip0.a(getContext(), 50.0f));
        addView(frameLayout);
        frameLayout.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(textView);
        addView(imageView2);
        addView(button);
        addView(textView2);
        addView(imageView3);
        addView(textView3);
        addView(textView4);
        addView(textView5);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int iA;
        int i6 = i3 - i;
        int measuredHeight = i4 - i2;
        FrameLayout frameLayout = this.b;
        int iA2 = h44.a(this, this.a, 1.0f);
        int iA3 = h44.a(this, this.a, 1.0f);
        int iA4 = h44.a(this, this.a, 1.0f) + this.l;
        ip0 ip0Var = this.a;
        Context context = getContext();
        ip0Var.getClass();
        frameLayout.layout(iA2, iA3, iA4, measuredHeight - ip0.a(context, 1.0f));
        if (this.u) {
            ImageView imageView = this.e;
            ip0 ip0Var2 = this.a;
            Context context2 = getContext();
            ip0Var2.getClass();
            int iA5 = (i6 - ip0.a(context2, 4.0f)) - this.e.getMeasuredWidth();
            int iA6 = h44.a(this, this.a, 4.0f);
            ip0 ip0Var3 = this.a;
            Context context3 = getContext();
            ip0Var3.getClass();
            imageView.layout(iA5, iA6, i6 - ip0.a(context3, 4.0f), this.e.getMeasuredHeight() + h44.a(this, this.a, 4.0f));
        }
        ip0 ip0Var4 = this.a;
        Context context4 = getContext();
        ip0Var4.getClass();
        int iA7 = (ip0.a(context4, 4.0f) + (measuredHeight / 2)) - (this.f.getMeasuredHeight() / 2);
        int iA8 = h44.a(this, this.a, 1.0f);
        Button button = this.f;
        int i7 = i6 - iA8;
        button.layout(i7 - button.getMeasuredWidth(), iA7, i7, this.f.getMeasuredHeight() + iA7);
        if (this.v) {
            TextView textView = this.g;
            int i8 = this.m;
            ip0 ip0Var5 = this.a;
            Context context5 = getContext();
            ip0Var5.getClass();
            int iA9 = ip0.a(context5, 3.0f) + i8;
            int measuredHeight2 = measuredHeight - this.g.getMeasuredHeight();
            ip0 ip0Var6 = this.a;
            Context context6 = getContext();
            ip0Var6.getClass();
            int iA10 = measuredHeight2 - ip0.a(context6, 1.0f);
            ip0 ip0Var7 = this.a;
            Context context7 = getContext();
            ip0Var7.getClass();
            textView.layout(iA9, iA10, i6, measuredHeight - ip0.a(context7, 1.0f));
        }
        if (this.w) {
            if (this.x) {
                int measuredWidth = this.h.getMeasuredWidth();
                ip0 ip0Var8 = this.a;
                Context context8 = getContext();
                ip0Var8.getClass();
                iA = ip0.a(context8, 3.0f) + measuredWidth;
            } else {
                iA = 0;
            }
            if (this.x) {
                ImageView imageView2 = this.h;
                int i9 = this.m;
                ip0 ip0Var9 = this.a;
                Context context9 = getContext();
                ip0Var9.getClass();
                int iA11 = ip0.a(context9, 4.0f) + i9;
                int i10 = this.p;
                int i11 = this.m;
                ip0 ip0Var10 = this.a;
                Context context10 = getContext();
                ip0Var10.getClass();
                imageView2.layout(iA11, i10, this.h.getMeasuredWidth() + ip0.a(context10, 4.0f) + i11, this.h.getMeasuredHeight() + this.p);
            }
            TextView textView2 = this.i;
            int i12 = this.m;
            ip0 ip0Var11 = this.a;
            Context context11 = getContext();
            ip0Var11.getClass();
            int iA12 = ip0.a(context11, 4.0f) + i12 + iA;
            int i13 = this.p;
            int i14 = this.m;
            ip0 ip0Var12 = this.a;
            Context context12 = getContext();
            ip0Var12.getClass();
            textView2.layout(iA12, i13, this.i.getMeasuredWidth() + ip0.a(context12, 4.0f) + i14 + iA, this.i.getMeasuredHeight() + this.p);
        }
        int i15 = this.p + (this.w ? this.t : 0);
        TextView textView3 = this.j;
        int i16 = this.m;
        ip0 ip0Var13 = this.a;
        Context context13 = getContext();
        ip0Var13.getClass();
        int iA13 = ip0.a(context13, 4.0f) + i16;
        int i17 = this.m;
        ip0 ip0Var14 = this.a;
        Context context14 = getContext();
        ip0Var14.getClass();
        textView3.layout(iA13, i15, this.j.getMeasuredWidth() + ip0.a(context14, 4.0f) + i17, this.j.getMeasuredHeight() + i15);
        int measuredHeight3 = this.j.getMeasuredHeight() + i15;
        if (this.y && this.k.getVisibility() == 0) {
            int i18 = measuredHeight3 + this.r;
            if (this.v) {
                measuredHeight -= this.g.getMeasuredHeight();
                i5 = this.s;
            } else {
                i5 = this.s;
            }
            int i19 = measuredHeight - i5;
            int measuredHeight4 = this.k.getMeasuredHeight();
            int i20 = i19 - i18;
            int i21 = (int) ((((i20 >= 0 ? i20 : 0) - measuredHeight4) / 2.0f) + i18);
            if (i21 >= i18) {
                i18 = i21;
            }
            int i22 = this.m;
            ip0 ip0Var15 = this.a;
            Context context15 = getContext();
            ip0Var15.getClass();
            int iA14 = ip0.a(context15, 4.0f) + i22;
            TextView textView4 = this.k;
            textView4.layout(iA14, i18, textView4.getMeasuredWidth() + iA14, measuredHeight4 + i18);
        }
        if (defpackage.aa4.e(this.d.getParent(), this.b)) {
            int measuredWidth2 = this.d.getMeasuredWidth();
            int i23 = this.l;
            ip0 ip0Var16 = this.a;
            Context context16 = getContext();
            ip0Var16.getClass();
            int iA15 = i23 - ip0.a(context16, 6.0f);
            if (measuredWidth2 > iA15) {
                measuredWidth2 = iA15;
            }
            TextView textView5 = this.d;
            int iA16 = h44.a(this, this.a, 3.0f);
            int iA17 = h44.a(this, this.a, 3.0f);
            ip0 ip0Var17 = this.a;
            Context context17 = getContext();
            ip0Var17.getClass();
            textView5.layout(iA16, iA17, ip0.a(context17, 3.0f) + measuredWidth2, this.d.getMeasuredHeight() + h44.a(this, this.a, 3.0f));
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int iA;
        int iA2;
        int iA3;
        int measuredHeight;
        int i3;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (size <= 0) {
            size = h44.a(this, this.a, 320.0f);
        }
        if (size2 <= 0) {
            size2 = (size < h44.a(this, this.a, 320.0f) || mode == 1073741824) ? h44.a(this, this.a, 50.0f) : h44.a(this, this.a, 250.0f);
        }
        float f = size2;
        float f2 = f / getContext().getResources().getDisplayMetrics().density;
        float f3 = size;
        float f4 = f3 / getContext().getResources().getDisplayMetrics().density;
        boolean z = f2 > 180.0f;
        boolean z2 = f4 < 320.0f;
        if (z) {
            iA = (int) (f3 * (z2 ? 0.42f : 0.48f));
        } else {
            ip0 ip0Var = this.a;
            Context context = getContext();
            ip0Var.getClass();
            iA = size2 - ip0.a(context, 2.0f);
            if (iA < 0) {
                iA = 0;
            }
        }
        this.l = iA;
        ip0 ip0Var2 = this.a;
        Context context2 = getContext();
        ip0Var2.getClass();
        this.m = ip0.a(context2, 1.0f) + iA;
        this.n = size;
        this.o = size2;
        ip0 ip0Var3 = this.a;
        Context context3 = getContext();
        ip0Var3.getClass();
        int iA4 = size2 - ip0.a(context3, 2.0f);
        if (iA4 < 0) {
            iA4 = 0;
        }
        this.b.measure(View.MeasureSpec.makeMeasureSpec(this.l, 1073741824), View.MeasureSpec.makeMeasureSpec(iA4, 1073741824));
        int iA5 = h44.a(this, this.a, 15.0f);
        this.e.measure(View.MeasureSpec.makeMeasureSpec(iA5, 1073741824), View.MeasureSpec.makeMeasureSpec(iA5, 1073741824));
        int iA6 = h44.a(this, this.a, 84.0f);
        int i4 = size - this.m;
        ip0 ip0Var4 = this.a;
        Context context4 = getContext();
        ip0Var4.getClass();
        int iA7 = i4 - ip0.a(context4, 2.0f);
        if (iA7 < 0) {
            iA7 = 0;
        }
        this.f.measure(View.MeasureSpec.makeMeasureSpec(Math.min(iA7, iA6), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        float f5 = f / getContext().getResources().getDisplayMetrics().density;
        int iA8 = h44.a(this, this.a, f5 >= 80.0f ? 24.0f : 12.0f);
        int i5 = f5 >= 80.0f ? 2 : 1;
        if (this.g.getMaxLines() != i5) {
            this.g.setMaxLines(i5);
        }
        int i6 = size - this.m;
        ip0 ip0Var5 = this.a;
        Context context5 = getContext();
        ip0Var5.getClass();
        int iA9 = i6 - ip0.a(context5, 3.0f);
        if (iA9 < 0) {
            iA9 = 0;
        }
        this.g.measure(View.MeasureSpec.makeMeasureSpec(iA9, 1073741824), View.MeasureSpec.makeMeasureSpec(iA8, Integer.MIN_VALUE));
        int measuredWidth = this.f.getMeasuredWidth();
        int iA10 = this.n;
        float f6 = this.o / getContext().getResources().getDisplayMetrics().density;
        int iA11 = h44.a(this, this.a, 12.0f);
        this.h.measure(View.MeasureSpec.makeMeasureSpec(iA11, 1073741824), View.MeasureSpec.makeMeasureSpec(iA11, 1073741824));
        int iA12 = h44.a(this, this.a, 15.0f);
        if (this.x) {
            ip0 ip0Var6 = this.a;
            Context context6 = getContext();
            ip0Var6.getClass();
            iA2 = ip0.a(context6, 3.0f) + iA11;
        } else {
            iA2 = 0;
        }
        if (this.u) {
            ip0 ip0Var7 = this.a;
            Context context7 = getContext();
            ip0Var7.getClass();
            iA10 = (iA10 - ip0.a(context7, 4.0f)) - iA12;
        }
        int i7 = f6 < 60.0f ? 1 : 2;
        if (this.i.getMaxLines() != i7) {
            this.i.setMaxLines(i7);
        }
        TextView textView = this.i;
        int i8 = iA10 - this.m;
        ip0 ip0Var8 = this.a;
        Context context8 = getContext();
        ip0Var8.getClass();
        int iA13 = (i8 - ip0.a(context8, 4.0f)) - iA2;
        if (iA13 < 0) {
            iA13 = 0;
        }
        textView.measure(View.MeasureSpec.makeMeasureSpec(iA13, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        boolean z3 = ((float) this.o) / getContext().getResources().getDisplayMetrics().density < 60.0f;
        if (z3) {
            iA3 = h44.a(this, this.a, 1.0f);
        } else {
            boolean z4 = this.w;
            ip0 ip0Var9 = this.a;
            iA3 = z4 ? h44.a(this, ip0Var9, 4.0f) : h44.a(this, ip0Var9, 2.0f);
        }
        this.p = iA3;
        this.q = h44.a(this, this.a, z3 ? 1.0f : 2.0f);
        this.r = h44.a(this, this.a, z3 ? 1.0f : 2.0f);
        this.s = h44.a(this, this.a, z3 ? 1.0f : 3.0f);
        if (this.w) {
            measuredHeight = (z3 ? this.i.getMeasuredHeight() : Math.max(this.h.getMeasuredHeight(), this.i.getMeasuredHeight())) + this.q;
        } else {
            measuredHeight = 0;
        }
        this.t = measuredHeight;
        int i9 = this.n;
        int i10 = this.o;
        float f7 = i10 / getContext().getResources().getDisplayMetrics().density;
        int iA14 = h44.a(this, this.a, 1.0f);
        int i11 = i9 - this.m;
        ip0 ip0Var10 = this.a;
        Context context9 = getContext();
        ip0Var10.getClass();
        int iA15 = ((i11 - ip0.a(context9, 4.0f)) - measuredWidth) - iA14;
        if (iA15 < 0) {
            iA15 = 0;
        }
        int measuredHeight2 = this.v ? this.g.getMeasuredHeight() : 0;
        int i12 = this.p + this.t;
        boolean z5 = this.v;
        int i13 = this.s;
        if (z5) {
            i10 -= measuredHeight2;
        }
        int i14 = (i10 - i13) - i12;
        if (i14 < 0) {
            i14 = 0;
        }
        this.k.setSingleLine(false);
        if (this.k.getMaxLines() != 1) {
            this.k.setMaxLines(1);
        }
        this.k.measure(View.MeasureSpec.makeMeasureSpec(iA15 < 0 ? 0 : iA15, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredHeight3 = this.k.getMeasuredHeight();
        if (this.j.getMaxLines() != 1) {
            this.j.setMaxLines(1);
        }
        this.j.measure(View.MeasureSpec.makeMeasureSpec(iA15, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredHeight4 = this.j.getMeasuredHeight();
        int i15 = i14 - (this.y ? this.r + measuredHeight3 : 0);
        if (i15 >= measuredHeight4) {
            measuredHeight4 = i15;
        }
        if (f7 >= 80.0f) {
            i3 = 3;
        } else {
            i3 = f7 >= 60.0f ? 2 : 1;
        }
        if (this.j.getMaxLines() != i3) {
            this.j.setMaxLines(i3);
        }
        this.j.measure(View.MeasureSpec.makeMeasureSpec(iA15, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight4, Integer.MIN_VALUE));
        int measuredHeight5 = (i14 - this.j.getMeasuredHeight()) - this.r;
        if (measuredHeight5 < 0) {
            measuredHeight5 = 0;
        }
        boolean z6 = measuredHeight5 >= measuredHeight3;
        boolean z7 = this.y;
        this.k.setVisibility((z7 && z7 && z6) ? 0 : 8);
        boolean z8 = this.y;
        if (z8 && z6 && measuredHeight3 > 0) {
            int i16 = measuredHeight5 / measuredHeight3;
            int i17 = i16 >= 1 ? i16 : 1;
            this.k.setSingleLine(false);
            if (this.k.getMaxLines() != i17) {
                this.k.setMaxLines(i17);
            }
            TextView textView2 = this.k;
            if (iA15 < 0) {
                iA15 = 0;
            }
            textView2.measure(View.MeasureSpec.makeMeasureSpec(iA15, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight5, Integer.MIN_VALUE));
        } else {
            if (z8) {
                this.k.measure(View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
            }
            if (this.y && !z6) {
                this.j.measure(View.MeasureSpec.makeMeasureSpec(iA15, 1073741824), View.MeasureSpec.makeMeasureSpec(i14, Integer.MIN_VALUE));
            }
        }
        TextView textView3 = this.d;
        int i18 = this.l;
        ip0 ip0Var11 = this.a;
        Context context10 = getContext();
        ip0Var11.getClass();
        textView3.measure(View.MeasureSpec.makeMeasureSpec(i18 - ip0.a(context10, 6.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        int iResolveSize = View.resolveSize(this.n, i);
        int iResolveSize2 = View.resolveSize(this.o, i2);
        ip0 ip0Var12 = this.a;
        Context context11 = getContext();
        ip0Var12.getClass();
        int iA16 = ip0.a(context11, 50.0f);
        if (iResolveSize2 < iA16) {
            iResolveSize2 = iA16;
        }
        setMeasuredDimension(iResolveSize, iResolveSize2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }
}
