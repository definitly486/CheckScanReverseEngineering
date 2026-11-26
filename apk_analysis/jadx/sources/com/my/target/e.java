package com.my.target;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import defpackage.f72;
import defpackage.lga;
import defpackage.sn9;
import defpackage.tn9;
import defpackage.un9;
import defpackage.zha;

/* JADX INFO: loaded from: classes4.dex */
public final class e implements y0.a {
    public final y0 b;
    public final cl c;

    public final class a {
        public final Context a;

        public a(e eVar, f72 f72Var, Context context) {
            this.a = context;
        }
    }

    public e(String str, f72 f72Var, Context context) {
        this.c = new cl(str, new lga(new a(this, f72Var, context)), new tn9(), context);
        this.b = new y0(this, context);
    }

    @Override // com.my.target.y0.a
    public final void b(FrameLayout frameLayout) {
        frameLayout.setBackground(new ColorDrawable(1711276032));
        frameLayout.setAlpha(0.0f);
        frameLayout.animate().alpha(1.0f).setDuration(300L).start();
        DisplayMetrics displayMetrics = frameLayout.getContext().getResources().getDisplayMetrics();
        un9 un9Var = new un9((int) TypedValue.applyDimension(1, 16.0f, displayMetrics));
        cl clVar = this.c;
        clVar.setOutlineProvider(un9Var);
        frameLayout.addView(clVar, -1, -1);
        View zhaVar = new zha(frameLayout.getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 36.0f, displayMetrics), (int) TypedValue.applyDimension(1, 36.0f, displayMetrics));
        layoutParams.gravity = 8388661;
        int iApplyDimension = (int) TypedValue.applyDimension(1, 8.0f, displayMetrics);
        layoutParams.setMargins(0, iApplyDimension, iApplyDimension, 0);
        frameLayout.addView(zhaVar, layoutParams);
        zhaVar.setOnClickListener(new sn9(this, 0));
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, clVar.getContext().getResources().getDisplayMetrics().heightPixels, 0.0f);
        translateAnimation.setDuration(500L);
        translateAnimation.setFillAfter(true);
        clVar.startAnimation(translateAnimation);
        clVar.b(clVar.e);
    }

    @Override // com.my.target.y0.a
    public final void m() {
    }
}
