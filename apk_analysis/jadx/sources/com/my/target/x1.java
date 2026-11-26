package com.my.target;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.ev9;
import defpackage.fo9;
import defpackage.gia;
import defpackage.h14;
import defpackage.l3a;
import defpackage.o6a;
import defpackage.on9;
import defpackage.s0a;
import defpackage.t2a;
import defpackage.up9;
import defpackage.y14;
import java.util.HashSet;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class x1 extends LinearLayout implements View.OnTouchListener, r2 {
    public final zh b;
    public final TextView c;
    public final TextView d;
    public final Button e;
    public final on9 f;
    public final HashSet g;
    public final int h;
    public r2.a i;
    public h14 j;
    public boolean k;
    public boolean l;

    public x1(Context context, ev9 ev9Var, on9 on9Var) {
        super(context);
        this.g = new HashSet();
        this.l = false;
        setOrientation(1);
        this.f = on9Var;
        zh zhVar = new zh(context);
        this.b = zhVar;
        TextView textView = new TextView(context);
        this.c = textView;
        TextView textView2 = new TextView(context);
        this.d = textView2;
        Button button = new Button(context);
        this.e = button;
        int i = on9.T;
        SparseIntArray sparseIntArray = on9Var.a;
        this.h = sparseIntArray.get(i);
        int i2 = sparseIntArray.get(on9.i);
        int i3 = sparseIntArray.get(on9.H);
        button.setTransformationMethod(null);
        button.setSingleLine();
        button.setTextSize(1, sparseIntArray.get(on9.w));
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        button.setEllipsize(truncateAt);
        button.setGravity(17);
        button.setIncludeFontPadding(false);
        button.setPadding(i2, 0, i2, 0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        int i4 = on9.P;
        layoutParams.leftMargin = sparseIntArray.get(i4);
        layoutParams.rightMargin = sparseIntArray.get(i4);
        layoutParams.topMargin = i3;
        layoutParams.gravity = 1;
        button.setLayoutParams(layoutParams);
        l3a.o(button, ev9Var.a, ev9Var.b, sparseIntArray.get(on9.o));
        button.setTextColor(ev9Var.c);
        textView.setTextSize(1, sparseIntArray.get(on9.Q));
        textView.setTextColor(ev9Var.f);
        textView.setIncludeFontPadding(false);
        int i5 = on9.O;
        textView.setPadding(sparseIntArray.get(i5), 0, sparseIntArray.get(i5), 0);
        textView.setTypeface(null, 1);
        textView.setLines(sparseIntArray.get(on9.D));
        textView.setEllipsize(truncateAt);
        textView.setGravity(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.topMargin = i2;
        textView.setLayoutParams(layoutParams2);
        textView2.setTextColor(ev9Var.e);
        textView2.setIncludeFontPadding(false);
        textView2.setLines(sparseIntArray.get(on9.E));
        textView2.setTextSize(1, sparseIntArray.get(on9.R));
        textView2.setEllipsize(truncateAt);
        textView2.setPadding(sparseIntArray.get(i5), 0, sparseIntArray.get(i5), 0);
        textView2.setGravity(1);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 1;
        textView2.setLayoutParams(layoutParams3);
        l3a.n(this, "card_view");
        l3a.n(textView, "card_title_text");
        l3a.n(textView2, "card_description_text");
        l3a.n(button, "card_cta_button");
        l3a.n(zhVar, "card_image");
        addView(zhVar);
        addView(textView);
        addView(textView2);
        addView(button);
    }

    private void setClickArea(t2a t2aVar) {
        setOnTouchListener(this);
        zh zhVar = this.b;
        zhVar.setOnTouchListener(this);
        TextView textView = this.c;
        textView.setOnTouchListener(this);
        TextView textView2 = this.d;
        textView2.setOnTouchListener(this);
        Button button = this.e;
        button.setOnTouchListener(this);
        HashSet hashSet = this.g;
        hashSet.clear();
        boolean z = t2aVar.m;
        boolean z2 = t2aVar.o;
        if (z) {
            this.k = true;
            return;
        }
        if (t2aVar.g) {
            hashSet.add(button);
        } else {
            button.setEnabled(false);
            hashSet.remove(button);
        }
        if (t2aVar.l || z2) {
            hashSet.add(this);
        } else {
            hashSet.remove(this);
        }
        if (t2aVar.a || z2) {
            hashSet.add(textView);
        } else {
            hashSet.remove(textView);
        }
        if (t2aVar.b || z2) {
            hashSet.add(textView2);
        } else {
            hashSet.remove(textView2);
        }
        if (t2aVar.d || z2) {
            hashSet.add(zhVar);
        } else {
            hashSet.remove(zhVar);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        zh zhVar = this.b;
        zhVar.measure(i, i2);
        TextView textView = this.c;
        if (textView.getVisibility() == 0) {
            textView.measure(i, i2);
        }
        TextView textView2 = this.d;
        if (textView2.getVisibility() == 0) {
            textView2.measure(i, i2);
        }
        Button button = this.e;
        if (button.getVisibility() == 0) {
            l3a.i(button, zhVar.getMeasuredWidth() - (this.f.a.get(on9.P) * 2), this.h, 1073741824);
        }
        if (getMeasuredHeight() > 0 && getMeasuredWidth() > 0 && getMeasuredWidth() == size) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        int measuredWidth = zhVar.getMeasuredWidth();
        int measuredHeight = zhVar.getMeasuredHeight();
        if (size > size2) {
            setMeasuredDimension(measuredWidth, measuredHeight);
            return;
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            int paddingBottom = childAt.getPaddingBottom() + childAt.getPaddingTop() + childAt.getMeasuredHeight() + paddingTop;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            paddingTop = layoutParams.bottomMargin + paddingBottom + layoutParams.topMargin;
        }
        setMeasuredDimension(measuredWidth, paddingTop);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003c A[PHI: r0
      0x003c: PHI (r0v5 boolean) = (r0v4 boolean), (r0v8 boolean) binds: [B:20:0x003a, B:16:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:22:0x003e A[PHI: r0
      0x003e: PHI (r0v7 boolean) = (r0v4 boolean), (r0v4 boolean), (r0v8 boolean) binds: [B:19:0x0038, B:20:0x003a, B:16:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean zContains;
        boolean zContains2;
        int i;
        e6a d6aVar;
        boolean z = this.l;
        Button button = this.e;
        int i2 = 2;
        HashSet hashSet = this.g;
        if (z) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    setBackgroundColor(0);
                    button.setPressed(false);
                    if (this.i != null) {
                        if (this.k) {
                            zContains2 = true;
                            if (view == button) {
                                i = 2;
                            } else {
                                i = 1;
                            }
                        } else {
                            zContains2 = hashSet.contains(view);
                            if (zContains2 && view == button) {
                                i = 2;
                            } else {
                                i = 1;
                            }
                        }
                        if (motionEvent.getAction() == 1) {
                            float x = motionEvent.getX();
                            float y = motionEvent.getY();
                            float f = view.getContext().getResources().getDisplayMetrics().widthPixels;
                            float f2 = view.getContext().getResources().getDisplayMetrics().heightPixels;
                            int[] iArr = new int[2];
                            view.getLocationOnScreen(iArr);
                            d6aVar = new o6a((iArr[0] + x) / f, (iArr[1] + y) / f2);
                        } else {
                            d6aVar = null;
                        }
                        if (d6aVar == null) {
                            d6aVar = new d6a();
                        }
                        if (view == button) {
                            i2 = 64;
                        } else if (view == this.c) {
                            i2 = 1;
                        } else if (view != this.d) {
                            i2 = view == this.b ? 8 : 2048;
                        }
                        up9 up9Var = new up9(i2, d6aVar);
                        r2.a aVar = this.i;
                        if (aVar != null) {
                            ((n2) aVar).c(zContains2, i, up9Var);
                            return true;
                        }
                    }
                } else if (action == 3) {
                    setBackgroundColor(0);
                    button.setPressed(false);
                    return true;
                }
            } else if (this.k || hashSet.contains(view)) {
                if (view == button) {
                    button.setPressed(true);
                    return true;
                }
                setBackgroundColor(-13421773);
                return true;
            }
        } else {
            int action2 = motionEvent.getAction();
            if (action2 != 0) {
                if (action2 == 1) {
                    setBackgroundColor(0);
                    button.setPressed(false);
                    if (this.i != null) {
                        if (this.k) {
                            zContains = true;
                            if (view != button) {
                                i2 = 1;
                            }
                        } else {
                            zContains = hashSet.contains(view);
                            if (!zContains || view != button) {
                                i2 = 1;
                            }
                        }
                        ((n2) this.i).c(zContains, i2, new gia());
                        return true;
                    }
                } else if (action2 == 3) {
                    setBackgroundColor(0);
                    button.setPressed(false);
                    return true;
                }
            } else if (this.k || hashSet.contains(view)) {
                if (view == button) {
                    button.setPressed(true);
                    return true;
                }
                setBackgroundColor(-13421773);
                return true;
            }
        }
        return true;
    }

    @Override // com.my.target.r2
    public void setBanner(fo9 fo9Var) {
        TextView textView = this.c;
        Button button = this.e;
        TextView textView2 = this.d;
        zh zhVar = this.b;
        if (fo9Var == null) {
            this.g.clear();
            h14 h14Var = this.j;
            if (h14Var != null) {
                WeakHashMap weakHashMap = s0a.c;
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    y14.u(null, "ImageLoaderUtils: Method cancel called from worker thread");
                } else {
                    WeakHashMap weakHashMap2 = s0a.c;
                    if (weakHashMap2.get(zhVar) == h14Var) {
                        weakHashMap2.remove(zhVar);
                    }
                }
            }
            zhVar.setPlaceholderDimensions(0, 0);
            textView.setVisibility(8);
            textView2.setVisibility(8);
            button.setVisibility(8);
            return;
        }
        this.l = fo9Var.Q.c;
        h14 h14Var2 = fo9Var.p;
        this.j = h14Var2;
        if (h14Var2 != null) {
            zhVar.setPlaceholderDimensions(h14Var2.b, h14Var2.c);
            s0a.c(this.j, zhVar);
        }
        if (fo9Var.R) {
            textView.setVisibility(8);
            textView2.setVisibility(8);
            button.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView2.setVisibility(0);
            button.setVisibility(0);
            textView.setText(fo9Var.e);
            textView2.setText(fo9Var.c);
            button.setText(fo9Var.g());
        }
        setClickArea(fo9Var.r);
    }

    @Override // com.my.target.r2
    public void setListener(r2.a aVar) {
        this.i = aVar;
    }
}
