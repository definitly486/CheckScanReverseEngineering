package yads;

import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.yandex.mobile.ads.R$drawable;
import com.yandex.mobile.ads.R$style;
import defpackage.ll3;
import defpackage.n5a;
import yads.pg3;

/* JADX INFO: loaded from: classes6.dex */
public final class pg3 implements qc {
    public final ViewGroup a;
    public boolean b;
    public boolean c;
    public ll3 d;
    public final FrameLayout e;
    public final og3 f = new og3(this);

    public pg3(ViewGroup viewGroup, uc ucVar, yb ybVar) {
        this.a = viewGroup;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(viewGroup.getContext(), ybVar.d ? R$style.MonetizationAdsInternal_AdtuneTheme_Dark : R$style.MonetizationAdsInternal_AdtuneTheme_Light);
        FrameLayout frameLayout = new FrameLayout(contextThemeWrapper);
        this.e = frameLayout;
        frameLayout.addView(ucVar, new FrameLayout.LayoutParams(-1, -1));
        a(ucVar);
        float f = contextThemeWrapper.getResources().getDisplayMetrics().density;
        int i = (int) (40.0f * f);
        int i2 = (int) (0.0f * f);
        ImageButton imageButton = new ImageButton(contextThemeWrapper);
        imageButton.setImageResource(R$drawable.monetization_ads_internal_ic_close_gray);
        imageButton.setBackground(null);
        imageButton.setScaleType(ImageView.ScaleType.CENTER);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: m5a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                pg3.a(this.b, view);
            }
        });
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
        layoutParams.gravity = 8388661;
        layoutParams.topMargin = i2;
        layoutParams.setMarginEnd(i2);
        frameLayout.addView(imageButton, layoutParams);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0011  */
    /* JADX WARN: Code duplicated, block: B:12:0x0017  */
    /* JADX WARN: Code duplicated, block: B:13:0x001b  */
    /* JADX WARN: Code duplicated, block: B:15:0x0021  */
    public static final boolean a(View view, MotionEvent motionEvent) {
        ViewParent parent;
        ViewParent parent2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        } else if (actionMasked == 1) {
            parent2 = view.getParent();
            if (parent2 != null) {
                parent2.requestDisallowInterceptTouchEvent(false);
            }
        } else if (actionMasked == 2) {
            parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        } else if (actionMasked == 3) {
            parent2 = view.getParent();
            if (parent2 != null) {
                parent2.requestDisallowInterceptTouchEvent(false);
            }
        }
        return false;
    }

    @Override // yads.qc
    public final void dismiss() {
        if (this.c) {
            return;
        }
        this.c = true;
        this.a.removeOnAttachStateChangeListener(this.f);
        if (this.b) {
            this.a.removeView(this.e);
        }
        ll3 ll3Var = this.d;
        if (ll3Var != null) {
            ll3Var.invoke();
        }
    }

    @Override // yads.qc
    public final void show() {
        if (this.c) {
            return;
        }
        this.b = true;
        this.a.addView(this.e, new FrameLayout.LayoutParams(-1, -1));
        this.e.bringToFront();
        this.a.addOnAttachStateChangeListener(this.f);
    }

    @Override // yads.qc
    public final void a(ll3 ll3Var) {
        this.d = ll3Var;
    }

    public static void a(uc ucVar) {
        ucVar.setOnTouchListener(new n5a());
    }

    public static final void a(pg3 pg3Var, View view) {
        pg3Var.dismiss();
    }
}
