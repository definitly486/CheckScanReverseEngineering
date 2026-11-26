package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.material.timepicker.TimeModel;
import com.my.target.common.views.StarsRatingView;
import defpackage.bd8;
import defpackage.bj;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.gia;
import defpackage.kha;
import defpackage.l3a;
import defpackage.q7;
import defpackage.t2a;
import defpackage.up9;
import defpackage.wfa;
import defpackage.xda;
import defpackage.y14;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes4.dex */
public class eg extends ViewGroup implements com.my.target.c {
    public static final /* synthetic */ int O = 0;
    public final int A;
    public l.a B;
    public r0.a C;
    public int D;
    public float E;
    public float F;
    public boolean G;
    public boolean H;
    public String I;
    public String J;
    public boolean K;
    public boolean L;
    public e6a M;
    public boolean N;
    public final LinearLayout b;
    public final zf c;
    public final g5 d;
    public final g5 e;
    public final m f;
    public final b g;
    public final c h;
    public final TextView i;
    public final StarsRatingView j;
    public final Button k;
    public final TextView l;
    public final l3a m;
    public final TextView n;
    public final fk o;
    public final f6 p;
    public final g5 q;
    public final d r;
    public final a s;
    public final c1 t;
    public final TextView u;
    public final FrameLayout v;
    public final int w;
    public final int x;
    public final Bitmap y;
    public final Bitmap z;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            l.a aVar;
            r0.a aVar2;
            eg egVar = eg.this;
            LinearLayout linearLayout = egVar.b;
            zf zfVar = egVar.c;
            if (view == linearLayout) {
                r0.a aVar3 = egVar.C;
                if (aVar3 != null) {
                    aVar3.q();
                }
                egVar.e();
                return;
            }
            if (view == egVar.d) {
                if (!zfVar.h() || (aVar2 = egVar.C) == null) {
                    return;
                }
                aVar2.l();
                return;
            }
            if (view != egVar.e) {
                if (view != egVar.f || (aVar = egVar.B) == null) {
                    return;
                }
                ((w2.b) aVar).a();
                return;
            }
            if (egVar.C != null) {
                boolean zG = zfVar.g();
                r0.a aVar4 = egVar.C;
                if (zG) {
                    aVar4.n();
                } else {
                    aVar4.q();
                }
            }
            egVar.e();
        }
    }

    public final class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            eg egVar = eg.this;
            int i = egVar.D;
            if (i == 2 || i == 0) {
                egVar.e();
            }
        }
    }

    public final class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i;
            l.a aVar;
            eg egVar = eg.this;
            boolean z = egVar.N;
            Button button = egVar.k;
            int i2 = 1;
            if (!z) {
                i = view != button ? 1 : 2;
                if (!view.isEnabled() || (aVar = egVar.B) == null) {
                    return;
                }
                ((w2.b) aVar).b(i, new gia());
                return;
            }
            i = view != button ? 1 : 2;
            if (view.isEnabled()) {
                if (view == button) {
                    i2 = 64;
                } else if (view != egVar.i) {
                    if (view == egVar.j) {
                        i2 = 16;
                    } else if (view == egVar.n) {
                        i2 = 512;
                    } else {
                        i2 = view == egVar.c.getClickableLayout() ? 8192 : 2048;
                    }
                }
                up9 up9Var = new up9(i2, egVar.M);
                l.a aVar2 = egVar.B;
                if (aVar2 != null) {
                    ((w2.b) aVar2).b(i, up9Var);
                }
            }
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            eg egVar = eg.this;
            b bVar = egVar.g;
            if (egVar.L) {
                egVar.removeCallbacks(bVar);
                int i = egVar.D;
                if (i == 2) {
                    egVar.e();
                    egVar.postDelayed(bVar, 4000L);
                } else if (i == 0 || i == 3) {
                    egVar.D = 2;
                    egVar.b.setVisibility(8);
                    egVar.e.setVisibility(8);
                    egVar.d.setVisibility(0);
                    egVar.v.setVisibility(8);
                    egVar.postDelayed(bVar, 4000L);
                }
            }
        }
    }

    public eg(Context context) {
        super(context);
        this.L = true;
        this.M = new d6a();
        this.N = false;
        TextView textView = new TextView(context);
        this.l = textView;
        TextView textView2 = new TextView(context);
        this.i = textView2;
        StarsRatingView starsRatingView = new StarsRatingView(context);
        this.j = starsRatingView;
        Button button = new Button(context);
        this.k = button;
        TextView textView3 = new TextView(context);
        this.u = textView3;
        FrameLayout frameLayout = new FrameLayout(context);
        this.v = frameLayout;
        g5 g5Var = new g5(context);
        this.d = g5Var;
        g5 g5Var2 = new g5(context);
        this.e = g5Var2;
        g5 g5Var3 = new g5(context);
        this.q = g5Var3;
        TextView textView4 = new TextView(context);
        this.n = textView4;
        zf zfVar = new zf(context, new l3a(context), false);
        this.c = zfVar;
        fk fkVar = new fk(context);
        this.o = fkVar;
        f6 f6Var = new f6(context);
        this.p = f6Var;
        LinearLayout linearLayout = new LinearLayout(context);
        this.b = linearLayout;
        l3a l3aVar = new l3a(context);
        this.m = l3aVar;
        this.g = new b();
        this.r = new d();
        a aVar = new a();
        this.s = aVar;
        m mVar = new m(context);
        this.f = mVar;
        l3a.n(textView, "dismiss_button");
        l3a.n(textView2, "title_text");
        l3a.n(starsRatingView, "stars_view");
        l3a.n(button, "cta_button");
        l3a.n(textView3, "replay_text");
        l3a.n(frameLayout, "shadow");
        l3a.n(g5Var, "pause_button");
        l3a.n(g5Var2, "play_button");
        l3a.n(g5Var3, "replay_button");
        l3a.n(textView4, "domain_text");
        l3a.n(zfVar, "media_view");
        l3a.n(fkVar, "video_progress_wheel");
        l3a.n(f6Var, "sound_button");
        int iB = l3aVar.b(28.0f);
        this.A = iB;
        int iB2 = l3aVar.b(16.0f);
        this.w = iB2;
        this.x = l3aVar.b(4.0f);
        this.y = wfa.a(320, "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAdVBMVEUAAAAAAAAgICDf398QEBDv7+/Pz8+fn58gICAQEBDe3t5AQEBwcHDv7+9/f3/f398wMDCAgIBgYGCQkJDAwMC/v7/Pz8+fn59QUFBAQECvr69QUFCPj4+/v79wcHBvb29gYGBfX1++vr6urq6Ojo5hYWH///+8blWlAAAAJnRSTlOAAJDviPfnzyAQ3qC478DfmICvx9/fz59QQK+oj79wb2Bfvq6OsPCmZBAAAAJhSURBVEjHndbXYuIwEAXQiSQXueAGtmkhJNn7/5+4I8JmbJAWw33iQYex7FGhN0/s9jT0FTjVcXfavvlC92o8lpil3J0fQ9s4FXdtrYij8qKLXeUhDUFhm8LQLKp1tknDcKyY5eRJnQDZOQDtwcOkrAa+rQ+mPaKC/pMiQpbew7SCVgEiRUWSuNjQg5hYJP26hBYkYTmFluvRosTo7QQeoM0yaDS+BX4gUrQwKsJ4hW6CRfBF6ruvgsxeYROcYB4BdJs1mh+YAoEHXQEemKO0FzgEvoRJAKbkL8mwQh3okygnhv6SxK80DkxPKxI4Lzky3KH1Ty8x9AM14mQ/f7GfDEso//SIfiEwWwEGpaUtYhke4Ro3vX+QU//hCdfTxtvSOzrpYIkigS6mm3ZXh3faSddEN8PlUTet+9vNL2wx0BH5ZFAAuhmbSEbW6KmCegTJFGC0kkZRyGRMEHIYbXi0ngxdCA0i9/sViNdggQ3ViCdDl72cFdBSO385PeqFn0NjL+vjkwa0DxsgcidDBz3p8t3ilktuWi7U5Ho/hWoV3TW5LWGWLKuN1COFktfjEcXDhayT2fHXYsdwxJo82evw1hHjzNCWyAObld57YY3ssss1WD+3PSYYHJSSCzdkBaQOSknfRD1QX48ALpk9eeikF8gZnzvmzi8erIfpUd4vP8ozO7s8ZK9dHpx8+roi8skLksjHV7I+DV0C42DRfA0cbODa+ZEBSR1i2Ri+6KYNuGp7U9YUzMpGygmc0CFztivyi1Z128UQ5oPywF+3l/njKEygL9vT12cGTtUPp631DfkLyeFPR/ZOiKIAAAAASUVORK5CYII=");
        this.z = wfa.a(320, "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAclBMVEUAAAAAAAAgICDf39+goKAgICAQEBDe3t7Pz88QEBDv7+9wcHBAQEDf39+AgIDv7+/AwMCQkJDPz8+/v7+vr69gYGCfn5+Pj49fX19QUFBAQEAwMDBQUFDu7u5/f39/f39wcHBvb2+/v78wMDCvr6////9R0hTPAAAAJXRSTlOAAJDvzyAQ3ueI97ig34Dv38fPv6+vn49fUECYqO7Av3Bv35fYiozA+AAAAjJJREFUSMe91um2mjAUBeBDGMOkjDJoe63d7/+KTbyxpzZJgXat7j8i8nkICUkocCRZ7mNbQaXq+vsSuEK2mrsT3nLqp22Y1FplzbAKUhFl0WS68hj7ILNvhaS3iEHbOvbDuVKsJEfWCEgnD0wuzOyIELgkLhi3yAv6Q4ocaWzDuEIoPISLsiR2maSNyIwl/XQR7Uj0lAwTVY92JUOb/AIvCOU+KENcGE7IBe2MyDEbqBtYeB9kaPUK0sTA2tvAMgesk2fUnzAGhNt9ARywxC15wtHTEzICvhpoldSwwuoZJ3lJBlolFZyQeZoXCjLQKjkr2GNwNy+S5IEFOgVPEO7mEfmgVPdKCzK+PIeJbp4fUoaFPtDwCOYIYihfXx5k0uCDeh41+dvlfBSGwvzx1ZwdMFKHki9yH0VQ0nx8ZkVLFcQGNIQdkUCqf9mEGrHTAXZBLdn9Fxgh/P4mgb9/OC3WLdhY3VGioxHD8QFQoN8z5IR89TvxkPMN8vC6NciTE+TR10rgFlDQoTj6Ig/oFZxxJkeuoX/qyDApqO61dEmh5NUJV6TPWa7G+dj0GGHUkEvunJAFEGvIJZ0NtWFolgBVMj246MQGBvOxZW7694U1SNr9S3mavG0e0uObh5c8vF1heXCDxHJ7S9bGvk1g5i1anq1NIGdKgejhY+ns3+jGNYBs+K2sLBQ71UnggEzHVNumKJ9aPIYmAzMH5Ez9DRytupkZQ1eWe9+l2lTteF+UsvMDBKFIvMRHIr8AAAAASUVORK5CYII=");
        this.h = new c();
        this.t = new c1(new q7(this));
        setBackgroundColor(-16777216);
        zfVar.setBackgroundColor(-16777216);
        zfVar.f();
        frameLayout.setBackgroundColor(-1728053248);
        frameLayout.setVisibility(8);
        textView.setTextSize(2, 16.0f);
        textView.setTransformationMethod(null);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setVisibility(8);
        textView.setTextAlignment(4);
        textView.setTextColor(-1);
        l3a.k(textView, -2013265920, -1, -1, l3aVar.b(1.0f), l3aVar.b(4.0f));
        textView2.setMaxLines(2);
        textView2.setEllipsize(truncateAt);
        textView2.setTextSize(2, 18.0f);
        textView2.setTextColor(-1);
        l3a.k(button, -2013265920, -1, -1, l3aVar.b(1.0f), l3aVar.b(4.0f));
        button.setTextColor(-1);
        button.setTransformationMethod(null);
        button.setGravity(1);
        button.setTextSize(2, 16.0f);
        button.setMinimumWidth(l3aVar.b(100.0f));
        button.setPadding(iB2, iB2, iB2, iB2);
        textView2.setShadowLayer(l3aVar.b(1.0f), l3aVar.b(1.0f), l3aVar.b(1.0f), -16777216);
        textView4.setTextColor(-3355444);
        textView4.setMaxEms(10);
        textView4.setShadowLayer(l3aVar.b(1.0f), l3aVar.b(1.0f), l3aVar.b(1.0f), -16777216);
        linearLayout.setOnClickListener(aVar);
        linearLayout.setGravity(17);
        linearLayout.setVisibility(8);
        linearLayout.setPadding(l3aVar.b(8.0f), 0, l3aVar.b(8.0f), 0);
        textView3.setSingleLine();
        textView3.setEllipsize(truncateAt);
        textView3.setTypeface(textView3.getTypeface(), 1);
        textView3.setTextColor(-1);
        textView3.setTextSize(2, 16.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = l3aVar.b(4.0f);
        g5Var3.setPadding(l3aVar.b(16.0f), l3aVar.b(16.0f), l3aVar.b(16.0f), l3aVar.b(16.0f));
        g5Var.setOnClickListener(aVar);
        g5Var.setVisibility(8);
        g5Var.setPadding(l3aVar.b(16.0f), l3aVar.b(16.0f), l3aVar.b(16.0f), l3aVar.b(16.0f));
        g5Var2.setOnClickListener(aVar);
        g5Var2.setVisibility(8);
        g5Var2.setPadding(l3aVar.b(16.0f), l3aVar.b(16.0f), l3aVar.b(16.0f), l3aVar.b(16.0f));
        getContext();
        Bitmap bitmapA = wfa.a(TypedValues.CycleType.TYPE_EASING, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCy8fw79+rQAAAhVJREFUeNrt2y9IXlEYx3H3ooIiiCAIC4JgMRgsCyaLwWaxLK0srZhWVtYWVtYWlpYMNsvK0sKKRTANBivDIIggIiLiZ+URDncHFgzbznN+8d77nvPwvec99zz/xsa6uv4oPMWjzADgK55kBnCvj3icGQBc4hWmsgK41w/sZAPwswLiC9ayAJjGa1wNrt/hAxaaBlBcW8ReZTVc4CUmmwZQ3FvHYQXEd2w3DyDuj/AMJxUQn7HaNIDiuRm8wfUAwi3eY75pAMXzS9ivrIZz7GKiaQDF7zZwVAHxDVvNAyj2h+c4rYD4hJWmARRjzOItbir7wzvMNQ2gGGsZB5XVcIYXGG8aQDHmJo4rII6x2TyAGHc83vpZBcQBlpsGUIw/F/vA7QDCTewbs00DKOZZiS/DUKfxJRk1DaCYbyvOCkMdYaN5ADHnRJwazysg9rHUNIBi7vnwI4b7w3X4HTNNAyhsWA3PcqiT8ERHTQMobNmOWMNQh1hvHkDYMxlRp4sKiD0sNg2gsGsh4pB3AwhXEbecbhpAYd9aRKZVItgPT+v96wAKO3ciVzHUw9J6/wuAsHUqslaXFRC/pfVGY139L9A3wf4Z7AehfhTuzlB3h3tApIfE/jqAtEHRtGHx1ImRtKmxtMnRtOnx1AUSaUtk0hZJpS2TS10ombZUNm2xdPpy+d4w0VtmetNU2ra51I2TuVtnuxrWL/YiKQ6CN9uRAAAAAElFTkSuQmCC");
        if (bitmapA != null) {
            g5Var2.setImageBitmap(bitmapA);
        }
        getContext();
        Bitmap bitmapA2 = wfa.a(TypedValues.CycleType.TYPE_EASING, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCjITNKc0rQAAAJFJREFUeNrt2tENgCAMQEEwLuD+QzpC3cBURWLsvV+JNRfhi9YkSSpbP3sYETF0WO89s27m3KX6H1AeYL2wdrs5Y3/4ja/OTZ8B2f074h0z5zoDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/lr6rvDoK+xfmWsLNEmSVLUD47EiX/OuE8UAAAAASUVORK5CYII=");
        if (bitmapA2 != null) {
            g5Var.setImageBitmap(bitmapA2);
        }
        l3a.k(g5Var, -2013265920, -1, -1, l3aVar.b(1.0f), l3aVar.b(4.0f));
        l3a.k(g5Var2, -2013265920, -1, -1, l3aVar.b(1.0f), l3aVar.b(4.0f));
        l3a.k(g5Var3, -2013265920, -1, -1, l3aVar.b(1.0f), l3aVar.b(4.0f));
        starsRatingView.setStarSize(l3aVar.b(12.0f));
        fkVar.setVisibility(8);
        mVar.setFixedHeight(iB);
        addView(zfVar);
        addView(frameLayout);
        addView(f6Var);
        addView(textView);
        addView(fkVar);
        addView(linearLayout);
        addView(g5Var);
        addView(g5Var2);
        addView(starsRatingView);
        addView(textView4);
        addView(button);
        addView(textView2);
        addView(mVar);
        linearLayout.addView(g5Var3);
        linearLayout.addView(textView3, layoutParams);
    }

    private void setClickAreaActual(t2a t2aVar) {
        StringBuilder sb = new StringBuilder("PromoStyle1View: Apply click area ");
        int i = t2aVar.q;
        boolean z = t2aVar.m;
        sb.append(i);
        sb.append(" to view");
        y14.r(null, sb.toString());
        c1 c1Var = this.t;
        setOnTouchListener(c1Var);
        Button button = this.k;
        button.setOnTouchListener(c1Var);
        TextView textView = this.i;
        textView.setOnTouchListener(c1Var);
        StarsRatingView starsRatingView = this.j;
        starsRatingView.setOnTouchListener(c1Var);
        TextView textView2 = this.n;
        textView2.setOnTouchListener(c1Var);
        zf zfVar = this.c;
        zfVar.getClickableLayout().setOnTouchListener(c1Var);
        boolean z2 = t2aVar.l;
        View.OnClickListener onClickListener = this.h;
        setOnClickListener((z2 || z) ? onClickListener : null);
        button.setOnClickListener((t2aVar.g || z) ? onClickListener : null);
        textView.setOnClickListener((t2aVar.a || z) ? onClickListener : null);
        starsRatingView.setOnClickListener((t2aVar.e || z) ? onClickListener : null);
        textView2.setOnClickListener((t2aVar.j || z) ? onClickListener : null);
        FrameLayout clickableLayout = zfVar.getClickableLayout();
        if (!t2aVar.n && !z) {
            onClickListener = this.r;
        }
        clickableLayout.setOnClickListener(onClickListener);
    }

    private void setClickAreaLegacy(t2a t2aVar) {
        StringBuilder sb = new StringBuilder("PromoStyle1View: Apply click area ");
        int i = t2aVar.q;
        boolean z = t2aVar.m;
        sb.append(i);
        sb.append(" to view");
        y14.r(null, sb.toString());
        boolean z2 = t2aVar.l;
        View.OnClickListener onClickListener = this.h;
        setOnClickListener((z2 || z) ? onClickListener : null);
        this.k.setOnClickListener((t2aVar.g || z) ? onClickListener : null);
        this.i.setOnClickListener((t2aVar.a || z) ? onClickListener : null);
        this.j.setOnClickListener((t2aVar.e || z) ? onClickListener : null);
        this.n.setOnClickListener((t2aVar.j || z) ? onClickListener : null);
        FrameLayout clickableLayout = this.c.getClickableLayout();
        if (!t2aVar.n && !z) {
            onClickListener = this.r;
        }
        clickableLayout.setOnClickListener(onClickListener);
    }

    @Override // com.my.target.c
    public final void a(xda xdaVar) {
        zf zfVar = this.c;
        zfVar.setOnClickListener(null);
        this.p.setVisibility(8);
        zfVar.b();
        zfVar.c(xdaVar);
        c();
        this.D = 4;
        this.b.setVisibility(8);
        this.e.setVisibility(8);
        this.d.setVisibility(8);
        this.v.setVisibility(8);
        this.o.setVisibility(8);
    }

    @Override // com.my.target.c
    public final void b(boolean z) {
        f6 f6Var = this.p;
        if (z) {
            f6Var.a(this.z, false);
            f6Var.setContentDescription("sound_off");
        } else {
            f6Var.a(this.y, false);
            f6Var.setContentDescription("sound_on");
        }
    }

    @Override // com.my.target.l
    public final void c() {
        String str = this.I;
        TextView textView = this.l;
        textView.setText(str);
        textView.setTextSize(2, 16.0f);
        textView.setVisibility(0);
        textView.setTextColor(-1);
        textView.setEnabled(true);
        int i = this.w;
        textView.setPadding(i, i, i, i);
        l3a l3aVar = this.m;
        l3a.k(textView, -2013265920, -1, -1, l3aVar.b(1.0f), l3aVar.b(4.0f));
        this.K = true;
    }

    @Override // com.my.target.c
    public final void d() {
        this.o.setVisibility(8);
        this.D = 4;
        if (this.H) {
            this.b.setVisibility(0);
            this.v.setVisibility(0);
        }
        this.e.setVisibility(8);
        this.d.setVisibility(8);
    }

    @Override // com.my.target.c
    public final void destroy() {
        this.c.b();
    }

    public final void e() {
        this.D = 0;
        this.b.setVisibility(8);
        this.e.setVisibility(8);
        this.d.setVisibility(8);
        this.v.setVisibility(8);
    }

    @Override // com.my.target.l
    public View getCloseButton() {
        return this.l;
    }

    @Override // com.my.target.c
    public zf getPromoMediaView() {
        return this.c;
    }

    @Override // com.my.target.l
    public View getView() {
        return this;
    }

    @Override // com.my.target.c
    public final boolean isPlaying() {
        return this.c.h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        zf zfVar = this.c;
        int measuredWidth = zfVar.getMeasuredWidth();
        int measuredHeight = zfVar.getMeasuredHeight();
        int i7 = (i5 - measuredWidth) >> 1;
        int i8 = (i6 - measuredHeight) >> 1;
        zfVar.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
        this.v.layout(zfVar.getLeft(), zfVar.getTop(), zfVar.getRight(), zfVar.getBottom());
        g5 g5Var = this.e;
        int i9 = i3 >> 1;
        int measuredWidth2 = g5Var.getMeasuredWidth() >> 1;
        int i10 = i4 >> 1;
        int measuredHeight2 = g5Var.getMeasuredHeight() >> 1;
        g5Var.layout(i9 - measuredWidth2, i10 - measuredHeight2, measuredWidth2 + i9, measuredHeight2 + i10);
        g5 g5Var2 = this.d;
        int measuredWidth3 = g5Var2.getMeasuredWidth() >> 1;
        int measuredHeight3 = g5Var2.getMeasuredHeight() >> 1;
        g5Var2.layout(i9 - measuredWidth3, i10 - measuredHeight3, measuredWidth3 + i9, measuredHeight3 + i10);
        LinearLayout linearLayout = this.b;
        int measuredWidth4 = linearLayout.getMeasuredWidth() >> 1;
        int measuredHeight4 = linearLayout.getMeasuredHeight() >> 1;
        linearLayout.layout(i9 - measuredWidth4, i10 - measuredHeight4, i9 + measuredWidth4, i10 + measuredHeight4);
        TextView textView = this.l;
        int measuredWidth5 = textView.getMeasuredWidth();
        int i11 = this.w;
        textView.layout(i11, i11, measuredWidth5 + i11, textView.getMeasuredHeight() + i11);
        m mVar = this.f;
        fk fkVar = this.o;
        TextView textView2 = this.n;
        StarsRatingView starsRatingView = this.j;
        TextView textView3 = this.i;
        f6 f6Var = this.p;
        Button button = this.k;
        if (i5 > i6) {
            int iMax = Math.max(button.getMeasuredHeight(), Math.max(textView3.getMeasuredHeight(), starsRatingView.getMeasuredHeight()));
            button.layout((i5 - i11) - button.getMeasuredWidth(), ((i6 - i11) - button.getMeasuredHeight()) - ((iMax - button.getMeasuredHeight()) >> 1), i5 - i11, (i6 - i11) - ((iMax - button.getMeasuredHeight()) >> 1));
            f6Var.layout(f6Var.getPadding() + (button.getRight() - f6Var.getMeasuredWidth()), f6Var.getPadding() + (((zfVar.getBottom() - (i11 << 1)) - f6Var.getMeasuredHeight()) - iMax), f6Var.getPadding() + button.getRight(), f6Var.getPadding() + ((zfVar.getBottom() - (i11 << 1)) - iMax));
            mVar.layout(button.getRight() - mVar.getMeasuredWidth(), i11, button.getRight(), mVar.getMeasuredHeight() + i11);
            starsRatingView.layout((button.getLeft() - i11) - starsRatingView.getMeasuredWidth(), ((i6 - i11) - starsRatingView.getMeasuredHeight()) - ((iMax - starsRatingView.getMeasuredHeight()) >> 1), button.getLeft() - i11, (i6 - i11) - ((iMax - starsRatingView.getMeasuredHeight()) >> 1));
            textView2.layout((button.getLeft() - i11) - textView2.getMeasuredWidth(), ((i6 - i11) - textView2.getMeasuredHeight()) - ((iMax - textView2.getMeasuredHeight()) >> 1), button.getLeft() - i11, (i6 - i11) - ((iMax - textView2.getMeasuredHeight()) >> 1));
            int iMin = Math.min(starsRatingView.getLeft(), textView2.getLeft());
            textView3.layout((iMin - i11) - textView3.getMeasuredWidth(), ((i6 - i11) - textView3.getMeasuredHeight()) - ((iMax - textView3.getMeasuredHeight()) >> 1), iMin - i11, (i6 - i11) - ((iMax - textView3.getMeasuredHeight()) >> 1));
            fkVar.layout(i11, ((i6 - i11) - fkVar.getMeasuredHeight()) - ((iMax - fkVar.getMeasuredHeight()) >> 1), fkVar.getMeasuredWidth() + i11, (i6 - i11) - ((iMax - fkVar.getMeasuredHeight()) >> 1));
            return;
        }
        f6Var.layout(f6Var.getPadding() + ((zfVar.getRight() - i11) - f6Var.getMeasuredWidth()), f6Var.getPadding() + ((zfVar.getBottom() - i11) - f6Var.getMeasuredHeight()), f6Var.getPadding() + (zfVar.getRight() - i11), f6Var.getPadding() + (zfVar.getBottom() - i11));
        mVar.layout((zfVar.getRight() - i11) - mVar.getMeasuredWidth(), zfVar.getTop() + i11, zfVar.getRight() - i11, mVar.getMeasuredHeight() + zfVar.getTop() + i11);
        int measuredHeight5 = button.getMeasuredHeight() + textView2.getMeasuredHeight() + starsRatingView.getMeasuredHeight() + textView3.getMeasuredHeight();
        int bottom = getBottom() - zfVar.getBottom();
        int i12 = (i11 * 3) + measuredHeight5 > bottom ? (bottom - measuredHeight5) / 3 : i11;
        int i13 = i5 >> 1;
        textView3.layout(i13 - (textView3.getMeasuredWidth() >> 1), zfVar.getBottom() + i12, (textView3.getMeasuredWidth() >> 1) + i13, textView3.getMeasuredHeight() + zfVar.getBottom() + i12);
        starsRatingView.layout(i13 - (starsRatingView.getMeasuredWidth() >> 1), textView3.getBottom() + i12, (starsRatingView.getMeasuredWidth() >> 1) + i13, starsRatingView.getMeasuredHeight() + textView3.getBottom() + i12);
        textView2.layout(i13 - (textView2.getMeasuredWidth() >> 1), textView3.getBottom() + i12, (textView2.getMeasuredWidth() >> 1) + i13, textView2.getMeasuredHeight() + textView3.getBottom() + i12);
        button.layout(i13 - (button.getMeasuredWidth() >> 1), starsRatingView.getBottom() + i12, i13 + (button.getMeasuredWidth() >> 1), button.getMeasuredHeight() + starsRatingView.getBottom() + i12);
        fkVar.layout(i11, (zfVar.getBottom() - i11) - fkVar.getMeasuredHeight(), fkVar.getMeasuredWidth() + i11, zfVar.getBottom() - i11);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3 = this.A;
        this.p.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        fk fkVar = this.o;
        fkVar.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
        int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE);
        zf zfVar = this.c;
        zfVar.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
        int i4 = this.w;
        int i5 = i4 << 1;
        int i6 = size - i5;
        int i7 = size2 - i5;
        this.l.measure(View.MeasureSpec.makeMeasureSpec(i6 / 2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
        this.f.measure(View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE));
        this.d.measure(View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
        this.e.measure(View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
        this.b.measure(View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
        int iMakeMeasureSpec5 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
        int iMakeMeasureSpec6 = View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
        StarsRatingView starsRatingView = this.j;
        starsRatingView.measure(iMakeMeasureSpec5, iMakeMeasureSpec6);
        this.v.measure(View.MeasureSpec.makeMeasureSpec(zfVar.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(zfVar.getMeasuredHeight(), 1073741824));
        int iMakeMeasureSpec7 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
        int iMakeMeasureSpec8 = View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
        Button button = this.k;
        button.measure(iMakeMeasureSpec7, iMakeMeasureSpec8);
        int iMakeMeasureSpec9 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
        int iMakeMeasureSpec10 = View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
        TextView textView = this.i;
        textView.measure(iMakeMeasureSpec9, iMakeMeasureSpec10);
        int iMakeMeasureSpec11 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
        int iMakeMeasureSpec12 = View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
        TextView textView2 = this.n;
        textView2.measure(iMakeMeasureSpec11, iMakeMeasureSpec12);
        if (size > size2) {
            int measuredWidth = button.getMeasuredWidth();
            int measuredWidth2 = textView.getMeasuredWidth();
            if ((i4 * 3) + fkVar.getMeasuredWidth() + measuredWidth2 + Math.max(starsRatingView.getMeasuredWidth(), textView2.getMeasuredWidth()) + measuredWidth > i6) {
                int measuredWidth3 = (i6 - fkVar.getMeasuredWidth()) - (i4 * 3);
                int i8 = measuredWidth3 / 3;
                button.measure(View.MeasureSpec.makeMeasureSpec(i8, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
                starsRatingView.measure(View.MeasureSpec.makeMeasureSpec(i8, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
                textView2.measure(View.MeasureSpec.makeMeasureSpec(i8, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
                textView.measure(View.MeasureSpec.makeMeasureSpec(((measuredWidth3 - button.getMeasuredWidth()) - textView2.getMeasuredWidth()) - starsRatingView.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
            }
        } else {
            if ((i4 * 3) + button.getMeasuredHeight() + textView2.getMeasuredHeight() + starsRatingView.getMeasuredHeight() + textView.getMeasuredHeight() > (size2 - zfVar.getMeasuredHeight()) / 2) {
                int i9 = i4 / 2;
                button.setPadding(i4, i9, i4, i9);
                button.measure(View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE));
            }
        }
        setMeasuredDimension(size, size2);
    }

    @Override // com.my.target.c
    public final void pause() {
        int i = this.D;
        if (i == 0 || i == 2) {
            this.D = 1;
            this.b.setVisibility(8);
            this.e.setVisibility(0);
            this.d.setVisibility(8);
            this.v.setVisibility(0);
            this.c.i();
        }
    }

    @Override // com.my.target.c
    public final void resume() {
        zf zfVar = this.c;
        zfVar.d.setVisibility(8);
        n nVar = zfVar.l;
        if (nVar == null || zfVar.m == null) {
            return;
        }
        nVar.resume();
        zfVar.b.setVisibility(8);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.my.target.l
    public void setBanner(xda xdaVar) {
        this.N = xdaVar.Q.c;
        int i = 1;
        this.c.d(xdaVar, 1);
        kha khaVar = xdaVar.Z;
        if (khaVar == null) {
            return;
        }
        this.o.setMax(xdaVar.z);
        this.H = khaVar.a0;
        this.G = xdaVar.V;
        this.L = khaVar.e0;
        this.k.setText(xdaVar.g());
        this.i.setText(xdaVar.e);
        String str = xdaVar.m;
        str.getClass();
        byte b2 = -1;
        switch (str.hashCode()) {
            case 117588:
                if (str.equals("web")) {
                    b2 = 0;
                }
                break;
            case 109770977:
                if (str.equals("store")) {
                    b2 = 1;
                }
                break;
            case 1223953944:
                if (str.equals("webform")) {
                    b2 = 2;
                }
                break;
        }
        TextView textView = this.n;
        StarsRatingView starsRatingView = this.j;
        switch (b2) {
            case 0:
            case 2:
                starsRatingView.setVisibility(8);
                textView.setVisibility(0);
                textView.setText(xdaVar.l);
                break;
            case 1:
                if (xdaVar.b() > 0.0f) {
                    starsRatingView.setVisibility(0);
                    starsRatingView.setRating(xdaVar.b());
                } else {
                    starsRatingView.setVisibility(8);
                }
                textView.setVisibility(8);
                break;
        }
        String str2 = khaVar.T;
        this.I = str2;
        this.J = khaVar.V;
        TextView textView2 = this.l;
        textView2.setText(str2);
        if (khaVar.c0 && khaVar.Y) {
            float f = khaVar.f0;
            if (f > 0.0f) {
                this.F = f;
                textView2.setEnabled(false);
                textView2.setTextColor(-3355444);
                int i2 = this.x;
                textView2.setPadding(i2, i2, i2, i2);
                l3a l3aVar = this.m;
                l3a.k(textView2, -2013265920, -2013265920, -3355444, l3aVar.b(1.0f), l3aVar.b(4.0f));
                textView2.setTextSize(2, 12.0f);
            } else {
                int i3 = this.w;
                textView2.setPadding(i3, i3, i3, i3);
                textView2.setVisibility(0);
            }
        }
        this.u.setText(khaVar.U);
        getContext();
        Bitmap bitmapA = wfa.a(TypedValues.CycleType.TYPE_EASING, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCjM59gfMOgAAA59JREFUeNrtmkloFEEUhl/N6KgxriiJOHEXF4gENYlgRFA8uyAoCNGggl68CCJ6EQx6cCFqUFzABQQRMYh4EfSi4IJbiFERQVxRgxuRMWri5yE1UBY9yWh6Znq6+z+96a6ZV/8/tbz3qkRChAgRwiMAFgJngWgQyVcDHXTiFKCCRH4Df6MFKAkK+W0W+VfAxCAQV8A+i/wTIB4E8lHgpEX+LjA8COQHAM8t8o3ATKC338kXA59IjXbgEVAPLAb6+k2AHRbhVrrGV+AwMNVPIpx3INncjRi/gTPAWL+IcMIieBGIAXFgGXAU+OggRALY7ItIEdhvkTsNRIz3MWCp3h1sXAGK/RAHnLKIHUzRdgnwwmr7Epjsh3jggkWsNkXbQuC4Q8g8Ld9F6ANctYht7KL9GiNpAnib94ujDo5uaUIdwMo00uafhghNQL98F2EYcA9YlGb75daoOeqHnSHyj+23WyLMC1oRJQpct7LJXkETYSrwyxBhlQQNwAFrFKigCTDK2hXmBnEUnDMEOBZEARYaArwLogAF1jRIq4YQ8YsASqmEiNw2HpUHSgCNB4Y9KYgCPDXs8UEU4LNhF6bzhW7DRmCEiFTqjx+VUtc8LECrYfd3RQA9lxq03SgiZR4WIGbYv9yaAt8Me5DHp8DAFP3ukQDvDTvu8WxrnGG/dUUApdQrEUkYU2a8hwWYnGJH6PEu0GzYczwaCSoRqTIeNbkpwFXDnu/Rf79URJKnyz9E5Kab6i4wYuxvQKEHR8BO8+DE7R+PAu8MB6s9Rj4GvDH6tzYTTvZaVZeIhwSoMfr2HRiUCSd21aXGI+T7WRcu6jLp7Ijh6AMw1AMCmKXxtozeLgOKgC+Gw4ZcFiCB2fpWSRLbsuF0nXUYsSlH5EfqE+IknmblSo0+1m6wRKjOMvnB+jzQHPpl2ezAEOCx0YEOYH2WfMct8rlZkIES4LXVkXqgTwZ9Vjn43JrLFXgC8Mzq0H2g0mU/BTrSa7d8bfHCPlwE3HC41XWyp9fbdIS3Tt8fxprzq7wUivYGdmnithCXgRXpxgw67K4A9ljhdxKPgVK3+q5cFqJcRA6JyAyn1zpFfaBz9RZdtYnpStNonc/PEpEhDt9vE5FaEdmtlPrh2YoEEAEWpbje9j9o1aNrhOQbgOlAncNC2R0SwCVgZaZTb5VFMUpEpEJEpojIGBEZLJ21+zbpLGe3iMgTEXkoIneUUj8lRIgQIUKECJFJ/AEepzU1TSID5QAAAABJRU5ErkJggg==");
        if (bitmapA != null) {
            this.q.setImageBitmap(bitmapA);
        }
        if (khaVar.Y) {
            c(true);
            e();
        } else {
            this.D = 1;
            this.b.setVisibility(8);
            this.e.setVisibility(0);
            this.d.setVisibility(8);
            this.v.setVisibility(0);
        }
        this.E = khaVar.z;
        bd8 bd8Var = new bd8(this, i);
        f6 f6Var = this.p;
        f6Var.setOnClickListener(bd8Var);
        if (khaVar.X) {
            f6Var.a(this.z, false);
            f6Var.setContentDescription("sound_off");
        } else {
            f6Var.a(this.y, false);
            f6Var.setContentDescription("sound_on");
        }
        q qVar = xdaVar.H;
        m mVar = this.f;
        if (qVar == null) {
            mVar.setVisibility(8);
        } else {
            mVar.setImageBitmap((Bitmap) qVar.a.d);
            mVar.setOnClickListener(this.s);
        }
    }

    @Override // com.my.target.l
    public void setClickArea(t2a t2aVar) {
        if (this.N) {
            setClickAreaActual(t2aVar);
        } else {
            setClickAreaLegacy(t2aVar);
        }
    }

    @Override // com.my.target.l
    public void setInterstitialPromoViewListener(l.a aVar) {
        this.B = aVar;
    }

    @Override // com.my.target.c
    public void setMediaListener(r0.a aVar) {
        this.C = aVar;
        this.c.setInterstitialPromoViewListener(aVar);
    }

    @Override // com.my.target.c
    public void setTimeChanged(float f) {
        if (!this.K && this.G) {
            float f2 = this.F;
            if (f2 > 0.0f && f2 >= f) {
                TextView textView = this.l;
                if (textView.getVisibility() != 0) {
                    textView.setVisibility(0);
                }
                if (this.J != null) {
                    int iCeil = (int) Math.ceil(this.F - f);
                    String strValueOf = String.valueOf(iCeil);
                    if (this.F > 9.0f && iCeil <= 9) {
                        strValueOf = bj.c(CommonUrlParts.Values.FALSE_INTEGER, strValueOf);
                    }
                    textView.setText(this.J.replace(TimeModel.NUMBER_FORMAT, strValueOf));
                }
            }
        }
        fk fkVar = this.o;
        if (fkVar.getVisibility() != 0) {
            fkVar.setVisibility(0);
        }
        fkVar.setProgress(f / this.E);
        fkVar.setDigit((int) Math.ceil(this.E - f));
    }

    @Override // com.my.target.c
    public final boolean b() {
        return this.c.g();
    }

    @Override // com.my.target.c
    public final void a() {
        zf zfVar = this.c;
        zfVar.b.setVisibility(8);
        zfVar.h.setVisibility(8);
        this.b.setVisibility(8);
        this.e.setVisibility(8);
        if (this.D != 2) {
            this.d.setVisibility(8);
        }
    }

    @Override // com.my.target.c
    public final void c(boolean z) {
        this.c.a(z);
        e();
    }

    @Override // com.my.target.c
    public final void a(boolean z) {
        this.c.e(true);
    }

    @Override // com.my.target.c
    public final void a(int i) {
        n nVar = this.c.l;
        if (nVar != null) {
            if (i == 0) {
                nVar.f();
            } else if (i != 1) {
                nVar.d();
            } else {
                nVar.e();
            }
        }
    }
}
