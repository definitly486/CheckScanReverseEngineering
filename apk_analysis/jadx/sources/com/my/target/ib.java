package com.my.target;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.gia;
import defpackage.ko9;
import defpackage.l3a;
import defpackage.pfa;
import defpackage.q9;
import defpackage.up9;
import defpackage.wv9;
import defpackage.y14;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public class ib extends FrameLayout implements View.OnClickListener, e1.a {
    public static final /* synthetic */ int i = 0;
    public final b0 b;
    public final i0 c;
    public final r1 d;
    public final e1 e;
    public boolean f;
    public final c1 g;
    public e6a h;

    public ib(i0 i0Var, r1 r1Var, e1 e1Var, b0 b0Var, Context context) {
        super(context);
        this.f = false;
        this.g = new c1(new q9(this, 5));
        this.h = new d6a();
        this.b = b0Var;
        this.e = e1Var;
        this.c = i0Var;
        this.d = r1Var;
        ko9 ko9Var = new ko9(context);
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        e1Var.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        yu9 yu9Var = new yu9(context);
        setBackgroundColor(yu9Var.a.get(yu9.r));
        addView(e1Var);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, l3a.d(112, context)));
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i2 = ko9Var.a.get(ko9.k);
        layoutParams.setMargins(i2, i2, i2, i2);
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
        linearLayout.addView(frameLayout);
        addView(linearLayout);
    }

    @Override // com.my.target.e1.a
    public final void a(String str) {
        b0 b0Var = this.b;
        b0Var.e.removeCallbacks(b0Var.f);
        b0Var.h.a.i = true;
    }

    @Override // com.my.target.e1.a
    public final void b(String str) {
        pfa up9Var = this.f ? new up9(this.e == this.c.getAgeRestrictionsTextView() ? 128 : 2048, this.h) : new gia();
        b0 b0Var = this.b;
        b0Var.h.g(b0Var.c, str, 1, y14.j(up9Var), b0Var.b.getContext());
    }

    @Override // com.my.target.e1.a
    public final void c(WebView webView) {
        this.b.h.c(webView);
    }

    public e6 getCloseButton() {
        return this.d.getCloseButton();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        r1 r1Var = this.d;
        e6 closeButton = r1Var.getCloseButton();
        b0 b0Var = this.b;
        if (view == closeButton) {
            b0Var.h.e(b0Var.c);
            return;
        }
        if (r1Var.getAdChoicesButton() != view) {
            i0 i0Var = this.c;
            if (i0Var.getAdsIcon() != view) {
                b0Var.h.g(b0Var.c, null, 1, y14.j(this.f ? new up9(view == i0Var.getAgeRestrictionsTextView() ? 128 : 2048, this.h) : new gia()), b0Var.b.getContext());
                return;
            }
            q qVar = b0Var.c.H;
            if (qVar != null) {
                y14.n(b0Var.b.getContext(), qVar.b, null, null, null);
                return;
            }
            return;
        }
        q qVar2 = b0Var.c.H;
        if (qVar2 == null) {
            return;
        }
        Context context = b0Var.b.getContext();
        o oVar = b0Var.g;
        if (oVar == null) {
            y14.n(context, qVar2.b, null, null, null);
        } else {
            oVar.b();
        }
    }

    public void setHtmlSource(wv9 wv9Var) {
        e1 e1Var = this.e;
        e1Var.setBannerWebViewListener(this);
        String str = wv9Var.X;
        if (str != null) {
            e1Var.setData(str);
            e1Var.setForceMediaPlayback(wv9Var.Z);
        } else {
            b0 b0Var = this.b;
            b0Var.e.removeCallbacks(b0Var.f);
            b0Var.h.a.i = true;
        }
    }

    public void setRemainingAllowCloseDelay(int i2) {
        this.d.getProgress().setText(String.valueOf(i2));
    }

    public void setShowingChoiceButton(boolean z) {
        this.d.getAdChoicesButton().setVisibility(z ? 0 : 8);
    }

    @Override // com.my.target.e1.a
    public final void a() {
        this.b.h.a();
    }
}
