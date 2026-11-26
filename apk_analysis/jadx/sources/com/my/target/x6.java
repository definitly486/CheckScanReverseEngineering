package com.my.target;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import defpackage.r64;

/* JADX INFO: loaded from: classes4.dex */
public class x6 extends FrameLayout implements n.a {
    public boolean b;
    public h c;

    public x6(Context context, AttributeSet attributeSet, int i) {
        View f0Var = new f0(context);
        super(context, attributeSet, i);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        addView(f0Var, layoutParams);
    }

    @Override // com.my.target.n.a
    public final void a(float f) {
    }

    @Override // com.my.target.n.a
    public final void b(String str) {
    }

    @Override // com.my.target.n.a
    public final void c() {
    }

    @Override // com.my.target.n.a
    public final void d(float f, float f2) {
    }

    @Override // com.my.target.n.a
    public final void f() {
        this.b = true;
    }

    @Override // com.my.target.n.a
    public final void g() {
    }

    public r64 getAdPlayerListener() {
        return null;
    }

    public float getAdVideoDuration() {
        h hVar = this.c;
        if (hVar != null) {
            return hVar.getDuration();
        }
        return 0.0f;
    }

    public float getAdVideoPosition() {
        h hVar = this.c;
        if (hVar != null) {
            return hVar.getPosition() / 1000.0f;
        }
        return 0.0f;
    }

    public int getPlaceholderHeight() {
        return 0;
    }

    public int getPlaceholderWidth() {
        return 0;
    }

    public View getView() {
        return this;
    }

    @Override // com.my.target.n.a
    public final void h() {
        if (this.b) {
            this.b = false;
        }
    }

    @Override // com.my.target.n.a
    public final void j() {
    }

    @Override // com.my.target.n.a
    public final void k() {
    }

    @Override // com.my.target.n.a
    public final void o() {
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        View.MeasureSpec.getMode(i);
        View.MeasureSpec.getMode(i2);
        View.MeasureSpec.getSize(i2);
        super.onMeasure(i, i2);
    }

    @Override // com.my.target.n.a
    public final void s() {
    }

    public void setAdPlayerListener(r64 r64Var) {
    }

    public void setUseExoPlayer(boolean z) {
    }

    public void setVideoPlayer(h hVar) {
        this.c = hVar;
    }

    public void setVolume(float f) {
        h hVar = this.c;
        if (hVar != null) {
            hVar.setVolume(f);
        }
    }

    public x6(Context context) {
        this(context, null);
    }

    public x6(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
