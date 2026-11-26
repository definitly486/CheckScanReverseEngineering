package com.my.target;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.gia;
import defpackage.h14;
import defpackage.ko9;
import defpackage.l3a;
import defpackage.r2a;
import defpackage.t2a;
import defpackage.up9;
import defpackage.xda;
import defpackage.y52;
import defpackage.yu9;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class pb extends FrameLayout implements z0, View.OnClickListener {
    public static final /* synthetic */ int m = 0;
    public final i0 b;
    public final LinearLayout c;
    public final r1 d;
    public final z0.a e;
    public e6a f;
    public boolean g;
    public s3 h;
    public yu9 i;
    public final LinearLayout j;
    public int k;
    public final c1 l;

    public pb(i0 i0Var, r1 r1Var, rf rfVar, z0.a aVar, Context context) {
        super(context);
        this.f = new d6a();
        this.g = false;
        this.l = new c1(new y52(this));
        this.e = aVar;
        this.b = i0Var;
        this.d = r1Var;
        ko9 ko9Var = new ko9(context);
        this.i = new yu9(context);
        this.k = getContext().getResources().getConfiguration().orientation;
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(this.k == 2 ? 0 : 1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.c = linearLayout;
        l3a.n(linearLayout, FirebaseAnalytics.Param.CONTENT);
        addView(linearLayout);
        setBackgroundColor(this.i.a.get(yu9.r));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, l3a.d(112, context)));
        linearLayout2.setOrientation(1);
        if (rfVar != null) {
            linearLayout2.addView(rfVar);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i = ko9Var.a.get(ko9.k);
        layoutParams.setMargins(i, i, i, i);
        layoutParams.gravity = 8388659;
        i0Var.setLayoutParams(layoutParams);
        l3a.n(i0Var, "age_restriction_view");
        frameLayout.addView(i0Var);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 8388661;
        r1Var.setLayoutParams(layoutParams2);
        r1Var.getCloseButton().setOnClickListener(this);
        r1Var.getAdChoicesButton().setOnClickListener(this);
        l3a.n(r1Var, "buttons_view");
        frameLayout.addView(r1Var);
        linearLayout2.addView(frameLayout);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{1711276032, 1627389952, 1375731712, 335544320, 83886080, 0});
        gradientDrawable.setShape(0);
        gradientDrawable.setGradientType(0);
        linearLayout2.setBackground(gradientDrawable);
        this.j = linearLayout2;
        addView(linearLayout2);
    }

    private void setAdIcon(h14 h14Var) {
        i0 i0Var = this.b;
        if (h14Var == null || ((Bitmap) h14Var.d) == null) {
            i0Var.getAdsIcon().setVisibility(8);
        } else {
            i0Var.getAdsIcon().setImageBitmap((Bitmap) h14Var.d);
            i0Var.getAdsIcon().setVisibility(0);
        }
    }

    private void setAgeRestrictions(String str) {
        int i = TextUtils.isEmpty(str) ? 8 : 0;
        i0 i0Var = this.b;
        i0Var.setVisibility(i);
        i0Var.getAgeRestrictionsTextView().setText(str);
    }

    private void setDescription(String str) {
        if (this.h != null) {
            boolean zIsEmpty = TextUtils.isEmpty(str);
            s3 s3Var = this.h;
            if (zIsEmpty) {
                s3Var.getDescriptionTextView().setVisibility(8);
            } else {
                s3Var.getDescriptionTextView().setText(str);
                this.h.getDescriptionTextView().setVisibility(0);
            }
        }
    }

    private void setTitle(String str) {
        if (this.h != null) {
            boolean zIsEmpty = TextUtils.isEmpty(str);
            s3 s3Var = this.h;
            if (zIsEmpty) {
                s3Var.getTitleTextView().setVisibility(8);
            } else {
                s3Var.getTitleTextView().setText(str);
                this.h.getTitleTextView().setVisibility(0);
            }
        }
    }

    private void setTitleAction(String str) {
        if (this.h != null) {
            boolean zIsEmpty = TextUtils.isEmpty(str);
            s3 s3Var = this.h;
            if (zIsEmpty) {
                s3Var.getCtaButton().setVisibility(8);
            } else {
                s3Var.getCtaButton().setText(str);
                this.h.getCtaButton().setVisibility(0);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003e A[PHI: r1
      0x003e: PHI (r1v9 int) = (r1v0 int), (r1v7 int), (r1v8 int), (r1v0 int) binds: [B:22:0x005c, B:17:0x0046, B:13:0x003d, B:4:0x0016] A[DONT_GENERATE, DONT_INLINE]] */
    public final LinearLayout.LayoutParams b(int i, int i2) {
        s3 uhVar;
        LinearLayout.LayoutParams layoutParams;
        Point pointL = l3a.l(getContext());
        int i3 = pointL.x;
        int i4 = pointL.y;
        double d = ((double) i) / ((double) i2);
        if (d == 1.0d) {
            if (i3 < i4) {
                i4 = (int) (((double) i3) / d);
            } else {
                i3 = (int) (((double) i4) / d);
            }
        } else if (this.k == 2) {
            float fD = l3a.d(282, getContext());
            if (d > 1.0d) {
                float f = (i3 / 3.0f) * 2.0f;
                i3 = (int) (((double) i4) * d);
                float f2 = i3;
                if (f2 < fD) {
                    i3 = (int) fD;
                } else if (f2 > f) {
                    i3 = (int) f;
                }
                i4 = (int) (((double) i3) / d);
            } else {
                i3 = (int) (((double) i4) * d);
                if (i3 < fD) {
                    i3 = (int) fD;
                }
            }
        } else if (i2 > l3a.d(698, getContext())) {
            float f3 = (i4 * 85.0f) / 100.0f;
            i4 = (int) f3;
            i3 = (int) (f3 * (i / f3));
        } else {
            i4 = (int) (((double) i3) / d);
        }
        s3 s3Var = this.h;
        LinearLayout linearLayout = this.c;
        if (s3Var != null) {
            linearLayout.removeView(s3Var);
        }
        Point pointQ = l3a.q(getContext());
        int i5 = pointQ.x;
        int i6 = pointQ.y;
        if (i5 <= 0 || i6 <= 0) {
            uhVar = null;
        } else {
            int i7 = getContext().getResources().getConfiguration().orientation;
            if (((Activity) getContext()).isInMultiWindowMode()) {
                uhVar = new uh(getContext());
            } else if (i7 == 2) {
                uhVar = i3 < (i5 / 3) * 2 ? new l1(getContext()) : new ch(getContext());
            } else {
                int i8 = i6 / 2;
                uhVar = ((i4 <= i8 || i4 >= (i6 / 4) * 3 || d <= 0.699999988079071d) && i4 >= i8) ? new uh(getContext()) : new l1(getContext());
            }
        }
        this.h = uhVar;
        if (uhVar != null) {
            if (((Activity) getContext()).isInMultiWindowMode()) {
                layoutParams = new LinearLayout.LayoutParams(-1, -2);
            } else {
                int i9 = this.k;
                s3 s3Var2 = this.h;
                if (i9 == 2) {
                    if (s3Var2 instanceof ch) {
                        layoutParams = new LinearLayout.LayoutParams(-1, -1);
                    } else {
                        layoutParams = new LinearLayout.LayoutParams(-2, -1);
                        layoutParams.weight = 1.0f;
                    }
                } else if (s3Var2 instanceof uh) {
                    layoutParams = d > 0.699999988079071d ? new LinearLayout.LayoutParams(-1, -1) : new LinearLayout.LayoutParams(-1, -2);
                } else {
                    layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.weight = 1.0f;
                }
            }
            uhVar.setLayoutParams(layoutParams);
            linearLayout.addView(this.h);
        }
        if (((Activity) getContext()).isInMultiWindowMode()) {
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams2.weight = 1.0f;
            return layoutParams2;
        }
        if (this.k == 2) {
            return new LinearLayout.LayoutParams(i3, -1);
        }
        if (d > 0.699999988079071d) {
            return new LinearLayout.LayoutParams(-1, i4);
        }
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 1.0f;
        return layoutParams3;
    }

    public int c(View view) {
        s3 s3Var = this.h;
        if (s3Var != null && view == s3Var.getCtaButton()) {
            return 64;
        }
        s3 s3Var2 = this.h;
        if (s3Var2 != null && view == s3Var2.getTitleTextView()) {
            return 1;
        }
        if (view == this.b.getAgeRestrictionsTextView()) {
            return 128;
        }
        s3 s3Var3 = this.h;
        return (s3Var3 == null || view != s3Var3.getDescriptionTextView()) ? 2048 : 2;
    }

    public final void d(View view) {
        z0.a aVar = this.e;
        if (aVar == null) {
            return;
        }
        r1 r1Var = this.d;
        if (view == r1Var.getCloseButton()) {
            aVar.e();
            return;
        }
        if (this.b.getAdsIcon() == view) {
            aVar.d();
            return;
        }
        if (r1Var.getAdChoicesButton() == view) {
            aVar.p();
            return;
        }
        s3 s3Var = this.h;
        if (s3Var != null && view == s3Var.getCtaButton() && this.h.getCtaButton().isEnabled()) {
            aVar.c(2, new up9(64, this.f));
        } else {
            aVar.c(1, new up9(c(view), this.f));
        }
    }

    public final void e(View view) {
        z0.a aVar = this.e;
        if (aVar == null) {
            return;
        }
        r1 r1Var = this.d;
        if (view == r1Var.getCloseButton()) {
            aVar.e();
            return;
        }
        if (r1Var.getAdChoicesButton() == view) {
            aVar.p();
            return;
        }
        if (this.b.getAdsIcon() == view) {
            aVar.d();
            return;
        }
        s3 s3Var = this.h;
        if (s3Var != null && view == s3Var.getCtaButton() && this.h.getCtaButton().isEnabled()) {
            aVar.c(2, new gia());
        } else {
            aVar.c(1, new gia());
        }
    }

    @Override // com.my.target.z0
    public e6 getCloseButton() {
        return this.d.getCloseButton();
    }

    @Override // com.my.target.z0
    public LinearLayout getTopBar() {
        return this.j;
    }

    public void onClick(View view) {
        if (this.g) {
            d(view);
        } else {
            e(view);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.i = new yu9(getContext());
        int i = configuration.orientation;
        this.k = i;
        int i2 = (i != 2 || ((Activity) getContext()).isInMultiWindowMode()) ? 1 : 0;
        LinearLayout linearLayout = this.c;
        linearLayout.setOrientation(i2);
        yu9 yu9Var = this.i;
        int i3 = yu9.r;
        linearLayout.setBackgroundColor(yu9Var.a.get(i3));
        setBackgroundColor(this.i.a.get(i3));
        this.e.a();
    }

    public void setBanner(xda xdaVar) {
        this.d.getAdChoicesButton().setVisibility(xdaVar.H == null ? 8 : 0);
        setIcon(xdaVar.q);
        setAdIcon(xdaVar.b0);
        setDomain(xdaVar.m.equals("store") ? xdaVar.j : xdaVar.l);
        setTitle(xdaVar.e);
        setDescription(xdaVar.c);
        setTitleAction(xdaVar.g());
        setAgeRestrictions(xdaVar.d());
        boolean z = xdaVar.Q.c;
        t2a t2aVar = xdaVar.r;
        this.g = z;
        if (z) {
            setClickAreaActual(t2aVar);
        } else {
            setClickAreaLegacy(t2aVar);
        }
    }

    public void setClickAreaActual(t2a t2aVar) {
        LinearLayout linearLayout = this.c;
        c1 c1Var = this.l;
        linearLayout.setOnTouchListener(c1Var);
        i0 i0Var = this.b;
        i0Var.setOnTouchListener(c1Var);
        s3 s3Var = this.h;
        if (s3Var != null) {
            s3Var.getTitleTextView().setOnTouchListener(c1Var);
            this.h.getDescriptionTextView().setOnTouchListener(c1Var);
            this.h.getCtaButton().setOnTouchListener(c1Var);
            i0Var.getAdsIcon().setOnTouchListener(c1Var);
            if (this.h.getDomainTextView() != null && this.h.getLogoImageView() != null) {
                this.h.getLogoImageView().setOnTouchListener(c1Var);
                this.h.getDomainTextView().setOnTouchListener(c1Var);
            }
        }
        boolean z = t2aVar.m;
        boolean z2 = t2aVar.j;
        boolean z3 = t2aVar.g;
        if (z) {
            linearLayout.setOnClickListener(this);
            i0Var.setOnClickListener(this);
            i0Var.getAdsIcon().setOnClickListener(this);
            s3 s3Var2 = this.h;
            if (s3Var2 != null) {
                s3Var2.getTitleTextView().setOnClickListener(this);
                this.h.getDescriptionTextView().setOnClickListener(this);
                this.h.getCtaButton().setOnClickListener(this);
                if (this.h.getDomainTextView() == null || this.h.getLogoImageView() == null) {
                    return;
                }
                this.h.getLogoImageView().setOnClickListener(this);
                this.h.getDomainTextView().setOnClickListener(this);
                return;
            }
            return;
        }
        linearLayout.setOnClickListener(t2aVar.l ? this : null);
        i0Var.setOnClickListener((t2aVar.h || t2aVar.i) ? this : null);
        i0Var.getAdsIcon().setOnClickListener(t2aVar.c ? this : null);
        s3 s3Var3 = this.h;
        if (s3Var3 != null) {
            s3Var3.getCtaButton().setOnClickListener(z3 ? this : null);
            this.h.getCtaButton().setEnabled(z3);
            this.h.getTitleTextView().setOnClickListener(t2aVar.a ? this : null);
            this.h.getDescriptionTextView().setOnClickListener(t2aVar.b ? this : null);
            if (this.h.getDomainTextView() == null || this.h.getLogoImageView() == null) {
                return;
            }
            this.h.getLogoImageView().setOnClickListener(z2 ? this : null);
            TextView domainTextView = this.h.getDomainTextView();
            if (!z2) {
                this = null;
            }
            domainTextView.setOnClickListener(this);
        }
    }

    public void setClickAreaLegacy(t2a t2aVar) {
        boolean z = t2aVar.m;
        boolean z2 = t2aVar.j;
        boolean z3 = t2aVar.g;
        if (z) {
            setOnClickListener(this);
            s3 s3Var = this.h;
            if (s3Var != null) {
                s3Var.getCtaButton().setOnClickListener(this);
                return;
            }
            return;
        }
        this.c.setOnClickListener(t2aVar.l ? this : null);
        pb pbVar = (t2aVar.h || t2aVar.i) ? this : null;
        i0 i0Var = this.b;
        i0Var.setOnClickListener(pbVar);
        i0Var.getAdsIcon().setOnClickListener(t2aVar.c ? this : null);
        s3 s3Var2 = this.h;
        if (s3Var2 != null) {
            s3Var2.getCtaButton().setOnClickListener(z3 ? this : null);
            this.h.getCtaButton().setEnabled(z3);
            this.h.getTitleTextView().setOnClickListener(t2aVar.a ? this : null);
            this.h.getDescriptionTextView().setOnClickListener(t2aVar.b ? this : null);
            if (this.h.getDomainTextView() == null || this.h.getLogoImageView() == null) {
                return;
            }
            this.h.getLogoImageView().setOnClickListener(z2 ? this : null);
            TextView domainTextView = this.h.getDomainTextView();
            if (!z2) {
                this = null;
            }
            domainTextView.setOnClickListener(this);
        }
    }

    public void setDomain(String str) {
        s3 s3Var = this.h;
        if ((s3Var instanceof uh) || s3Var == null || s3Var.getDomainTextView() == null) {
            return;
        }
        boolean zIsEmpty = TextUtils.isEmpty(str);
        s3 s3Var2 = this.h;
        if (zIsEmpty) {
            s3Var2.getDomainTextView().setVisibility(8);
        } else {
            s3Var2.getDomainTextView().setText(str);
            this.h.getDomainTextView().setVisibility(0);
        }
    }

    public abstract /* synthetic */ void setDoubleBanners(List list);

    public void setIcon(h14 h14Var) {
        if (h14Var == null || ((Bitmap) h14Var.d) == null) {
            return;
        }
        s3 s3Var = this.h;
        if ((s3Var instanceof uh) || s3Var == null || s3Var.getLogoImageView() == null) {
            return;
        }
        this.h.getLogoImageView().setImageBitmap(r2a.a((Bitmap) h14Var.d));
        this.h.getLogoImageView().setVisibility(0);
    }

    @Override // com.my.target.z0
    public void setRemainingAllowCloseDelay(int i) {
        this.d.getProgress().setText(String.valueOf(i));
    }

    @Override // com.my.target.z0
    public final void c() {
        this.d.getProgressFrame().setVisibility(8);
    }

    @Override // com.my.target.z0
    public final void d() {
        r1 r1Var = this.d;
        r1Var.getSkipButton().setVisibility(0);
        r1Var.getCloseButton().setVisibility(8);
        r1Var.getProgressFrame().setVisibility(8);
    }

    @Override // com.my.target.z0
    public final void b() {
        r1 r1Var = this.d;
        r1Var.getCloseButton().setVisibility(0);
        r1Var.getSkipButton().setVisibility(8);
        r1Var.getProgressFrame().setVisibility(8);
    }
}
