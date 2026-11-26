package com.my.target;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.fh1;
import defpackage.gia;
import defpackage.h14;
import defpackage.ko9;
import defpackage.l3a;
import defpackage.r2a;
import defpackage.up9;
import defpackage.y14;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public class lb extends FrameLayout implements View.OnClickListener {
    public static final /* synthetic */ int o = 0;
    public final i0 b;
    public final LinearLayout c;
    public final r1 d;
    public e6a e;
    public boolean f;
    public s3 g;
    public yu9 h;
    public h14 i;
    public h14 j;
    public final i6 k;
    public int l;
    public final j0 m;
    public final c1 n;

    public lb(i0 i0Var, r1 r1Var, i6 i6Var, j0 j0Var, Context context) {
        super(context);
        this.e = new d6a();
        this.f = false;
        this.n = new c1(new fh1(this, 6));
        this.k = i6Var;
        this.m = j0Var;
        this.b = i0Var;
        this.d = r1Var;
        ko9 ko9Var = new ko9(context);
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.h = new yu9(context);
        this.l = context.getResources().getConfiguration().orientation;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(this.l == 2 ? 0 : 1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.c = linearLayout;
        l3a.n(linearLayout, FirebaseAnalytics.Param.CONTENT);
        addView(linearLayout);
        linearLayout.addView(i6Var, 0);
        setBackgroundColor(this.h.a.get(yu9.r));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, l3a.d(112, context)));
        linearLayout2.setOrientation(1);
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
        addView(linearLayout2);
    }

    public e6 getCloseButton() {
        return this.d.getCloseButton();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        r1 r1Var = this.d;
        e6 closeButton = r1Var.getCloseButton();
        j0 j0Var = this.m;
        if (view == closeButton) {
            j0Var.d.e(j0Var.e);
            return;
        }
        if (r1Var.getAdChoicesButton() == view) {
            q qVar = j0Var.e.H;
            if (qVar == null) {
                return;
            }
            Context context = j0Var.g.getContext();
            o oVar = j0Var.f;
            if (oVar == null) {
                y14.n(context, qVar.b, null, null, null);
                return;
            } else {
                oVar.b();
                return;
            }
        }
        i0 i0Var = this.b;
        if (i0Var.getAdsIcon() == view) {
            q qVar2 = j0Var.e.H;
            if (qVar2 != null) {
                y14.n(j0Var.g.getContext(), qVar2.b, null, null, null);
                return;
            }
            return;
        }
        s3 s3Var = this.g;
        int i = 2;
        if (s3Var != null && view == s3Var.getCtaButton() && this.g.getCtaButton().isEnabled()) {
            j0Var.d.g(j0Var.e, null, 2, y14.j(this.f ? new up9(64, this.e) : new gia()), j0Var.g.getContext());
            return;
        }
        s3 s3Var2 = this.g;
        if (s3Var2 == null || view != s3Var2.getCtaButton()) {
            s3 s3Var3 = this.g;
            if (s3Var3 != null && view == s3Var3.getTitleTextView()) {
                i = 1;
            } else if (view == i0Var.getAgeRestrictionsTextView()) {
                i = 128;
            } else {
                s3 s3Var4 = this.g;
                if (s3Var4 == null || view != s3Var4.getDescriptionTextView()) {
                    i = 2048;
                }
            }
        } else {
            i = 64;
        }
        j0Var.d.g(j0Var.e, null, 1, y14.j(this.f ? new up9(i, this.e) : new gia()), j0Var.g.getContext());
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i = configuration.orientation;
        this.l = i;
        this.c.setOrientation((i != 2 || ((Activity) getContext()).isInMultiWindowMode()) ? 1 : 0);
        this.m.c();
        yu9 yu9Var = new yu9(getContext());
        this.h = yu9Var;
        setBackgroundColor(yu9Var.a.get(yu9.r));
    }

    public void setDescription(String str) {
        if (this.g != null) {
            boolean zIsEmpty = TextUtils.isEmpty(str);
            s3 s3Var = this.g;
            if (zIsEmpty) {
                s3Var.getDescriptionTextView().setVisibility(8);
            } else {
                s3Var.getDescriptionTextView().setText(str);
                this.g.getDescriptionTextView().setVisibility(0);
            }
        }
    }

    public void setIcon(h14 h14Var) {
        if (h14Var == null || ((Bitmap) h14Var.d) == null) {
            return;
        }
        s3 s3Var = this.g;
        if ((s3Var instanceof uh) || s3Var == null || s3Var.getLogoImageView() == null) {
            return;
        }
        this.g.getLogoImageView().setImageBitmap(r2a.a((Bitmap) h14Var.d));
        this.g.getLogoImageView().setVisibility(0);
    }

    public void setRemainingAllowCloseDelay(int i) {
        this.d.getProgress().setText(String.valueOf(i));
    }

    public void setShowingChoiceButton(boolean z) {
        this.d.getAdChoicesButton().setVisibility(z ? 0 : 8);
    }

    public void setTitle(String str) {
        if (this.g != null) {
            boolean zIsEmpty = TextUtils.isEmpty(str);
            s3 s3Var = this.g;
            if (zIsEmpty) {
                s3Var.getTitleTextView().setVisibility(8);
            } else {
                s3Var.getTitleTextView().setText(str);
                this.g.getTitleTextView().setVisibility(0);
            }
        }
    }

    public void setTitleAction(String str) {
        if (this.g != null) {
            boolean zIsEmpty = TextUtils.isEmpty(str);
            s3 s3Var = this.g;
            if (zIsEmpty) {
                s3Var.getCtaButton().setVisibility(8);
            } else {
                s3Var.getCtaButton().setText(str);
                this.g.getCtaButton().setVisibility(0);
            }
        }
    }
}
