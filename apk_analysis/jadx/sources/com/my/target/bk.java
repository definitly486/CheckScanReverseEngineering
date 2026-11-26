package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.my.target.common.views.StarsRatingView;
import com.my.target.nativeads.views.MediaAdView;
import defpackage.l3a;
import defpackage.pha;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public class bk extends ViewGroup {
    public final TextView b;
    public final StarsRatingView c;
    public final Button d;
    public final Button e;
    public final l3a f;
    public final LinearLayout g;
    public final TextView h;
    public final FrameLayout i;
    public final MediaAdView j;
    public final TextView k;
    public final gk l;
    public final f6 m;
    public final f0 n;
    public final h5 o;
    public final h5 p;
    public final h5 q;
    public final b r;
    public final c s;
    public final a t;
    public final int u;
    public final int v;
    public int w;
    public static final int x = View.generateViewId();
    public static final int y = View.generateViewId();
    public static final int z = View.generateViewId();
    public static final int A = View.generateViewId();
    public static final int B = View.generateViewId();
    public static final int C = View.generateViewId();
    public static final int D = View.generateViewId();
    public static final int E = View.generateViewId();
    public static final int F = View.generateViewId();
    public static final int G = View.generateViewId();
    public static final int H = View.generateViewId();
    public static final int I = View.generateViewId();
    public static final int J = View.generateViewId();

    public class a implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = bk.x;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            bk bkVar = bk.this;
            if (bkVar.w == 2) {
                bkVar.a();
            }
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            bk bkVar = bk.this;
            b bVar = bkVar.r;
            bkVar.removeCallbacks(bVar);
            int i = bkVar.w;
            if (i == 2) {
                bkVar.a();
                return;
            }
            if (i == 0) {
                MediaAdView mediaAdView = bkVar.j;
                if (i != 2) {
                    bkVar.w = 2;
                    mediaAdView.getImageView().setVisibility(8);
                    mediaAdView.getProgressBarView().setVisibility(8);
                    bkVar.g.setVisibility(8);
                    bkVar.p.setVisibility(8);
                    bkVar.o.setVisibility(0);
                    bkVar.i.setVisibility(8);
                }
            }
            bkVar.postDelayed(bVar, 4000L);
        }
    }

    public interface d {
    }

    public bk(Context context) {
        Bitmap bitmapCreateBitmap;
        float f;
        Bitmap bitmapCreateBitmap2;
        super(context);
        Button button = new Button(context);
        this.e = button;
        TextView textView = new TextView(context);
        this.b = textView;
        StarsRatingView starsRatingView = new StarsRatingView(context);
        this.c = starsRatingView;
        Button button2 = new Button(context);
        this.d = button2;
        TextView textView2 = new TextView(context);
        this.h = textView2;
        FrameLayout frameLayout = new FrameLayout(context);
        this.i = frameLayout;
        h5 h5Var = new h5(context);
        this.o = h5Var;
        h5 h5Var2 = new h5(context);
        this.p = h5Var2;
        h5 h5Var3 = new h5(context);
        this.q = h5Var3;
        TextView textView3 = new TextView(context);
        this.k = textView3;
        MediaAdView mediaAdView = new MediaAdView(context);
        this.j = mediaAdView;
        gk gkVar = new gk(context);
        this.l = gkVar;
        f6 f6Var = new f6(context);
        this.m = f6Var;
        this.g = new LinearLayout(context);
        l3a l3aVar = new l3a(context);
        this.f = l3aVar;
        this.r = new b();
        this.s = new c();
        this.t = new a();
        this.n = new f0(context);
        int iB = l3aVar.b(28.0f);
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(iB, iB, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError unused) {
            y14.r(null, "NativeAdResources: Cannot build icon - OOME");
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap == null) {
            f = 100.0f;
        } else {
            f = 100.0f;
            float f2 = iB / 100.0f;
            Paint paint = new Paint();
            paint.setColor(0);
            paint.setStyle(Paint.Style.STROKE);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            pha.a(f2, iB, paint, canvas);
            canvas.drawArc(new RectF(57.0f * f2, f2 * 45.0f, f2 * 67.0f, f2 * 55.0f), 90.0f, -180.0f, false, paint);
            canvas.drawArc(new RectF(52.0f * f2, f2 * 40.0f, 72.0f * f2, f2 * 60.0f), 90.0f, -180.0f, false, paint);
        }
        int iB2 = l3aVar.b(28.0f);
        try {
            bitmapCreateBitmap2 = Bitmap.createBitmap(iB2, iB2, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError unused2) {
            y14.r(null, "NativeAdResources: Cannot build icon - OOME");
            bitmapCreateBitmap2 = null;
        }
        if (bitmapCreateBitmap2 != null) {
            float f3 = iB2 / f;
            Paint paint2 = new Paint();
            paint2.setColor(0);
            paint2.setStyle(Paint.Style.STROKE);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            pha.a(f3, iB2, paint2, canvas2);
            Path path = new Path();
            path.setFillType(Path.FillType.EVEN_ODD);
            float f4 = 62.0f * f3;
            float f5 = f3 * 40.0f;
            path.moveTo(f4, f5);
            float f6 = f3 * 82.0f;
            float f7 = f3 * 60.0f;
            path.lineTo(f6, f7);
            path.moveTo(f4, f7);
            path.lineTo(f6, f5);
            canvas2.drawPath(path, paint2);
        }
        l3a.n(button, "dismiss_button");
        l3a.n(textView, "title_text");
        l3a.n(starsRatingView, "stars_view");
        l3a.n(button2, "cta_button");
        l3a.n(textView2, "replay_text");
        l3a.n(frameLayout, "shadow");
        l3a.n(h5Var, "pause_button");
        l3a.n(h5Var2, "play_button");
        l3a.n(h5Var3, "replay_button");
        l3a.n(textView3, "domain_text");
        l3a.n(mediaAdView, "media_view");
        l3a.n(gkVar, "video_progress_wheel");
        l3a.n(f6Var, "sound_button");
        this.v = l3aVar.b(28.0f);
        int iB3 = l3aVar.b(16.0f);
        this.u = iB3;
        StarsRatingView starsRatingView2 = this.c;
        setBackgroundColor(-16777216);
        View view = this.m;
        view.setId(G);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13, -1);
        MediaAdView mediaAdView2 = this.j;
        mediaAdView2.setId(J);
        mediaAdView2.setLayoutParams(layoutParams);
        mediaAdView2.setId(F);
        mediaAdView2.setOnClickListener(this.s);
        mediaAdView2.setBackgroundColor(-16777216);
        View view2 = this.i;
        view2.setBackgroundColor(-1728053248);
        view2.setVisibility(8);
        Button button3 = this.e;
        button3.setId(x);
        button3.setTextSize(2, 16.0f);
        button3.setTransformationMethod(null);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        button3.setEllipsize(truncateAt);
        button3.setMaxLines(2);
        button3.setPadding(iB3, iB3, iB3, iB3);
        button3.setTextColor(-1);
        Button button4 = this.e;
        l3a l3aVar2 = this.f;
        l3a.k(button4, -2013265920, -1, -1, l3aVar2.b(1.0f), l3aVar2.b(4.0f));
        TextView textView4 = this.b;
        textView4.setId(D);
        textView4.setMaxLines(2);
        textView4.setEllipsize(truncateAt);
        textView4.setTextSize(2, 18.0f);
        textView4.setTextColor(-1);
        l3a.k(this.d, -2013265920, -1, -1, l3aVar2.b(1.0f), l3aVar2.b(4.0f));
        Button button5 = this.d;
        button5.setId(y);
        button5.setTextColor(-1);
        button5.setTransformationMethod(null);
        button5.setGravity(1);
        button5.setTextSize(2, 16.0f);
        button5.setLines(1);
        button5.setEllipsize(truncateAt);
        button5.setMinimumWidth(l3aVar2.b(f));
        button5.setPadding(iB3, iB3, iB3, iB3);
        textView4.setShadowLayer(l3aVar2.b(1.0f), l3aVar2.b(1.0f), l3aVar2.b(1.0f), -16777216);
        TextView textView5 = this.k;
        textView5.setId(E);
        textView5.setTextColor(-3355444);
        textView5.setMaxEms(10);
        textView5.setShadowLayer(l3aVar2.b(1.0f), l3aVar2.b(1.0f), l3aVar2.b(1.0f), -16777216);
        LinearLayout linearLayout = this.g;
        linearLayout.setId(z);
        View.OnClickListener onClickListener = this.t;
        linearLayout.setOnClickListener(onClickListener);
        linearLayout.setGravity(17);
        linearLayout.setVisibility(8);
        linearLayout.setPadding(l3aVar2.b(8.0f), 0, l3aVar2.b(8.0f), 0);
        TextView textView6 = this.h;
        textView6.setSingleLine();
        textView6.setEllipsize(truncateAt);
        textView6.setTypeface(textView6.getTypeface(), 1);
        textView6.setTextColor(-1);
        textView6.setTextSize(2, 16.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = l3aVar2.b(4.0f);
        this.q.setPadding(l3aVar2.b(16.0f), l3aVar2.b(16.0f), l3aVar2.b(16.0f), l3aVar2.b(16.0f));
        h5 h5Var4 = this.o;
        h5Var4.setId(B);
        h5Var4.setOnClickListener(onClickListener);
        h5Var4.setVisibility(8);
        h5Var4.setPadding(l3aVar2.b(16.0f), l3aVar2.b(16.0f), l3aVar2.b(16.0f), l3aVar2.b(16.0f));
        h5 h5Var5 = this.p;
        h5Var5.setId(A);
        h5Var5.setOnClickListener(onClickListener);
        h5Var5.setVisibility(8);
        h5Var5.setPadding(l3aVar2.b(16.0f), l3aVar2.b(16.0f), l3aVar2.b(16.0f), l3aVar2.b(16.0f));
        view2.setId(H);
        byte[] bArrDecode = Base64.decode("iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCy8fw79+rQAAAhVJREFUeNrt2y9IXlEYx3H3ooIiiCAIC4JgMRgsCyaLwWaxLK0srZhWVtYWVtYWlpYMNsvK0sKKRTANBivDIIggIiLiZ+URDncHFgzbznN+8d77nvPwvec99zz/xsa6uv4oPMWjzADgK55kBnCvj3icGQBc4hWmsgK41w/sZAPwswLiC9ayAJjGa1wNrt/hAxaaBlBcW8ReZTVc4CUmmwZQ3FvHYQXEd2w3DyDuj/AMJxUQn7HaNIDiuRm8wfUAwi3eY75pAMXzS9ivrIZz7GKiaQDF7zZwVAHxDVvNAyj2h+c4rYD4hJWmARRjzOItbir7wzvMNQ2gGGsZB5XVcIYXGG8aQDHmJo4rII6x2TyAGHc83vpZBcQBlpsGUIw/F/vA7QDCTewbs00DKOZZiS/DUKfxJRk1DaCYbyvOCkMdYaN5ADHnRJwazysg9rHUNIBi7vnwI4b7w3X4HTNNAyhsWA3PcqiT8ERHTQMobNmOWMNQh1hvHkDYMxlRp4sKiD0sNg2gsGsh4pB3AwhXEbecbhpAYd9aRKZVItgPT+v96wAKO3ciVzHUw9J6/wuAsHUqslaXFRC/pfVGY139L9A3wf4Z7AehfhTuzlB3h3tApIfE/jqAtEHRtGHx1ImRtKmxtMnRtOnx1AUSaUtk0hZJpS2TS10ombZUNm2xdPpy+d4w0VtmetNU2ra51I2TuVtnuxrWL/YiKQ6CN9uRAAAAAElFTkSuQmCC", 0);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = TypedValues.CycleType.TYPE_EASING;
        int i = l3a.a.b;
        options.inTargetDensity = i;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
        if (bitmapDecodeByteArray != null) {
            h5Var5.setImageBitmap(bitmapDecodeByteArray);
        }
        byte[] bArrDecode2 = Base64.decode("iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCjITNKc0rQAAAJFJREFUeNrt2tENgCAMQEEwLuD+QzpC3cBURWLsvV+JNRfhi9YkSSpbP3sYETF0WO89s27m3KX6H1AeYL2wdrs5Y3/4ja/OTZ8B2f074h0z5zoDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/lr6rvDoK+xfmWsLNEmSVLUD47EiX/OuE8UAAAAASUVORK5CYII=", 0);
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inDensity = TypedValues.CycleType.TYPE_EASING;
        options2.inTargetDensity = i;
        Bitmap bitmapDecodeByteArray2 = BitmapFactory.decodeByteArray(bArrDecode2, 0, bArrDecode2.length, options2);
        if (bitmapDecodeByteArray2 != null) {
            h5Var4.setImageBitmap(bitmapDecodeByteArray2);
        }
        l3a.k(this.o, -2013265920, -1, -1, l3aVar2.b(1.0f), l3aVar2.b(4.0f));
        l3a.k(this.p, -2013265920, -1, -1, l3aVar2.b(1.0f), l3aVar2.b(4.0f));
        l3a.k(this.q, -2013265920, -1, -1, l3aVar2.b(1.0f), l3aVar2.b(4.0f));
        starsRatingView2.setId(I);
        starsRatingView2.setStarSize(l3aVar2.b(12.0f));
        this.l.setId(C);
        this.l.setVisibility(8);
        mediaAdView2.addView(this.n, new ViewGroup.LayoutParams(-1, -1));
        addView(mediaAdView2);
        addView(view2);
        addView(view);
        addView(button3);
        addView(this.l);
        addView(linearLayout);
        addView(h5Var4);
        addView(h5Var5);
        addView(starsRatingView2);
        addView(textView5);
        addView(button5);
        addView(textView4);
        linearLayout.addView(this.q);
        linearLayout.addView(textView6, layoutParams2);
        button5.setOnClickListener(onClickListener);
        button3.setOnClickListener(onClickListener);
        view.setOnClickListener(onClickListener);
    }

    public final void a() {
        if (this.w != 0) {
            this.w = 0;
            MediaAdView mediaAdView = this.j;
            mediaAdView.getImageView().setVisibility(8);
            mediaAdView.getProgressBarView().setVisibility(8);
            this.g.setVisibility(8);
            this.p.setVisibility(8);
            this.o.setVisibility(8);
            this.i.setVisibility(8);
        }
    }

    public f0 getAdVideoView() {
        return this.n;
    }

    public MediaAdView getMediaAdView() {
        return this.j;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        MediaAdView mediaAdView = this.j;
        int measuredWidth = mediaAdView.getMeasuredWidth();
        int measuredHeight = mediaAdView.getMeasuredHeight();
        int i7 = (i5 - measuredWidth) >> 1;
        int i8 = (i6 - measuredHeight) >> 1;
        mediaAdView.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
        this.i.layout(mediaAdView.getLeft(), mediaAdView.getTop(), mediaAdView.getRight(), mediaAdView.getBottom());
        h5 h5Var = this.p;
        int i9 = i3 >> 1;
        int measuredWidth2 = h5Var.getMeasuredWidth() >> 1;
        int i10 = i4 >> 1;
        int measuredHeight2 = h5Var.getMeasuredHeight() >> 1;
        h5Var.layout(i9 - measuredWidth2, i10 - measuredHeight2, measuredWidth2 + i9, measuredHeight2 + i10);
        h5 h5Var2 = this.o;
        int measuredWidth3 = h5Var2.getMeasuredWidth() >> 1;
        int measuredHeight3 = h5Var2.getMeasuredHeight() >> 1;
        h5Var2.layout(i9 - measuredWidth3, i10 - measuredHeight3, measuredWidth3 + i9, measuredHeight3 + i10);
        LinearLayout linearLayout = this.g;
        int measuredWidth4 = linearLayout.getMeasuredWidth() >> 1;
        int measuredHeight4 = linearLayout.getMeasuredHeight() >> 1;
        linearLayout.layout(i9 - measuredWidth4, i10 - measuredHeight4, i9 + measuredWidth4, i10 + measuredHeight4);
        Button button = this.e;
        int measuredWidth5 = button.getMeasuredWidth();
        int i11 = this.u;
        button.layout(i11, i11, measuredWidth5 + i11, button.getMeasuredHeight() + i11);
        gk gkVar = this.l;
        TextView textView = this.k;
        StarsRatingView starsRatingView = this.c;
        TextView textView2 = this.b;
        f6 f6Var = this.m;
        Button button2 = this.d;
        if (i5 > i6) {
            int iMax = Math.max(button2.getMeasuredHeight(), Math.max(textView2.getMeasuredHeight(), starsRatingView.getMeasuredHeight()));
            button2.layout((i5 - i11) - button2.getMeasuredWidth(), ((i6 - i11) - button2.getMeasuredHeight()) - ((iMax - button2.getMeasuredHeight()) >> 1), i5 - i11, (i6 - i11) - ((iMax - button2.getMeasuredHeight()) >> 1));
            f6Var.layout(f6Var.getPadding() + (button2.getRight() - f6Var.getMeasuredWidth()), f6Var.getPadding() + (((mediaAdView.getBottom() - (i11 << 1)) - f6Var.getMeasuredHeight()) - iMax), f6Var.getPadding() + button2.getRight(), f6Var.getPadding() + ((mediaAdView.getBottom() - (i11 << 1)) - iMax));
            starsRatingView.layout((button2.getLeft() - i11) - starsRatingView.getMeasuredWidth(), ((i6 - i11) - starsRatingView.getMeasuredHeight()) - ((iMax - starsRatingView.getMeasuredHeight()) >> 1), button2.getLeft() - i11, (i6 - i11) - ((iMax - starsRatingView.getMeasuredHeight()) >> 1));
            textView.layout((button2.getLeft() - i11) - textView.getMeasuredWidth(), ((i6 - i11) - textView.getMeasuredHeight()) - ((iMax - textView.getMeasuredHeight()) >> 1), button2.getLeft() - i11, (i6 - i11) - ((iMax - textView.getMeasuredHeight()) >> 1));
            int iMin = Math.min(starsRatingView.getLeft(), textView.getLeft());
            textView2.layout((iMin - i11) - textView2.getMeasuredWidth(), ((i6 - i11) - textView2.getMeasuredHeight()) - ((iMax - textView2.getMeasuredHeight()) >> 1), iMin - i11, (i6 - i11) - ((iMax - textView2.getMeasuredHeight()) >> 1));
            gkVar.layout(i11, ((i6 - i11) - gkVar.getMeasuredHeight()) - ((iMax - gkVar.getMeasuredHeight()) >> 1), gkVar.getMeasuredWidth() + i11, (i6 - i11) - ((iMax - gkVar.getMeasuredHeight()) >> 1));
            return;
        }
        f6Var.layout(f6Var.getPadding() + ((mediaAdView.getRight() - i11) - f6Var.getMeasuredWidth()), f6Var.getPadding() + ((mediaAdView.getBottom() - i11) - f6Var.getMeasuredHeight()), f6Var.getPadding() + (mediaAdView.getRight() - i11), f6Var.getPadding() + (mediaAdView.getBottom() - i11));
        int i12 = i5 >> 1;
        textView2.layout(i12 - (textView2.getMeasuredWidth() >> 1), mediaAdView.getBottom() + i11, (textView2.getMeasuredWidth() >> 1) + i12, textView2.getMeasuredHeight() + mediaAdView.getBottom() + i11);
        starsRatingView.layout(i12 - (starsRatingView.getMeasuredWidth() >> 1), textView2.getBottom() + i11, (starsRatingView.getMeasuredWidth() >> 1) + i12, starsRatingView.getMeasuredHeight() + textView2.getBottom() + i11);
        textView.layout(i12 - (textView.getMeasuredWidth() >> 1), textView2.getBottom() + i11, (textView.getMeasuredWidth() >> 1) + i12, textView.getMeasuredHeight() + textView2.getBottom() + i11);
        button2.layout(i12 - (button2.getMeasuredWidth() >> 1), starsRatingView.getBottom() + i11, i12 + (button2.getMeasuredWidth() >> 1), button2.getMeasuredHeight() + starsRatingView.getBottom() + i11);
        gkVar.layout(i11, (mediaAdView.getBottom() - i11) - gkVar.getMeasuredHeight(), gkVar.getMeasuredWidth() + i11, mediaAdView.getBottom() - i11);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3 = this.v;
        this.m.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        gk gkVar = this.l;
        gkVar.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
        int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE);
        MediaAdView mediaAdView = this.j;
        mediaAdView.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
        int i4 = this.u;
        int i5 = i4 << 1;
        int i6 = size - i5;
        int i7 = size2 - i5;
        this.e.measure(View.MeasureSpec.makeMeasureSpec(i6 / 2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
        this.o.measure(View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
        this.p.measure(View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
        this.g.measure(View.MeasureSpec.makeMeasureSpec(i6 - (i4 * 4), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
        int iMakeMeasureSpec5 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
        int iMakeMeasureSpec6 = View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
        StarsRatingView starsRatingView = this.c;
        starsRatingView.measure(iMakeMeasureSpec5, iMakeMeasureSpec6);
        this.i.measure(View.MeasureSpec.makeMeasureSpec(mediaAdView.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(mediaAdView.getMeasuredHeight(), 1073741824));
        int iMakeMeasureSpec7 = View.MeasureSpec.makeMeasureSpec(i6 - (i4 * 4), Integer.MIN_VALUE);
        int iMakeMeasureSpec8 = View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
        Button button = this.d;
        button.measure(iMakeMeasureSpec7, iMakeMeasureSpec8);
        int iMakeMeasureSpec9 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
        int iMakeMeasureSpec10 = View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
        TextView textView = this.b;
        textView.measure(iMakeMeasureSpec9, iMakeMeasureSpec10);
        int iMakeMeasureSpec11 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
        int iMakeMeasureSpec12 = View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
        TextView textView2 = this.k;
        textView2.measure(iMakeMeasureSpec11, iMakeMeasureSpec12);
        if (size > size2) {
            int measuredWidth = button.getMeasuredWidth();
            int measuredWidth2 = textView.getMeasuredWidth();
            if ((i4 * 3) + gkVar.getMeasuredWidth() + measuredWidth2 + Math.max(starsRatingView.getMeasuredWidth(), textView2.getMeasuredWidth()) + measuredWidth > i6) {
                int measuredWidth3 = (i6 - gkVar.getMeasuredWidth()) - (i4 * 3);
                int i8 = measuredWidth3 / 3;
                button.measure(View.MeasureSpec.makeMeasureSpec(i8, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
                starsRatingView.measure(View.MeasureSpec.makeMeasureSpec(i8, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
                textView2.measure(View.MeasureSpec.makeMeasureSpec(i8, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
                textView.measure(View.MeasureSpec.makeMeasureSpec(((measuredWidth3 - button.getMeasuredWidth()) - textView2.getMeasuredWidth()) - starsRatingView.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
            }
        }
        setMeasuredDimension(size, size2);
    }

    public void setVideoDialogViewListener(d dVar) {
    }
}
