package com.my.target;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import defpackage.h14;
import defpackage.kv9;
import defpackage.l3a;
import defpackage.rk3;
import defpackage.wy9;
import defpackage.y14;
import defpackage.yv9;

/* JADX INFO: loaded from: classes4.dex */
public final class ja extends RelativeLayout implements wy9 {
    public static final int j = View.generateViewId();
    public final zh b;
    public final RelativeLayout.LayoutParams c;
    public final f6 d;
    public final q1 e;
    public final l3a f;
    public final m g;
    public h14 h;
    public h14 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ja(Context context) {
        super(context);
        context.getClass();
        zh zhVar = new zh(context);
        int i = j;
        zhVar.setId(i);
        l3a.n(zhVar, "image_view");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        zhVar.setLayoutParams(layoutParams);
        this.b = zhVar;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(7, i);
        layoutParams2.addRule(6, i);
        this.c = layoutParams2;
        f6 f6Var = new f6(context);
        f6Var.setLayoutParams(layoutParams2);
        f6Var.a(kv9.a((int) rk3.b(context, 1, 28.0f)), false);
        l3a.n(f6Var, "close_button");
        this.d = f6Var;
        q1 q1Var = new q1(context);
        this.e = q1Var;
        l3a l3aVar = new l3a(context);
        this.f = l3aVar;
        int iB = l3aVar.b(10.0f);
        m mVar = new m(context);
        mVar.setVisibility(8);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.leftMargin = iB;
        layoutParams3.gravity = 16;
        mVar.setLayoutParams(layoutParams3);
        this.g = mVar;
        y14.r(null, "InterstitialImageViewV2: Kotlin is here!");
        setBackgroundColor(0);
        addView(zhVar);
        addView(f6Var);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        l3a.n(q1Var, "age_bordering");
        linearLayout.addView(q1Var);
        linearLayout.addView(mVar);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.setMargins(iB, iB, iB, iB);
        layoutParams4.addRule(5, i);
        layoutParams4.addRule(6, i);
        linearLayout.setLayoutParams(layoutParams4);
        addView(linearLayout);
    }

    @Override // defpackage.wy9
    public final void a(q qVar, yv9 yv9Var) {
        qVar.getClass();
        m mVar = this.g;
        mVar.setVisibility(0);
        mVar.setImageBitmap((Bitmap) qVar.a.d);
        mVar.setOnClickListener(yv9Var);
    }

    @Override // defpackage.wy9
    public final void b(h14 h14Var, h14 h14Var2, h14 h14Var3) {
        Bitmap bitmap;
        this.i = h14Var;
        this.h = h14Var2;
        if (h14Var3 != null && (bitmap = (Bitmap) h14Var3.d) != null) {
            f6 f6Var = this.d;
            f6Var.a(bitmap, true);
            int i = -f6Var.getMeasuredWidth();
            RelativeLayout.LayoutParams layoutParams = this.c;
            layoutParams.leftMargin = i;
            layoutParams.bottomMargin = layoutParams.leftMargin;
        }
        c();
    }

    public final void c() {
        int i;
        h14 h14Var;
        Point pointQ = l3a.q(getContext());
        int i2 = pointQ.x;
        if (i2 <= 0 || (i = pointQ.y) <= 0) {
            return;
        }
        if (i2 > i) {
            h14Var = this.i;
            if (h14Var == null) {
                h14Var = this.h;
            }
        } else {
            h14Var = this.h;
            if (h14Var == null) {
                h14Var = this.i;
            }
        }
        if (h14Var == null) {
            return;
        }
        this.b.setImageData(h14Var);
    }

    @Override // defpackage.wy9
    public f6 getCloseButton() {
        return this.d;
    }

    @Override // defpackage.wy9
    public ImageView getImageView() {
        return this.b;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c();
    }

    @Override // defpackage.wy9
    public void setAgeRestrictions(String str) {
        str.getClass();
        boolean zIsEmpty = TextUtils.isEmpty(str);
        q1 q1Var = this.e;
        if (zIsEmpty) {
            q1Var.setVisibility(8);
            return;
        }
        q1Var.a(-7829368, 0);
        l3a l3aVar = this.f;
        q1Var.setPadding(l3aVar.b(2.0f), 0, 0, 0);
        q1Var.setTextColor(-1118482);
        q1Var.a(-1118482, l3aVar.b(3.0f));
        q1Var.setBackgroundColor(1711276032);
        q1Var.setText(str);
        q1Var.setVisibility(0);
    }

    @Override // defpackage.wy9
    public final View a() {
        return this;
    }
}
