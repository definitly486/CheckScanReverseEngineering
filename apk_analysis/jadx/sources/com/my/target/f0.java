package com.my.target;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.media3.exoplayer.ExoPlayer;
import defpackage.l3a;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public final class f0 extends FrameLayout {
    public final TextureView b;
    public SurfaceView c;
    public int d;
    public int e;
    public a f;
    public int g;

    public interface a {
        void r();
    }

    public f0(Context context) {
        super(context);
        this.b = new TextureView(context);
        a();
    }

    public final void a() {
        View view = this.b;
        l3a.n(view, "ad_video");
        if (getChildAt(0) != null) {
            removeViewAt(0);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        if (this.g == 0) {
            addView(view, layoutParams);
            return;
        }
        SurfaceView surfaceView = this.c;
        if (surfaceView == null) {
            surfaceView = new SurfaceView(getContext());
            this.c = surfaceView;
        }
        addView(surfaceView, layoutParams);
    }

    public final void b(int i, int i2) {
        this.d = i;
        this.e = i2;
        requestLayout();
        invalidate();
    }

    public Bitmap getScreenShot() {
        if (this.g == 1) {
            return null;
        }
        try {
            return this.b.getBitmap(getWidth(), getHeight());
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public TextureView getTextureView() {
        return this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        Window window;
        super.onAttachedToWindow();
        for (View view = this; view.isHardwareAccelerated() && (view.getLayerType() & 1) == 0; view = (View) view.getParent()) {
            if (!(view.getParent() instanceof View)) {
                Context context = getContext();
                if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && (window.getAttributes().flags & 16777216) == 0) {
                    break;
                } else {
                    return;
                }
            }
        }
        a aVar = this.f;
        if (aVar != null) {
            aVar.r();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i4 = this.d;
        if (i4 <= 0 || (i3 = this.e) <= 0) {
            super.onMeasure(i, i2);
            return;
        }
        float f = i4 / i3;
        if (mode == 0 && mode2 == 0) {
            size = i4;
            size2 = i3;
        } else if (mode == 0) {
            size = (int) (size2 * f);
            i4 = size;
            i3 = size2;
        } else if (mode2 != 0 && y14.a(f, 1.0f) == -1 && size2 <= size) {
            i4 = size;
            i3 = size2;
            size = (int) (size2 * f);
        } else {
            i4 = size;
            i3 = size2;
            size2 = (int) (size / f);
        }
        this.b.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
        SurfaceView surfaceView = this.c;
        if (surfaceView != null) {
            surfaceView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
        }
        setMeasuredDimension(i4, i3);
    }

    public void setAdVideoViewListener(a aVar) {
        this.f = aVar;
    }

    public void setExoPlayer(ExoPlayer exoPlayer) {
        if (exoPlayer == null) {
            return;
        }
        int i = this.g;
        if (i == 0) {
            exoPlayer.setVideoSurfaceView(null);
            exoPlayer.setVideoTextureView(this.b);
        } else {
            if (i != 1) {
                return;
            }
            exoPlayer.setVideoTextureView(null);
            exoPlayer.setVideoSurfaceView(this.c);
        }
    }

    public void setViewMode(int i) {
        if (this.g == i) {
            return;
        }
        this.g = i;
        a();
    }
}
