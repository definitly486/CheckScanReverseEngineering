package com.my.target;

import android.content.Context;
import android.content.res.Configuration;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.my.target.w4;
import defpackage.efa;
import defpackage.ho9;
import defpackage.ko9;
import defpackage.xda;
import defpackage.yu9;

/* JADX INFO: loaded from: classes4.dex */
public class w4 extends FrameLayout implements efa {
    public static final /* synthetic */ int g = 0;
    public final w1 b;
    public z0 c;
    public final w1.b d;
    public final w1 e;
    public final rf f;

    public w4(Context context, w1 w1Var, w1.b bVar, w1 w1Var2) {
        super(context);
        this.b = w1Var;
        this.d = bVar;
        this.e = w1Var2;
        ko9 ko9Var = new ko9(context);
        rf rfVar = new rf(context);
        int i = ko9.e;
        SparseIntArray sparseIntArray = ko9Var.a;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, sparseIntArray.get(i));
        int i2 = ko9.k;
        int i3 = sparseIntArray.get(i2);
        layoutParams.setMargins(i3, sparseIntArray.get(i2), i3, sparseIntArray.get(ko9.g));
        rfVar.setLayoutParams(layoutParams);
        this.f = rfVar;
        b();
    }

    public final void a(xda xdaVar, boolean z) {
        z0 z0Var = this.c;
        rf rfVar = this.f;
        if (z0Var != null) {
            LinearLayout topBar = z0Var.getTopBar();
            if (topBar != null) {
                topBar.removeView(rfVar);
            }
            removeView(this.c.a());
        }
        i0 i0Var = new i0(getContext());
        r1 r1Var = new r1(getContext());
        r1Var.getSkipButton().setOnClickListener(new View.OnClickListener() { // from class: vfa
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = w4.g;
                this.b.e.A();
            }
        });
        if (xdaVar.Z != null) {
            f0 f0Var = new f0(getContext());
            nb nbVar = new nb(i0Var, r1Var, new yj(ho9.a(f0Var.getContext(), true), f0Var, getContext(), this.d), z ? null : rfVar, this.b, this.d, getContext());
            this.c = nbVar;
            nbVar.setBanner(xdaVar);
        } else {
            fb fbVar = new fb(i0Var, r1Var, new i6(getContext()), z ? null : rfVar, this.b, getContext());
            this.c = fbVar;
            fbVar.setBanner(xdaVar);
        }
        addView(this.c.a());
    }

    public final void b() {
        yu9 yu9Var = new yu9(getContext());
        setBackgroundColor(yu9Var.a.get(yu9.r));
    }

    @Override // defpackage.efa
    public z0 getInterstitialView() {
        return this.c;
    }

    @Override // defpackage.efa
    public rf getProgressBar() {
        return this.f;
    }

    @Override // defpackage.efa
    public FrameLayout getRootLayout() {
        return this;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b();
    }
}
