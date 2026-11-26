package com.my.target;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import defpackage.aw9;
import defpackage.ho9;
import defpackage.l3a;
import defpackage.rk3;

/* JADX INFO: loaded from: classes4.dex */
public final class qa extends aw9 implements f0.a {
    public final f0 b;
    public final n c;
    public final dg d;
    public final e6 e;
    public final ImageView f;
    public final Button g;
    public final FrameLayout h;
    public final int i;
    public final int j;
    public zf.a k;

    public qa(int i, Context context, int i2) {
        super(context);
        this.i = i;
        this.j = i2;
        f0 f0Var = new f0(context);
        this.b = f0Var;
        f0Var.setAdVideoViewListener(this);
        addView(f0Var, new ViewGroup.LayoutParams(-1, -1));
        this.c = ho9.a(context, true);
        e6 e6Var = new e6(context);
        this.e = e6Var;
        e6Var.setPadding((int) rk3.b(context, 1, 6.0f));
        addView(e6Var);
        FrameLayout frameLayout = new FrameLayout(context);
        this.h = frameLayout;
        aw9.a(frameLayout, (int) rk3.b(context, 1, 12.0f));
        frameLayout.setBackgroundColor(-870572770);
        addView(frameLayout);
        ImageView imageView = new ImageView(context);
        this.f = imageView;
        imageView.setId(View.generateViewId());
        aw9.a(imageView, (int) TypedValue.applyDimension(1, 8.0f, context.getResources().getDisplayMetrics()));
        frameLayout.addView(imageView);
        Button button = new Button(context);
        this.g = button;
        aw9.a(button, (int) rk3.b(context, 1, 8.0f));
        frameLayout.addView(button);
        dg dgVar = new dg(context);
        this.d = dgVar;
        addView(dgVar);
    }

    public ImageView getAdIcon() {
        return this.f;
    }

    public f0 getAdVideoView() {
        return this.b;
    }

    public Button getCtaButton() {
        return this.g;
    }

    public dg getProgressView() {
        return this.d;
    }

    public n getVideoPlayer() {
        return this.c;
    }

    public e6 getVolumeButton() {
        return this.e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        l3a l3aVar = new l3a(getContext());
        this.b.layout(0, 0, i5, i6);
        int iB = l3aVar.b(48.0f);
        int iB2 = l3aVar.b(6.0f);
        int iB3 = i6 - l3aVar.b(16.0f);
        this.e.layout(iB2, iB3 - iB, iB + iB2, iB3);
        int iB4 = l3aVar.b(190.0f);
        int iB5 = l3aVar.b(56.0f);
        int iB6 = i5 - l3aVar.b(13.0f);
        int iB7 = i6 - l3aVar.b(16.0f);
        this.h.layout(iB6 - iB4, iB7 - iB5, iB6, iB7);
        int iB8 = l3aVar.b(44.0f);
        int iB9 = l3aVar.b(6.0f);
        int i7 = (iB5 - iB8) / 2;
        this.f.layout(iB9, i7, iB9 + iB8, i7 + iB8);
        this.g.layout((iB9 * 2) + iB8, i7, iB4 - iB9, iB5 - iB9);
        int iB10 = l3aVar.b(3.0f);
        int iB11 = l3aVar.b(13.0f);
        this.d.layout(iB11, i6 - iB10, i5 - iB11, i6);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        l3a l3aVar = new l3a(getContext());
        this.b.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
        int iB = l3aVar.b(48.0f);
        this.e.measure(View.MeasureSpec.makeMeasureSpec(iB, 1073741824), View.MeasureSpec.makeMeasureSpec(iB, 1073741824));
        int iB2 = l3aVar.b(190.0f);
        int iB3 = l3aVar.b(56.0f);
        this.h.measure(View.MeasureSpec.makeMeasureSpec(iB2, 1073741824), View.MeasureSpec.makeMeasureSpec(iB3, 1073741824));
        int iB4 = l3aVar.b(44.0f);
        this.f.measure(View.MeasureSpec.makeMeasureSpec(iB4, 1073741824), View.MeasureSpec.makeMeasureSpec(iB4, 1073741824));
        this.g.measure(View.MeasureSpec.makeMeasureSpec(l3aVar.b(128.0f), 1073741824), View.MeasureSpec.makeMeasureSpec(iB4, 1073741824));
        int iB5 = l3aVar.b(3.0f);
        this.d.measure(View.MeasureSpec.makeMeasureSpec(size - (l3aVar.b(13.0f) * 2), 1073741824), View.MeasureSpec.makeMeasureSpec(iB5, 1073741824));
        setMeasuredDimension(size, size2);
    }

    @Override // com.my.target.f0.a
    public final void r() {
        zf.a aVar;
        n nVar = this.c;
        if (!(nVar instanceof h)) {
            zf.a aVar2 = this.k;
            if (aVar2 != null) {
                aVar2.b("Playback within no hardware accelerated view is available only with ExoPlayer");
                return;
            }
            return;
        }
        f0 f0Var = this.b;
        f0Var.setViewMode(1);
        f0Var.b(this.i, this.j);
        h hVar = (h) nVar;
        hVar.b(f0Var);
        if (!hVar.isPlaying() || (aVar = this.k) == null) {
            return;
        }
        aVar.k();
    }

    public void setPlayableVideoListener(zf.a aVar) {
        this.k = aVar;
        this.c.a(aVar);
    }
}
