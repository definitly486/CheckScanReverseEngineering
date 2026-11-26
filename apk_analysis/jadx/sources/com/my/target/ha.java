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
import defpackage.yv9;

/* JADX INFO: loaded from: classes4.dex */
public class ha extends RelativeLayout implements wy9 {
    public static final int j = View.generateViewId();
    public final f6 b;
    public final RelativeLayout.LayoutParams c;
    public final zh d;
    public final q1 e;
    public final l3a f;
    public final m g;
    public h14 h;
    public h14 i;

    public ha(Context context) {
        super(context);
        setBackgroundColor(0);
        l3a l3aVar = new l3a(context);
        this.f = l3aVar;
        zh zhVar = new zh(context);
        this.d = zhVar;
        int i = j;
        zhVar.setId(i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        zhVar.setLayoutParams(layoutParams);
        l3a.n(zhVar, "image_view");
        addView(zhVar);
        f6 f6Var = new f6(context);
        this.b = f6Var;
        f6Var.a(kv9.a((int) rk3.b(context, 1, 28.0f)), false);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        this.c = layoutParams2;
        layoutParams2.addRule(7, i);
        layoutParams2.addRule(6, i);
        f6Var.setLayoutParams(layoutParams2);
        q1 q1Var = new q1(context);
        this.e = q1Var;
        m mVar = new m(context);
        this.g = mVar;
        mVar.setVisibility(8);
        int iB = l3aVar.b(10.0f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.leftMargin = iB;
        layoutParams3.gravity = 16;
        LinearLayout linearLayout = new LinearLayout(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.setMargins(iB, iB, iB, iB);
        layoutParams4.addRule(5, i);
        layoutParams4.addRule(6, i);
        linearLayout.setOrientation(0);
        linearLayout.addView(q1Var);
        linearLayout.addView(mVar, layoutParams3);
        l3a.n(f6Var, "close_button");
        addView(f6Var);
        l3a.n(q1Var, "age_bordering");
        addView(linearLayout, layoutParams4);
    }

    @Override // defpackage.wy9
    public final void a(q qVar, yv9 yv9Var) {
        m mVar = this.g;
        mVar.setVisibility(0);
        mVar.setImageBitmap((Bitmap) qVar.a.d);
        mVar.setOnClickListener(yv9Var);
    }

    @Override // defpackage.wy9
    public final void b(h14 h14Var, h14 h14Var2, h14 h14Var3) {
        this.i = h14Var;
        this.h = h14Var2;
        Bitmap bitmap = h14Var3 != null ? (Bitmap) h14Var3.d : null;
        if (bitmap != null) {
            f6 f6Var = this.b;
            f6Var.a(bitmap, true);
            int i = -f6Var.getMeasuredWidth();
            RelativeLayout.LayoutParams layoutParams = this.c;
            layoutParams.leftMargin = i;
            layoutParams.bottomMargin = layoutParams.leftMargin;
        }
        c();
    }

    public final void c() {
        Point pointQ = l3a.q(getContext());
        int i = pointQ.x;
        int i2 = pointQ.y;
        if (i <= 0 || i2 <= 0) {
            return;
        }
        h14 h14Var = ((float) i) / ((float) i2) > 1.0f ? this.i : this.h;
        if (h14Var == null && (h14Var = this.i) == null) {
            h14Var = this.h;
        }
        if (h14Var == null) {
            return;
        }
        this.d.setImageData(h14Var);
    }

    @Override // defpackage.wy9
    public f6 getCloseButton() {
        return this.b;
    }

    @Override // defpackage.wy9
    public ImageView getImageView() {
        return this.d;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c();
    }

    @Override // defpackage.wy9
    public void setAgeRestrictions(String str) {
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
