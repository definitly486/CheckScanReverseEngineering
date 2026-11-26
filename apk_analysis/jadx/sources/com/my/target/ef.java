package com.my.target;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.my.target.common.views.StarsRatingView;
import com.my.target.ef;
import com.my.target.fj;
import com.my.target.l;
import com.my.target.w2;
import com.my.target.wf;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.h14;
import defpackage.kha;
import defpackage.l3a;
import defpackage.ml0;
import defpackage.t2a;
import defpackage.xda;
import defpackage.ym2;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class ef extends ViewGroup {
    public static final /* synthetic */ int r = 0;
    public final TextView b;
    public final fj c;
    public final TextView d;
    public final LinearLayout e;
    public final StarsRatingView f;
    public final TextView g;
    public final TextView h;
    public final Button i;
    public final zh j;
    public final l3a k;
    public final c1 l;
    public final int m;
    public final int n;
    public final int o;
    public e6a p;
    public boolean q;

    public class a implements Animator.AnimatorListener {
        public a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            ef efVar = ef.this;
            efVar.d.setVisibility(8);
            efVar.b.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    public class b implements Animator.AnimatorListener {
        public b() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            ef efVar = ef.this;
            TextView textView = efVar.h;
            LinearLayout linearLayout = efVar.e;
            if (linearLayout.isEnabled()) {
                linearLayout.setVisibility(8);
            }
            if (textView.isEnabled()) {
                textView.setVisibility(8);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    public ef(Context context, l3a l3aVar) {
        super(context);
        this.l = new c1(new ym2(this));
        this.p = new d6a();
        this.q = false;
        this.k = l3aVar;
        Button button = new Button(context);
        this.i = button;
        l3a.n(button, "cta_button");
        zh zhVar = new zh(context);
        this.j = zhVar;
        l3a.n(zhVar, "icon_image");
        this.c = new fj(context);
        TextView textView = new TextView(context);
        this.b = textView;
        l3a.n(textView, "description_text");
        TextView textView2 = new TextView(context);
        this.d = textView2;
        l3a.n(textView2, "disclaimer_text");
        this.e = new LinearLayout(context);
        StarsRatingView starsRatingView = new StarsRatingView(context);
        this.f = starsRatingView;
        l3a.n(starsRatingView, "stars_view");
        TextView textView3 = new TextView(context);
        this.g = textView3;
        l3a.n(textView3, "votes_text");
        TextView textView4 = new TextView(context);
        this.h = textView4;
        l3a.n(textView4, "domain_text");
        this.m = l3aVar.b(16.0f);
        this.o = l3aVar.b(8.0f);
        this.n = l3aVar.b(64.0f);
    }

    public final void a(int i, View... viewArr) {
        zh zhVar = this.j;
        int height = zhVar.getHeight();
        int height2 = getHeight();
        Button button = this.i;
        int width = button.getWidth();
        int height3 = button.getHeight();
        int width2 = zhVar.getWidth();
        zhVar.setPivotX(0.0f);
        zhVar.setPivotY(height / 2.0f);
        button.setPivotX(width);
        button.setPivotY(height3 / 2.0f);
        float f = height2 * 0.3f;
        ArrayList arrayList = new ArrayList();
        Property property = View.SCALE_X;
        arrayList.add(ObjectAnimator.ofFloat(button, (Property<Button, Float>) property, 0.7f));
        Property property2 = View.SCALE_Y;
        arrayList.add(ObjectAnimator.ofFloat(button, (Property<Button, Float>) property2, 0.7f));
        arrayList.add(ObjectAnimator.ofFloat(zhVar, (Property<zh, Float>) property, 0.7f));
        arrayList.add(ObjectAnimator.ofFloat(zhVar, (Property<zh, Float>) property2, 0.7f));
        TextView textView = this.b;
        Property property3 = View.ALPHA;
        arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property3, 0.0f));
        TextView textView2 = this.d;
        arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property3, 0.0f));
        LinearLayout linearLayout = this.e;
        if (linearLayout.isEnabled()) {
            arrayList.add(ObjectAnimator.ofFloat(linearLayout, (Property<LinearLayout, Float>) property3, 1.0f));
        }
        arrayList.add(ObjectAnimator.ofFloat(this, (Property<ef, Float>) property3, 0.6f));
        float f2 = -(width2 * 0.3f);
        fj fjVar = this.c;
        Property property4 = View.TRANSLATION_X;
        arrayList.add(ObjectAnimator.ofFloat(fjVar, (Property<fj, Float>) property4, f2));
        arrayList.add(ObjectAnimator.ofFloat(linearLayout, (Property<LinearLayout, Float>) property4, f2));
        TextView textView3 = this.h;
        arrayList.add(ObjectAnimator.ofFloat(textView3, (Property<TextView, Float>) property4, f2));
        arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property4, f2));
        arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property4, f2));
        Property property5 = View.TRANSLATION_Y;
        arrayList.add(ObjectAnimator.ofFloat(this, (Property<ef, Float>) property5, f));
        float f3 = (-f) / 2.0f;
        arrayList.add(ObjectAnimator.ofFloat(button, (Property<Button, Float>) property5, f3));
        arrayList.add(ObjectAnimator.ofFloat(zhVar, (Property<zh, Float>) property5, f3));
        for (View view : viewArr) {
            arrayList.add(ObjectAnimator.ofFloat(view, (Property<View, Float>) property5, f));
        }
        if (linearLayout.isEnabled()) {
            linearLayout.setVisibility(0);
        }
        if (textView3.isEnabled()) {
            textView3.setVisibility(0);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.addListener(new a());
        animatorSet.playTogether(arrayList);
        animatorSet.setDuration(i);
        animatorSet.start();
    }

    public final void b(t2a t2aVar, final ml0 ml0Var) {
        View.OnClickListener onClickListener;
        View.OnClickListener onClickListener2;
        boolean z = t2aVar.p;
        boolean z2 = t2aVar.j;
        boolean z3 = t2aVar.f;
        boolean z4 = t2aVar.e;
        boolean z5 = t2aVar.b;
        boolean z6 = t2aVar.c;
        boolean z7 = t2aVar.h;
        boolean z8 = t2aVar.a;
        boolean z9 = t2aVar.l;
        boolean z10 = t2aVar.m;
        boolean z11 = t2aVar.g;
        boolean z12 = this.q;
        TextView textView = this.d;
        TextView textView2 = this.h;
        TextView textView3 = this.g;
        StarsRatingView starsRatingView = this.f;
        TextView textView4 = this.b;
        zh zhVar = this.j;
        fj fjVar = this.c;
        Button button = this.i;
        if (!z12) {
            View.OnClickListener onClickListener3 = new View.OnClickListener() { // from class: ku9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    l.a aVar;
                    int i = ef.r;
                    int i2 = view == this.b.i ? 2 : 1;
                    gia giaVar = new gia();
                    wf wfVar = (wf) ((ml0) ml0Var).c;
                    if (!view.isEnabled() || (aVar = wfVar.t) == null) {
                        return;
                    }
                    ((w2.b) aVar).b(i2, giaVar);
                }
            };
            if (z10) {
                setOnClickListener(onClickListener3);
                button.setOnClickListener(onClickListener3);
                return;
            }
            if (z11) {
                button.setOnClickListener(onClickListener3);
            } else {
                button.setEnabled(false);
            }
            if (z9) {
                setOnClickListener(onClickListener3);
                onClickListener = null;
            } else {
                onClickListener = null;
                setOnClickListener(null);
            }
            if (z8) {
                fjVar.getLeftText().setOnClickListener(onClickListener3);
            } else {
                fjVar.getLeftText().setOnClickListener(onClickListener);
            }
            if (z7) {
                fjVar.getRightBorderedView().setOnClickListener(onClickListener3);
            } else {
                fjVar.getRightBorderedView().setOnClickListener(onClickListener);
            }
            if (z6) {
                zhVar.setOnClickListener(onClickListener3);
            } else {
                zhVar.setOnClickListener(onClickListener);
            }
            if (z5) {
                textView4.setOnClickListener(onClickListener3);
            } else {
                textView4.setOnClickListener(onClickListener);
            }
            if (z4) {
                starsRatingView.setOnClickListener(onClickListener3);
            } else {
                starsRatingView.setOnClickListener(onClickListener);
            }
            if (z3) {
                textView3.setOnClickListener(onClickListener3);
            } else {
                textView3.setOnClickListener(onClickListener);
            }
            if (z2) {
                textView2.setOnClickListener(onClickListener3);
            } else {
                textView2.setOnClickListener(onClickListener);
            }
            if (z) {
                textView.setOnClickListener(onClickListener3);
                return;
            } else {
                textView.setOnClickListener(onClickListener);
                return;
            }
        }
        View.OnClickListener onClickListener4 = new View.OnClickListener() { // from class: ju9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l.a aVar;
                int i = ef.r;
                ef efVar = this.b;
                Button button2 = efVar.i;
                int i2 = 1;
                int i3 = view == button2 ? 2 : 1;
                fj fjVar2 = efVar.c;
                if (view == button2) {
                    i2 = 64;
                } else if (view != fjVar2.getLeftText()) {
                    if (view == fjVar2.getRightBorderedView()) {
                        i2 = 128;
                    } else if (view == efVar.j) {
                        i2 = 4;
                    } else if (view == efVar.b) {
                        i2 = 2;
                    } else if (view == efVar.f) {
                        i2 = 16;
                    } else if (view == efVar.g) {
                        i2 = 32;
                    } else if (view == efVar.h) {
                        i2 = 512;
                    } else {
                        i2 = view == efVar.d ? 32768 : 2048;
                    }
                }
                up9 up9Var = new up9(i2, efVar.p);
                wf wfVar = (wf) ((ml0) ml0Var).c;
                if (!view.isEnabled() || (aVar = wfVar.t) == null) {
                    return;
                }
                ((w2.b) aVar).b(i3, up9Var);
            }
        };
        c1 c1Var = this.l;
        setOnTouchListener(c1Var);
        button.setOnTouchListener(c1Var);
        fjVar.getLeftText().setOnTouchListener(c1Var);
        fjVar.getRightBorderedView().setOnTouchListener(c1Var);
        zhVar.setOnTouchListener(c1Var);
        textView4.setOnTouchListener(c1Var);
        starsRatingView.setOnTouchListener(c1Var);
        textView3.setOnTouchListener(c1Var);
        textView2.setOnTouchListener(c1Var);
        textView.setOnTouchListener(c1Var);
        if (z11 || z10) {
            button.setOnClickListener(onClickListener4);
        } else {
            button.setEnabled(false);
        }
        if (z9 || z10) {
            onClickListener2 = null;
            setOnClickListener(onClickListener4);
        } else {
            onClickListener2 = null;
            setOnClickListener(null);
        }
        if (z8 || z10) {
            fjVar.getLeftText().setOnClickListener(onClickListener4);
        } else {
            fjVar.getLeftText().setOnClickListener(onClickListener2);
        }
        if (z7 || z10) {
            fjVar.getRightBorderedView().setOnClickListener(onClickListener4);
        } else {
            fjVar.getRightBorderedView().setOnClickListener(onClickListener2);
        }
        if (z6 || z10) {
            zhVar.setOnClickListener(onClickListener4);
        } else {
            zhVar.setOnClickListener(onClickListener2);
        }
        if (z5 || z10) {
            textView4.setOnClickListener(onClickListener4);
        } else {
            textView4.setOnClickListener(onClickListener2);
        }
        if (z4 || z10) {
            starsRatingView.setOnClickListener(onClickListener4);
        } else {
            starsRatingView.setOnClickListener(onClickListener2);
        }
        if (z3 || z10) {
            textView3.setOnClickListener(onClickListener4);
        } else {
            textView3.setOnClickListener(onClickListener2);
        }
        if (z2 || z10) {
            textView2.setOnClickListener(onClickListener4);
        } else {
            textView2.setOnClickListener(onClickListener2);
        }
        if (z || z10) {
            textView.setOnClickListener(onClickListener4);
        } else {
            textView.setOnClickListener(onClickListener2);
        }
    }

    public final void c(View... viewArr) {
        ArrayList arrayList = new ArrayList();
        Button button = this.i;
        Property property = View.SCALE_Y;
        arrayList.add(ObjectAnimator.ofFloat(button, (Property<Button, Float>) property, 1.0f));
        Property property2 = View.SCALE_X;
        arrayList.add(ObjectAnimator.ofFloat(button, (Property<Button, Float>) property2, 1.0f));
        zh zhVar = this.j;
        arrayList.add(ObjectAnimator.ofFloat(zhVar, (Property<zh, Float>) property, 1.0f));
        arrayList.add(ObjectAnimator.ofFloat(zhVar, (Property<zh, Float>) property2, 1.0f));
        TextView textView = this.b;
        Property property3 = View.ALPHA;
        arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property3, 1.0f));
        TextView textView2 = this.d;
        arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property3, 1.0f));
        LinearLayout linearLayout = this.e;
        if (linearLayout.isEnabled()) {
            arrayList.add(ObjectAnimator.ofFloat(linearLayout, (Property<LinearLayout, Float>) property3, 0.0f));
        }
        arrayList.add(ObjectAnimator.ofFloat(this, (Property<ef, Float>) property3, 1.0f));
        fj fjVar = this.c;
        Property property4 = View.TRANSLATION_X;
        arrayList.add(ObjectAnimator.ofFloat(fjVar, (Property<fj, Float>) property4, 0.0f));
        arrayList.add(ObjectAnimator.ofFloat(linearLayout, (Property<LinearLayout, Float>) property4, 0.0f));
        arrayList.add(ObjectAnimator.ofFloat(this.h, (Property<TextView, Float>) property4, 0.0f));
        arrayList.add(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property4, 0.0f));
        arrayList.add(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) property4, 0.0f));
        Property property5 = View.TRANSLATION_Y;
        arrayList.add(ObjectAnimator.ofFloat(this, (Property<ef, Float>) property5, 0.0f));
        arrayList.add(ObjectAnimator.ofFloat(button, (Property<Button, Float>) property5, 0.0f));
        arrayList.add(ObjectAnimator.ofFloat(zhVar, (Property<zh, Float>) property5, 0.0f));
        for (View view : viewArr) {
            arrayList.add(ObjectAnimator.ofFloat(view, (Property<View, Float>) property5, 0.0f));
        }
        if (!TextUtils.isEmpty(textView2.getText().toString())) {
            textView2.setVisibility(0);
        }
        textView.setVisibility(0);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.addListener(new b());
        animatorSet.setDuration(300L);
        animatorSet.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        zh zhVar = this.j;
        int measuredHeight2 = zhVar.getMeasuredHeight();
        int measuredWidth2 = zhVar.getMeasuredWidth();
        int i5 = (measuredHeight - measuredHeight2) / 2;
        int i6 = this.m;
        zhVar.layout(i6, i5, i6 + measuredWidth2, measuredHeight2 + i5);
        Button button = this.i;
        int measuredWidth3 = button.getMeasuredWidth();
        int measuredHeight3 = button.getMeasuredHeight();
        int i7 = (measuredHeight - measuredHeight3) / 2;
        button.layout((measuredWidth - measuredWidth3) - i6, i7, measuredWidth - i6, measuredHeight3 + i7);
        int i8 = measuredWidth2 + i6 + i6;
        fj fjVar = this.c;
        int measuredWidth4 = fjVar.getMeasuredWidth() + i8;
        int measuredHeight4 = fjVar.getMeasuredHeight();
        int i9 = this.o;
        fjVar.layout(i8, i9, measuredWidth4, measuredHeight4 + i9);
        int bottom = fjVar.getBottom();
        LinearLayout linearLayout = this.e;
        linearLayout.layout(i8, bottom, linearLayout.getMeasuredWidth() + i8, linearLayout.getMeasuredHeight() + fjVar.getBottom());
        int bottom2 = fjVar.getBottom();
        TextView textView = this.h;
        textView.layout(i8, bottom2, textView.getMeasuredWidth() + i8, textView.getMeasuredHeight() + fjVar.getBottom());
        int bottom3 = fjVar.getBottom();
        TextView textView2 = this.b;
        textView2.layout(i8, bottom3, textView2.getMeasuredWidth() + i8, textView2.getMeasuredHeight() + fjVar.getBottom());
        int bottom4 = textView2.getBottom();
        TextView textView3 = this.d;
        textView3.layout(i8, bottom4, textView3.getMeasuredWidth() + i8, textView3.getMeasuredHeight() + textView2.getBottom());
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2) / 4;
        int i3 = this.m;
        int i4 = size - (i3 * 2);
        int i5 = this.o;
        int i6 = size2 - (i5 * 2);
        int iMin = Math.min(i6, this.n);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        zh zhVar = this.j;
        zhVar.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
        int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(iMin - (i5 * 2), 1073741824);
        Button button = this.i;
        button.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
        int measuredWidth = ((i4 - zhVar.getMeasuredWidth()) - button.getMeasuredWidth()) - (i3 * 2);
        int iMakeMeasureSpec5 = View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE);
        int iMakeMeasureSpec6 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
        fj fjVar = this.c;
        fjVar.measure(iMakeMeasureSpec5, iMakeMeasureSpec6);
        int iMakeMeasureSpec7 = View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE);
        int iMakeMeasureSpec8 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
        LinearLayout linearLayout = this.e;
        linearLayout.measure(iMakeMeasureSpec7, iMakeMeasureSpec8);
        this.h.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE));
        int iMakeMeasureSpec9 = View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE);
        int iMakeMeasureSpec10 = View.MeasureSpec.makeMeasureSpec(i6 - fjVar.getMeasuredHeight(), Integer.MIN_VALUE);
        TextView textView = this.b;
        textView.measure(iMakeMeasureSpec9, iMakeMeasureSpec10);
        int iMakeMeasureSpec11 = View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE);
        int iMakeMeasureSpec12 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
        TextView textView2 = this.d;
        textView2.measure(iMakeMeasureSpec11, iMakeMeasureSpec12);
        int iMax = (i5 * 2) + Math.max(textView.getMeasuredHeight(), linearLayout.getMeasuredHeight()) + fjVar.getMeasuredHeight();
        if (textView2.getVisibility() == 0) {
            iMax += textView2.getMeasuredHeight();
        }
        setMeasuredDimension(size, (i5 * 2) + Math.max(button.getMeasuredHeight(), Math.max(zhVar.getMeasuredHeight(), iMax)));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void setBanner(xda xdaVar) {
        fj fjVar = this.c;
        fjVar.getLeftText().setText(xdaVar.e);
        this.b.setText(xdaVar.c);
        String str = xdaVar.f;
        this.q = xdaVar.Q.c;
        boolean zIsEmpty = TextUtils.isEmpty(str);
        TextView textView = this.d;
        if (zIsEmpty) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(str);
        }
        h14 h14Var = xdaVar.q;
        zh zhVar = this.j;
        if (h14Var != null) {
            zhVar.setVisibility(0);
            zhVar.setImageData(h14Var);
        } else {
            zhVar.setVisibility(8);
        }
        String strG = xdaVar.g();
        Button button = this.i;
        button.setText(strG);
        if ("".equals(xdaVar.g)) {
            fjVar.getRightBorderedView().setVisibility(8);
        } else {
            fjVar.getRightBorderedView().setText(xdaVar.g);
        }
        l3a.o(button, -16733198, -16746839, this.k.b(2.0f));
        byte b2 = -1;
        button.setTextColor(-1);
        String str2 = xdaVar.m;
        str2.getClass();
        switch (str2.hashCode()) {
            case 117588:
                if (str2.equals("web")) {
                    b2 = 0;
                }
                break;
            case 109770977:
                if (str2.equals("store")) {
                    b2 = 1;
                }
                break;
            case 1223953944:
                if (str2.equals("webform")) {
                    b2 = 2;
                }
                break;
        }
        TextView textView2 = this.h;
        LinearLayout linearLayout = this.e;
        switch (b2) {
            case 0:
            case 2:
                String str3 = xdaVar.l;
                if (TextUtils.isEmpty(str3)) {
                    textView2.setEnabled(false);
                    textView2.setVisibility(8);
                } else {
                    textView2.setEnabled(true);
                    textView2.setText(str3);
                }
                linearLayout.setEnabled(false);
                break;
            case 1:
                Integer num = xdaVar.i;
                if ((num == null ? 0 : num.intValue()) == 0 || xdaVar.b() <= 0.0f) {
                    linearLayout.setEnabled(false);
                    linearLayout.setVisibility(8);
                } else {
                    linearLayout.setEnabled(true);
                    this.f.setRating(xdaVar.b());
                    Integer num2 = xdaVar.i;
                    this.g.setText(String.valueOf(num2 == null ? 0 : num2.intValue()));
                }
                textView2.setEnabled(false);
                break;
        }
        kha khaVar = xdaVar.Z;
        if (khaVar == null || !khaVar.Y) {
            linearLayout.setVisibility(8);
            textView2.setVisibility(8);
        }
    }
}
