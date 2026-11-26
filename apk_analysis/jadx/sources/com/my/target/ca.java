package com.my.target;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.b9;
import defpackage.bj;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.gia;
import defpackage.r2a;
import defpackage.t2a;
import defpackage.up9;
import defpackage.v2a;
import defpackage.xda;
import defpackage.yu9;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class ca extends LinearLayout implements z0, View.OnClickListener {
    public static final /* synthetic */ int i = 0;
    public final ij b;
    public final d2 c;
    public final z1 d;
    public boolean e;
    public e6a f;
    public final c1 g;
    public yu9 h;

    public ca(z1 z1Var, d2.b bVar, Context context) {
        super(context);
        this.e = false;
        this.f = new d6a();
        this.g = new c1(new b9(this, 7));
        this.d = z1Var;
        this.h = new yu9(context);
        setOrientation(1);
        ij ijVar = new ij(context);
        this.b = ijVar;
        ijVar.getButtonsView().getAdChoicesButton().setOnClickListener(this);
        ijVar.getButtonsView().getCloseButton().setOnClickListener(this);
        addView(ijVar);
        d2 d2Var = new d2(context, bVar);
        this.c = d2Var;
        yu9 yu9Var = this.h;
        setBackgroundColor(yu9Var.a.get(yu9.r));
        e();
        addView(d2Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r0v7, types: [android.view.View, com.my.target.zh] */
    /* JADX WARN: Type inference failed for: r0v8, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.view.View, android.view.View$OnClickListener, com.my.target.ca] */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    private void setClickAreaActual(t2a t2aVar) {
        c1 c1Var = this.g;
        setOnTouchListener(c1Var);
        ij ijVar = this.b;
        ijVar.setOnTouchListener(c1Var);
        ijVar.getLogoIcon().setOnTouchListener(c1Var);
        ijVar.getTitleTextView().setOnTouchListener(c1Var);
        ijVar.getDomainTextView().setOnTouchListener(c1Var);
        ijVar.getAdsIcon().setOnTouchListener(c1Var);
        ijVar.getButtonsView().getCloseButton().setOnTouchListener(c1Var);
        ijVar.getButtonsView().getAdChoicesButton().setOnTouchListener(c1Var);
        ijVar.getAgeRestrictionTextView().setOnTouchListener(c1Var);
        d2 d2Var = this.c;
        d2Var.setOnTouchListener(c1Var);
        d2Var.getMoreButton().setOnTouchListener(c1Var);
        if (t2aVar.m) {
            setOnClickListener(this);
            ijVar.getAgeRestrictionTextView().setOnClickListener(this);
            ijVar.getTitleTextView().setOnClickListener(this);
            ijVar.getLogoIcon().setOnClickListener(this);
            return;
        }
        setOnClickListener(t2aVar.l ? this : 0);
        ijVar.getTitleTextView().setOnClickListener(t2aVar.a ? this : 0);
        ijVar.getDomainTextView().setOnClickListener(t2aVar.j ? this : 0);
        ijVar.getLogoIcon().setOnClickListener(t2aVar.c ? this : 0);
        ?? ageRestrictionTextView = ijVar.getAgeRestrictionTextView();
        ?? r4 = this;
        if (!t2aVar.h) {
            r4 = 0;
        }
        ageRestrictionTextView.setOnClickListener(r4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.view.View, com.my.target.zh] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.view.View, android.view.View$OnClickListener, com.my.target.ca] */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    private void setClickAreaLegacy(t2a t2aVar) {
        if (t2aVar.m) {
            setOnClickListener(this);
            return;
        }
        setOnClickListener(t2aVar.l ? this : 0);
        ij ijVar = this.b;
        ijVar.getTitleTextView().setOnClickListener(t2aVar.a ? this : 0);
        ijVar.getDomainTextView().setOnClickListener(t2aVar.j ? this : 0);
        ijVar.getLogoIcon().setOnClickListener(t2aVar.c ? this : 0);
        ?? ageRestrictionTextView = ijVar.getAgeRestrictionTextView();
        ?? r4 = this;
        if (!t2aVar.h) {
            r4 = 0;
        }
        ageRestrictionTextView.setOnClickListener(r4);
    }

    @Override // com.my.target.z0
    public final View a() {
        return this;
    }

    @Override // com.my.target.z0
    public final void b() {
        ij ijVar = this.b;
        ijVar.getButtonsView().getCloseButton().setVisibility(0);
        ijVar.getButtonsView().getProgressFrame().setVisibility(8);
    }

    @Override // com.my.target.z0
    public final void c() {
        this.b.getButtonsView().getProgressFrame().setVisibility(8);
    }

    @Override // com.my.target.z0
    public final void d() {
    }

    public final void e() {
        yu9 yu9Var = new yu9(getContext());
        this.h = yu9Var;
        setBackgroundColor(yu9Var.a.get(yu9.r));
        ij ijVar = this.b;
        TextView ageRestrictionTextView = ijVar.getAgeRestrictionTextView();
        yu9 yu9Var2 = this.h;
        int i2 = yu9.q;
        ageRestrictionTextView.setTextColor(yu9Var2.a.get(i2));
        ijVar.getDomainTextView().setTextColor(this.h.a.get(i2));
        TextView titleTextView = ijVar.getTitleTextView();
        yu9 yu9Var3 = this.h;
        titleTextView.setTextColor(yu9Var3.a.get(yu9.s));
    }

    @Override // com.my.target.z0
    public View getCloseButton() {
        return this.b.getButtonsView().getCloseButton();
    }

    @Override // com.my.target.z0
    public LinearLayout getTopBar() {
        return null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2;
        boolean z = this.e;
        ij ijVar = this.b;
        z1 z1Var = this.d;
        if (!z) {
            if (view == ijVar.getButtonsView().getCloseButton()) {
                z1Var.e();
                return;
            }
            if (view == ijVar.getLogoIcon()) {
                z1Var.d();
                return;
            } else if (view == ijVar.getButtonsView().getAdChoicesButton()) {
                z1Var.p();
                return;
            } else {
                z1Var.c(1, new gia());
                return;
            }
        }
        if (view == ijVar.getButtonsView().getCloseButton()) {
            z1Var.e();
            return;
        }
        if (view == ijVar.getLogoIcon()) {
            z1Var.d();
            return;
        }
        if (view == ijVar.getButtonsView().getAdChoicesButton()) {
            z1Var.p();
            return;
        }
        if (view == ijVar.getTitleTextView()) {
            i2 = 1;
        } else if (view == ijVar.getAgeRestrictionTextView()) {
            i2 = 128;
        } else if (view == ijVar.getLogoIcon()) {
            i2 = 4;
        } else {
            i2 = view == ijVar.getDomainTextView() ? 512 : 2048;
        }
        z1Var.c(1, new up9(i2, this.f));
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        e();
    }

    @Override // com.my.target.z0
    public void setBanner(xda xdaVar) {
        if (xdaVar.q == null) {
            return;
        }
        ij ijVar = this.b;
        ijVar.getLogoIcon().setImageBitmap(r2a.a((Bitmap) xdaVar.q.d));
        ijVar.getTitleTextView().setText(xdaVar.e);
        ijVar.getDomainTextView().setText(xdaVar.m.equals("store") ? xdaVar.j : xdaVar.l);
        TextView ageRestrictionTextView = ijVar.getAgeRestrictionTextView();
        String str = xdaVar.g;
        String str2 = xdaVar.n;
        String strC = TextUtils.isEmpty(str2) ? "" : bj.c("", str2);
        if (!TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str)) {
                strC = strC.concat(" ");
            }
            strC = bj.c(strC, str);
        }
        ageRestrictionTextView.setText(strC);
        if (xdaVar.b0 != null) {
            ijVar.getAdsIcon().setImageBitmap((Bitmap) xdaVar.b0.d);
        }
        this.c.setData(xdaVar.Y);
        boolean z = xdaVar.Q.c;
        t2a t2aVar = xdaVar.r;
        this.e = z;
        if (z) {
            setClickAreaActual(t2aVar);
        } else {
            setClickAreaLegacy(t2aVar);
        }
    }

    @Override // com.my.target.z0
    public void setDoubleBanners(List<v2a> list) {
    }

    @Override // com.my.target.z0
    public void setRemainingAllowCloseDelay(int i2) {
        this.b.getButtonsView().getProgress().setText(String.valueOf(i2));
    }
}
