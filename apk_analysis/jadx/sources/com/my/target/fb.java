package com.my.target;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.h14;
import defpackage.r2a;
import defpackage.t2a;
import defpackage.v2a;
import defpackage.xda;
import defpackage.yu9;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class fb extends pb implements View.OnClickListener {
    public final i6 n;

    public fb(i0 i0Var, r1 r1Var, i6 i6Var, rf rfVar, z0.a aVar, Context context) {
        super(i0Var, r1Var, rfVar, aVar, context);
        this.n = i6Var;
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        yu9 yu9Var = this.i;
        setBackgroundColor(yu9Var.a.get(yu9.r));
        this.c.addView(i6Var, 0);
    }

    @Override // com.my.target.z0
    public final View a() {
        return this;
    }

    @Override // com.my.target.pb
    public final int c(View view) {
        if (view == this.n.getImageView()) {
            return 8;
        }
        return super.c(view);
    }

    @Override // com.my.target.pb, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        yu9 yu9Var = this.i;
        this.n.setBackgroundColor(yu9Var.a.get(yu9.x));
    }

    @Override // com.my.target.pb, com.my.target.z0
    public void setBanner(xda xdaVar) {
        Bitmap bitmap;
        h14 h14Var = xdaVar.p;
        if (h14Var != null && (bitmap = (Bitmap) h14Var.d) != null) {
            i6 i6Var = this.n;
            i6Var.getImageView().setImageBitmap(bitmap);
            i6Var.setLayoutParams(b(bitmap.getWidth(), bitmap.getHeight()));
            i6Var.requestLayout();
        }
        super.setBanner(xdaVar);
    }

    @Override // com.my.target.pb
    public void setClickAreaActual(t2a t2aVar) {
        super.setClickAreaActual(t2aVar);
        i6 i6Var = this.n;
        zh imageView = i6Var.getImageView();
        c1 c1Var = this.l;
        imageView.setOnTouchListener(c1Var);
        i6Var.getLogoImageView().setOnTouchListener(c1Var);
        i6Var.getDomainTextView().setOnTouchListener(c1Var);
        if (t2aVar.m) {
            i6Var.getImageView().setOnClickListener(this);
            i6Var.getLogoImageView().setOnClickListener(this);
            i6Var.getDomainTextView().setOnClickListener(this);
        } else {
            i6Var.getImageView().setOnClickListener(t2aVar.d ? this : null);
            i6Var.getLogoImageView().setOnClickListener(t2aVar.c ? this : null);
            TextView domainTextView = i6Var.getDomainTextView();
            if (!t2aVar.j) {
                this = null;
            }
            domainTextView.setOnClickListener(this);
        }
    }

    @Override // com.my.target.pb
    public void setClickAreaLegacy(t2a t2aVar) {
        super.setClickAreaLegacy(t2aVar);
        boolean z = t2aVar.m;
        i6 i6Var = this.n;
        if (z) {
            i6Var.getImageView().setOnClickListener(this);
            i6Var.getLogoImageView().setOnClickListener(this);
            i6Var.getDomainTextView().setOnClickListener(this);
        } else {
            i6Var.getImageView().setOnClickListener(t2aVar.d ? this : null);
            i6Var.getLogoImageView().setOnClickListener(t2aVar.c ? this : null);
            TextView domainTextView = i6Var.getDomainTextView();
            if (!t2aVar.j) {
                this = null;
            }
            domainTextView.setOnClickListener(this);
        }
    }

    @Override // com.my.target.pb
    public void setDomain(String str) {
        super.setDomain(str);
        s3 s3Var = this.h;
        boolean z = s3Var instanceof uh;
        i6 i6Var = this.n;
        if (z) {
            if (TextUtils.isEmpty(str)) {
                i6Var.getDomainTextView().setVisibility(8);
            } else {
                i6Var.getDomainTextView().setText(str);
                i6Var.getDomainTextView().setVisibility(0);
            }
            i6Var.getDomainContainer().setVisibility(0);
            return;
        }
        if (s3Var == null || s3Var.getDomainTextView() == null || TextUtils.isEmpty(str)) {
            return;
        }
        i6Var.getDomainContainer().setVisibility(8);
    }

    @Override // com.my.target.pb, com.my.target.z0
    public void setDoubleBanners(List<v2a> list) {
    }

    @Override // com.my.target.pb
    public void setIcon(h14 h14Var) {
        super.setIcon(h14Var);
        if (h14Var == null || ((Bitmap) h14Var.d) == null || !(this.h instanceof uh)) {
            return;
        }
        this.n.getLogoImageView().setImageBitmap(r2a.a((Bitmap) h14Var.d));
    }
}
