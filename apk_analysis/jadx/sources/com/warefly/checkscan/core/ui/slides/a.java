package com.warefly.checkscan.core.ui.slides;

import android.view.animation.Animation;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Animation.AnimationListener {
    public final /* synthetic */ SlidesProgressBar a;

    public a(SlidesProgressBar slidesProgressBar) {
        this.a = slidesProgressBar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        SlidesProgressBar slidesProgressBar = this.a;
        SlidesProgressBar.b bVar = slidesProgressBar.h;
        if (bVar != null) {
            bVar.onAnimationEnd(slidesProgressBar.b, slidesProgressBar.c);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        this.a.e.setVisibility(0);
    }
}
