package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import defpackage.h14;
import defpackage.lt2;
import defpackage.t2a;
import defpackage.v2a;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public class h6 extends o4 {
    public static final /* synthetic */ int r = 0;
    public final i6 q;

    public h6(Context context, f1 f1Var) {
        super(context, f1Var);
        Context context2 = getContext();
        i6 i6Var = new i6(context2);
        i6Var.setBackground(d(new yu9(context2)));
        i6Var.setClipToOutline(true);
        this.q = i6Var;
    }

    @Override // com.my.target.o4
    public final void c(v2a v2aVar) {
        FrameLayout frameLayout = this.h;
        i6 i6Var = this.q;
        frameLayout.removeView(i6Var);
        this.o.e(v2aVar, this);
        h14 h14Var = v2aVar.a.p;
        frameLayout.addView(i6Var, 0);
        if (h14Var == null) {
            return;
        }
        i6Var.getImageView().setImageBitmap((Bitmap) h14Var.d);
        i6Var.getImageView().setScaleType(ImageView.ScaleType.CENTER_CROP);
        frameLayout.post(new lt2(2, this, h14Var));
    }

    @Override // com.my.target.o4
    public final int e(View view) {
        if (view == this.q) {
            return 8;
        }
        return super.e(view);
    }

    @Override // com.my.target.o4
    public void setClickAreaActual(t2a t2aVar) {
        super.setClickAreaActual(t2aVar);
        c1 c1Var = this.n;
        i6 i6Var = this.q;
        i6Var.setOnTouchListener(c1Var);
        if (t2aVar.m) {
            i6Var.setOnClickListener(this);
            return;
        }
        if (!t2aVar.d) {
            this = null;
        }
        i6Var.setOnClickListener(this);
    }

    @Override // com.my.target.o4
    public void setClickAreaLegacy(t2a t2aVar) {
        super.setClickAreaLegacy(t2aVar);
        boolean z = t2aVar.m;
        i6 i6Var = this.q;
        if (z) {
            i6Var.setOnClickListener(this);
            return;
        }
        if (!t2aVar.d) {
            this = null;
        }
        i6Var.setOnClickListener(this);
    }
}
