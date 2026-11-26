package com.my.target;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.RectF;
import android.media.AudioManager;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import defpackage.h14;
import defpackage.ho9;
import defpackage.kha;
import defpackage.l3a;
import defpackage.rn9;
import defpackage.xda;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public class zf extends ViewGroup implements f0.a {
    public final zh b;
    public final l3a c;
    public final f6 d;
    public final b e;
    public final f0 f;
    public final FrameLayout g;
    public final ProgressBar h;
    public final boolean i;
    public final boolean j;
    public a k;
    public n l;
    public rn9 m;
    public Bitmap n;
    public int o;
    public int p;
    public boolean q;

    public interface a extends AudioManager.OnAudioFocusChangeListener, n.a {
        void l();

        void m();

        void n();

        void q();
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            zf zfVar = zf.this;
            if (zfVar.k == null) {
                return;
            }
            if (!zfVar.h() && !zfVar.g()) {
                zfVar.k.q();
                return;
            }
            boolean zG = zfVar.g();
            a aVar = zfVar.k;
            if (zG) {
                aVar.n();
            } else {
                aVar.l();
            }
        }
    }

    public zf(Context context, l3a l3aVar, boolean z) {
        super(context);
        this.q = true;
        this.c = l3aVar;
        this.i = z;
        this.j = true;
        this.b = new zh(context);
        this.d = new f6(context);
        this.h = new ProgressBar(context, null, R.attr.progressBarStyleLarge);
        this.g = new FrameLayout(context);
        f0 f0Var = new f0(context);
        this.f = f0Var;
        f0Var.setAdVideoViewListener(this);
        this.e = new b();
    }

    public final void a(boolean z) {
        n nVar;
        this.d.setVisibility(8);
        this.h.setVisibility(0);
        if (this.m == null || (nVar = this.l) == null) {
            return;
        }
        nVar.a(this.k);
        n nVar2 = this.l;
        f0 f0Var = this.f;
        nVar2.b(f0Var);
        rn9 rn9Var = this.m;
        f0Var.b(rn9Var.b, rn9Var.c);
        rn9 rn9Var2 = this.m;
        String str = (String) rn9Var2.d;
        if (!z || str == null) {
            this.l.c(f0Var.getContext(), Uri.parse(rn9Var2.a));
        } else {
            this.l.c(f0Var.getContext(), Uri.parse(str));
        }
    }

    public final void b() {
        n nVar = this.l;
        if (nVar != null) {
            nVar.destroy();
        }
        this.l = null;
    }

    public final void c(xda xdaVar) {
        this.g.setVisibility(8);
        this.d.setVisibility(8);
        this.h.setVisibility(8);
        this.f.setVisibility(8);
        zh zhVar = this.b;
        zhVar.setVisibility(0);
        h14 h14Var = xdaVar.p;
        if (h14Var != null) {
            Object obj = h14Var.d;
            if (((Bitmap) obj) != null) {
                int i = h14Var.b;
                this.p = i;
                int i2 = h14Var.c;
                this.o = i2;
                if (i == 0 || i2 == 0) {
                    this.p = ((Bitmap) obj).getWidth();
                    this.o = ((Bitmap) h14Var.d).getHeight();
                }
                zhVar.setImageBitmap((Bitmap) h14Var.d);
                zhVar.setClickable(false);
            }
        }
    }

    public final void d(xda xdaVar, int i) {
        Bitmap bitmapCreateBitmap;
        kha khaVar = xdaVar.Z;
        if (khaVar == null) {
            c(xdaVar);
            return;
        }
        rn9 rn9Var = (rn9) khaVar.h0;
        this.m = rn9Var;
        if (rn9Var == null) {
            return;
        }
        n nVarA = ho9.a(getContext(), this.j);
        this.l = nVarA;
        nVarA.a(this.k);
        if (khaVar.X) {
            this.l.setVolume(0.0f);
        }
        rn9 rn9Var2 = this.m;
        int i2 = rn9Var2.b;
        this.p = i2;
        int i3 = rn9Var2.c;
        this.o = i3;
        h14 h14Var = khaVar.S;
        zh zhVar = this.b;
        if (h14Var != null) {
            Bitmap bitmap = (Bitmap) h14Var.d;
            this.n = bitmap;
            if (i2 <= 0 || i3 <= 0) {
                this.p = h14Var.b;
                this.o = h14Var.c;
            }
            zhVar.setImageBitmap(bitmap);
        } else {
            h14 h14Var2 = xdaVar.p;
            if (h14Var2 != null) {
                if (i2 <= 0 || i3 <= 0) {
                    this.p = h14Var2.b;
                    this.o = h14Var2.c;
                }
                Bitmap bitmap2 = (Bitmap) h14Var2.d;
                this.n = bitmap2;
                zhVar.setImageBitmap(bitmap2);
            }
        }
        if (i != 1) {
            boolean z = this.i;
            l3a l3aVar = this.c;
            int iB = z ? l3aVar.b(140.0f) : l3aVar.b(96.0f);
            int i4 = (iB / 32) + (iB / 4);
            int i5 = iB / 8;
            Bitmap bitmap3 = null;
            try {
                bitmapCreateBitmap = Bitmap.createBitmap(iB, iB, Bitmap.Config.ARGB_8888);
            } catch (OutOfMemoryError unused) {
                y14.r(null, "InterstitialAdResources: Cannot build play icon - OOME");
                bitmapCreateBitmap = null;
            }
            if (bitmapCreateBitmap != null) {
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                paint.setColor(-2013265920);
                float f = iB;
                canvas.drawOval(new RectF(0.0f, 0.0f, f, f), paint);
                Paint paint2 = new Paint();
                paint2.setColor(0);
                canvas.drawPaint(paint2);
                paint2.setStrokeWidth(4.0f);
                paint2.setColor(-16733198);
                paint2.setStyle(Paint.Style.FILL_AND_STROKE);
                paint2.setAntiAlias(true);
                int i6 = i5 * 3;
                Point point = new Point(i6, i4);
                Point point2 = new Point(i6, iB - i4);
                Point point3 = new Point(iB - (i5 * 2), iB / 2);
                Path path = new Path();
                path.setFillType(Path.FillType.EVEN_ODD);
                path.moveTo(point.x, point.y);
                path.lineTo(point2.x, point2.y);
                path.lineTo(point3.x, point3.y);
                path.lineTo(point.x, point.y);
                path.close();
                canvas.drawPath(path, paint2);
                bitmap3 = bitmapCreateBitmap;
            }
            this.d.a(bitmap3, false);
        }
    }

    public final void e(boolean z) {
        n nVar = this.l;
        if (nVar != null) {
            nVar.stop();
        }
        this.h.setVisibility(8);
        zh zhVar = this.b;
        zhVar.setVisibility(0);
        zhVar.setImageBitmap(this.n);
        this.q = z;
        f6 f6Var = this.d;
        if (z) {
            f6Var.setVisibility(0);
            return;
        }
        zhVar.setOnClickListener(null);
        f6Var.setOnClickListener(null);
        setOnClickListener(null);
    }

    public final void f() {
        View view = this.d;
        l3a.n(view, "play_button");
        zh zhVar = this.b;
        l3a.n(zhVar, "media_image");
        View view2 = this.f;
        l3a.n(view2, "video_texture");
        View view3 = this.g;
        l3a.n(view3, "clickable_layout");
        zhVar.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        zhVar.setAdjustViewBounds(true);
        addView(view2);
        View view4 = this.h;
        view4.setVisibility(8);
        addView(zhVar);
        addView(view4);
        addView(view3);
        addView(view);
    }

    public final boolean g() {
        n nVar = this.l;
        return nVar != null && nVar.b();
    }

    public FrameLayout getClickableLayout() {
        return this.g;
    }

    public zh getImageView() {
        return this.b;
    }

    public n getVideoPlayer() {
        return this.l;
    }

    public final boolean h() {
        n nVar = this.l;
        return nVar != null && nVar.isPlaying();
    }

    public final void i() {
        n nVar = this.l;
        if (nVar == null) {
            return;
        }
        nVar.pause();
        zh zhVar = this.b;
        zhVar.setVisibility(0);
        Bitmap screenShot = this.f.getScreenShot();
        if (screenShot != null && this.l.g()) {
            zhVar.setImageBitmap(screenShot);
        }
        if (this.q) {
            this.d.setVisibility(0);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((i3 - i) - measuredWidth) / 2;
                int i7 = ((i4 - i2) - measuredHeight) / 2;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i4 = this.o;
        if (i4 == 0 || (i3 = this.p) == 0) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
            return;
        }
        if (mode2 == 0 && size2 == 0) {
            size2 = i4;
            size = i3;
            mode = Integer.MIN_VALUE;
            mode2 = Integer.MIN_VALUE;
        }
        if (size2 == 0 || mode2 == 0) {
            size2 = (int) ((size / i3) * i4);
        }
        if (size == 0 || mode == 0) {
            size = (int) ((size2 / i4) * i3);
        }
        float f = i3 / i4;
        float f2 = size / f;
        float f3 = size2;
        if (f2 > f3) {
            size = (int) (f * f3);
        } else {
            size2 = (int) f2;
        }
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                int i6 = (childAt == this.b || childAt == this.g || childAt == this.f) ? 1073741824 : Integer.MIN_VALUE;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(size, i6), View.MeasureSpec.makeMeasureSpec(size2, i6));
            }
        }
        setMeasuredDimension(size, size2);
    }

    @Override // com.my.target.f0.a
    public final void r() {
        a aVar;
        if (!(this.l instanceof h)) {
            a aVar2 = this.k;
            if (aVar2 != null) {
                aVar2.b("Playback within no hardware accelerated view is available only with ExoPlayer");
                return;
            }
            return;
        }
        f0 f0Var = this.f;
        f0Var.setViewMode(1);
        rn9 rn9Var = this.m;
        if (rn9Var != null) {
            f0Var.b(rn9Var.b, rn9Var.c);
        }
        this.l.b(f0Var);
        if (!this.l.isPlaying() || (aVar = this.k) == null) {
            return;
        }
        aVar.m();
    }

    public void setInterstitialPromoViewListener(a aVar) {
        this.k = aVar;
        n nVar = this.l;
        if (nVar != null) {
            nVar.a(aVar);
        }
    }
}
