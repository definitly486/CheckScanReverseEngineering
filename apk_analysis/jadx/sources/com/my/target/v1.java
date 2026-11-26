package com.my.target;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.my.target.common.views.StarsRatingView;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.gia;
import defpackage.l3a;
import defpackage.o6a;
import defpackage.t2a;
import defpackage.up9;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class v1 extends ViewGroup implements View.OnTouchListener {
    public final zh b;
    public final TextView c;
    public final TextView d;
    public final Button e;
    public final l3a f;
    public final StarsRatingView g;
    public final TextView h;
    public final HashMap i;
    public final boolean j;
    public f2.c k;
    public f2.c l;
    public final int m;
    public final int n;
    public final int o;
    public boolean p;

    public v1(Context context, boolean z) {
        super(context);
        this.i = new HashMap();
        this.p = false;
        this.j = z;
        l3a l3aVar = new l3a(context);
        this.f = l3aVar;
        zh zhVar = new zh(context);
        this.b = zhVar;
        TextView textView = new TextView(context);
        this.c = textView;
        TextView textView2 = new TextView(context);
        this.d = textView2;
        Button button = new Button(context);
        this.e = button;
        StarsRatingView starsRatingView = new StarsRatingView(context);
        this.g = starsRatingView;
        TextView textView3 = new TextView(context);
        this.h = textView3;
        l3a.k(this, 0, 0, -3355444, l3aVar.b(1.0f), 0);
        this.n = l3aVar.b(2.0f);
        this.o = l3aVar.b(12.0f);
        button.setPadding(l3aVar.b(15.0f), l3aVar.b(10.0f), l3aVar.b(15.0f), l3aVar.b(10.0f));
        button.setMinimumWidth(l3aVar.b(100.0f));
        button.setTransformationMethod(null);
        button.setSingleLine();
        if (z) {
            button.setTextSize(20.0f);
        } else {
            button.setTextSize(18.0f);
        }
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        button.setEllipsize(truncateAt);
        button.setElevation(l3aVar.b(2.0f));
        this.m = l3aVar.b(12.0f);
        l3a.o(button, -16733198, -16746839, l3aVar.b(2.0f));
        button.setTextColor(-1);
        if (z) {
            textView.setTextSize(20.0f);
        } else {
            textView.setTextSize(18.0f);
        }
        textView.setTextColor(-16777216);
        textView.setTypeface(null, 1);
        textView.setLines(1);
        textView.setEllipsize(truncateAt);
        textView2.setTextColor(-7829368);
        textView2.setLines(2);
        if (z) {
            textView2.setTextSize(20.0f);
        } else {
            textView2.setTextSize(18.0f);
        }
        textView2.setEllipsize(truncateAt);
        if (z) {
            starsRatingView.setStarSize(l3aVar.b(24.0f));
        } else {
            starsRatingView.setStarSize(l3aVar.b(18.0f));
        }
        starsRatingView.setStarsPadding(l3aVar.b(4.0f));
        l3a.n(this, "card_view");
        l3a.n(textView, "card_title_text");
        l3a.n(textView2, "card_description_text");
        l3a.n(textView3, "card_domain_text");
        l3a.n(button, "card_cta_button");
        l3a.n(starsRatingView, "card_stars_view");
        l3a.n(zhVar, "card_image");
        addView(zhVar);
        addView(textView2);
        addView(textView);
        addView(button);
        addView(starsRatingView);
        addView(textView3);
    }

    public final void a(f2.b bVar, t2a t2aVar, f2.a aVar) {
        this.k = bVar;
        this.l = aVar;
        Button button = this.e;
        if (bVar == null || t2aVar == null) {
            super.setOnClickListener(null);
            button.setOnClickListener(null);
            return;
        }
        boolean z = t2aVar.m;
        setOnTouchListener(this);
        zh zhVar = this.b;
        zhVar.setOnTouchListener(this);
        TextView textView = this.c;
        textView.setOnTouchListener(this);
        TextView textView2 = this.d;
        textView2.setOnTouchListener(this);
        StarsRatingView starsRatingView = this.g;
        starsRatingView.setOnTouchListener(this);
        TextView textView3 = this.h;
        textView3.setOnTouchListener(this);
        button.setOnTouchListener(this);
        boolean z2 = true;
        boolean z3 = z || t2aVar.o;
        Boolean boolValueOf = Boolean.valueOf(t2aVar.d || z3);
        HashMap map = this.i;
        map.put(zhVar, boolValueOf);
        map.put(this, Boolean.valueOf(t2aVar.l || z3));
        map.put(textView, Boolean.valueOf(t2aVar.a || z3));
        map.put(textView2, Boolean.valueOf(t2aVar.b || z3));
        map.put(starsRatingView, Boolean.valueOf(t2aVar.e || z3));
        map.put(textView3, Boolean.valueOf(t2aVar.j || z3));
        if (!t2aVar.g && !z) {
            z2 = false;
        }
        map.put(button, Boolean.valueOf(z2));
    }

    public Button getCtaButtonView() {
        return this.e;
    }

    public TextView getDescriptionTextView() {
        return this.d;
    }

    public TextView getDomainTextView() {
        return this.h;
    }

    public StarsRatingView getRatingView() {
        return this.g;
    }

    public zh getSmartImageView() {
        return this.b;
    }

    public TextView getTitleTextView() {
        return this.c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = this.n;
        int i6 = (i3 - i) - (i5 * 2);
        boolean z2 = !this.j && getResources().getConfiguration().orientation == 2;
        zh zhVar = this.b;
        zhVar.layout(0, 0, zhVar.getMeasuredWidth(), zhVar.getMeasuredHeight());
        TextView textView = this.d;
        TextView textView2 = this.h;
        StarsRatingView starsRatingView = this.g;
        Button button = this.e;
        TextView textView3 = this.c;
        if (z2) {
            textView3.setTypeface(null, 1);
            textView3.layout(0, zhVar.getBottom(), i6, textView3.getMeasuredHeight() + zhVar.getBottom());
            l3a.h(this, 0, 0);
            textView.layout(0, 0, 0, 0);
            button.layout(0, 0, 0, 0);
            starsRatingView.layout(0, 0, 0, 0);
            textView2.layout(0, 0, 0, 0);
            return;
        }
        textView3.setTypeface(null, 0);
        l3a.k(this, 0, 0, -3355444, this.f.b(1.0f), 0);
        int i7 = this.o;
        textView3.layout(i5 + i7, zhVar.getBottom(), textView3.getMeasuredWidth() + i5 + i7, textView3.getMeasuredHeight() + zhVar.getBottom());
        textView.layout(i5 + i7, textView3.getBottom(), textView.getMeasuredWidth() + i5 + i7, textView.getMeasuredHeight() + textView3.getBottom());
        int measuredWidth = (i6 - button.getMeasuredWidth()) / 2;
        button.layout(measuredWidth, (i4 - button.getMeasuredHeight()) - i7, button.getMeasuredWidth() + measuredWidth, i4 - i7);
        int measuredWidth2 = (i6 - starsRatingView.getMeasuredWidth()) / 2;
        starsRatingView.layout(measuredWidth2, (button.getTop() - i7) - starsRatingView.getMeasuredHeight(), starsRatingView.getMeasuredWidth() + measuredWidth2, button.getTop() - i7);
        int measuredWidth3 = (i6 - textView2.getMeasuredWidth()) / 2;
        textView2.layout(measuredWidth3, (button.getTop() - textView2.getMeasuredHeight()) - i7, textView2.getMeasuredWidth() + measuredWidth3, button.getTop() - i7);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int measuredHeight;
        int measuredHeight2;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        boolean z = !this.j && getResources().getConfiguration().orientation == 2;
        int i3 = size == 0 ? 0 : Integer.MIN_VALUE;
        int i4 = this.n * 2;
        int i5 = size2 - i4;
        int i6 = size - i4;
        TextView textView = this.d;
        StarsRatingView starsRatingView = this.g;
        TextView textView2 = this.h;
        Button button = this.e;
        TextView textView3 = this.c;
        if (z) {
            textView3.measure(View.MeasureSpec.makeMeasureSpec(size, i3), View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE));
            textView.measure(0, 0);
            starsRatingView.measure(0, 0);
            textView2.measure(0, 0);
            button.measure(0, 0);
        } else {
            textView3.measure(View.MeasureSpec.makeMeasureSpec(i6 - (this.o * 2), i3), View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE));
            textView.measure(View.MeasureSpec.makeMeasureSpec(i6 - (this.o * 2), i3), View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE));
            starsRatingView.measure(View.MeasureSpec.makeMeasureSpec(i6, i3), View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE));
            textView2.measure(View.MeasureSpec.makeMeasureSpec(i6, i3), View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE));
            button.measure(View.MeasureSpec.makeMeasureSpec(i6 - (this.o * 2), i3), View.MeasureSpec.makeMeasureSpec(i5 - (this.o * 2), Integer.MIN_VALUE));
        }
        if (z) {
            measuredHeight = size2 - textView3.getMeasuredHeight();
            measuredHeight2 = this.n;
        } else {
            measuredHeight = (((size2 - button.getMeasuredHeight()) - (this.m * 2)) - Math.max(starsRatingView.getMeasuredHeight(), textView2.getMeasuredHeight())) - textView.getMeasuredHeight();
            measuredHeight2 = textView3.getMeasuredHeight();
        }
        int i7 = measuredHeight - measuredHeight2;
        if (i7 <= size) {
            size = i7;
        }
        this.b.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size, 1073741824));
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        e6a d6aVar;
        boolean z = this.p;
        HashMap map = this.i;
        Button button = this.e;
        l3a l3aVar = this.f;
        if (!z) {
            if (!map.containsKey(view)) {
                return false;
            }
            boolean zBooleanValue = ((Boolean) map.get(view)).booleanValue();
            view.setClickable(zBooleanValue);
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    if (this.k != null) {
                        boolean zEquals = Boolean.TRUE.equals(map.get(button));
                        f2.c cVar = this.l;
                        if (cVar != null && view == button && zEquals) {
                            cVar.a(view, new gia());
                        } else {
                            this.k.a(view, new gia());
                        }
                    }
                    if (zBooleanValue) {
                        if (view == button) {
                            button.setPressed(false);
                            return true;
                        }
                        l3a.k(this, 0, 0, -3355444, l3aVar.b(1.0f), 0);
                        return true;
                    }
                } else if (action == 3 && zBooleanValue) {
                    if (view == button) {
                        button.setPressed(false);
                        return true;
                    }
                    l3a.k(this, 0, 0, -3355444, l3aVar.b(1.0f), 0);
                    return true;
                }
            } else if (zBooleanValue) {
                if (view == button) {
                    button.setPressed(true);
                    return true;
                }
                setBackgroundColor(-3806472);
            }
            return true;
        }
        if (!map.containsKey(view)) {
            return false;
        }
        boolean zBooleanValue2 = ((Boolean) map.get(view)).booleanValue();
        view.setClickable(zBooleanValue2);
        int action2 = motionEvent.getAction();
        if (action2 != 0) {
            if (action2 == 1) {
                if (this.k != null) {
                    boolean zEquals2 = Boolean.TRUE.equals(map.get(button));
                    int i = 2;
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
                        i = 64;
                    } else if (view == this.b) {
                        i = 8;
                    } else if (view == this.c) {
                        i = 1;
                    } else if (view != this.d) {
                        if (view == this.g) {
                            i = 16;
                        } else {
                            i = view == this.h ? 512 : 2048;
                        }
                    }
                    up9 up9Var = new up9(i, d6aVar);
                    f2.c cVar2 = this.l;
                    if (cVar2 != null && view == button && zEquals2) {
                        cVar2.a(view, up9Var);
                    } else {
                        f2.c cVar3 = this.k;
                        if (cVar3 != null) {
                            cVar3.a(view, up9Var);
                        }
                    }
                }
                if (zBooleanValue2) {
                    if (view == button) {
                        button.setPressed(false);
                        return true;
                    }
                    l3a.k(this, 0, 0, -3355444, l3aVar.b(1.0f), 0);
                    return true;
                }
            } else if (action2 == 3 && zBooleanValue2) {
                if (view == button) {
                    button.setPressed(false);
                    return true;
                }
                l3a.k(this, 0, 0, -3355444, l3aVar.b(1.0f), 0);
                return true;
            }
        } else if (zBooleanValue2) {
            if (view == button) {
                button.setPressed(true);
                return true;
            }
            setBackgroundColor(-3806472);
        }
        return true;
    }

    public void setIsHitMapEnabled(boolean z) {
        this.p = z;
    }
}
