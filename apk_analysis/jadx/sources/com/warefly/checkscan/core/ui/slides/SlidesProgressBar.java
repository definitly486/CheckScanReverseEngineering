package com.warefly.checkscan.core.ui.slides;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import com.warefly.checkscan.R;
import defpackage.p38;

/* JADX INFO: loaded from: classes.dex */
public final class SlidesProgressBar extends FrameLayout {
    public final int b;
    public final long c;
    public final long d;
    public final View e;
    public final View f;
    public a g;
    public b h;

    public final class a extends ScaleAnimation {
    }

    public interface b {
        void onAnimationEnd(int i, long j);
    }

    public SlidesProgressBar(Context context, int i, long j) {
        super(context);
        this.b = i;
        this.c = j;
        this.d = 5000L;
        LayoutInflater.from(context).inflate(R.layout.slide_progress, this);
        View viewFindViewById = findViewById(R.id.front_progress);
        viewFindViewById.getClass();
        this.e = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.max_progress);
        viewFindViewById2.getClass();
        this.f = viewFindViewById2;
        setOutlineProvider(new p38(0));
        setClipToOutline(true);
    }

    public final void a() {
        a aVar = this.g;
        if (aVar != null) {
            aVar.setAnimationListener(null);
        }
        a aVar2 = this.g;
        if (aVar2 != null) {
            aVar2.cancel();
        }
        this.g = null;
    }

    public final float getCurrentProgress() {
        return 0.0f;
    }

    public final long getStoryId() {
        return this.c;
    }

    public final void setEndAnimationListener(b bVar) {
        this.h = bVar;
    }

    public final void setMax() {
        this.f.setVisibility(0);
        a();
    }

    public final void setMaxWithoutCallback() {
        View view = this.f;
        view.setBackgroundResource(R.color.white);
        view.setVisibility(0);
        a aVar = this.g;
        if (aVar != null) {
            if (aVar != null) {
                aVar.setAnimationListener(null);
            }
            a aVar2 = this.g;
            if (aVar2 != null) {
                aVar2.cancel();
            }
        }
    }

    public final void setMin() {
        this.f.setVisibility(8);
        View view = this.e;
        view.clearAnimation();
        view.setAnimation(null);
        view.setVisibility(4);
        a();
    }

    public final void setPartProgress(float f) {
        this.f.setVisibility(8);
        a aVar = new a(f, 1.0f, 1.0f, 1.0f, 0, 0.0f, 1, 0.0f);
        this.g = aVar;
        aVar.setDuration(Long.MAX_VALUE);
        this.e.startAnimation(this.g);
    }
}
