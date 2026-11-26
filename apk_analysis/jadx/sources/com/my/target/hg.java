package com.my.target;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tapjoy.TJAdUnitConstants;
import defpackage.ad2;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.ev9;
import defpackage.gia;
import defpackage.gw9;
import defpackage.h14;
import defpackage.kv9;
import defpackage.l3a;
import defpackage.ni0;
import defpackage.on9;
import defpackage.t2a;
import defpackage.up9;
import defpackage.wfa;
import defpackage.xda;
import defpackage.y14;
import defpackage.z3;

/* JADX INFO: loaded from: classes4.dex */
public abstract class hg extends ViewGroup implements gw9, View.OnClickListener {
    public static final /* synthetic */ int S = 0;
    public final c1 A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final View L;
    public int M;
    public int N;
    public final int O;
    public int P;
    public e6a Q;
    public boolean R;
    public final e6 b;
    public final on9 c;
    public final e6 d;
    public final bg e;
    public final dg f;
    public final c3 g;
    public final g5 h;
    public final Button i;
    public final zh j;
    public final zh k;
    public final m l;
    public final ProgressBar m;
    public final View n;
    public final View o;
    public final View p;
    public final Button q;
    public final TextView r;
    public final TextView s;
    public final TextView t;
    public final fk u;
    public final Bitmap v;
    public final Bitmap w;
    public final Bitmap x;
    public final Bitmap y;
    public final Bitmap z;

    public hg(bg bgVar, dg dgVar, c3 c3Var, View view, on9 on9Var, Context context) {
        super(context);
        this.A = new c1(new z3(this, 4));
        this.Q = new d6a();
        this.R = false;
        this.g = c3Var;
        this.L = view;
        this.f = dgVar;
        this.e = bgVar;
        this.c = on9Var;
        int i = on9.j;
        SparseIntArray sparseIntArray = on9Var.a;
        int i2 = sparseIntArray.get(i);
        this.F = i2;
        int i3 = sparseIntArray.get(on9.V);
        this.I = sparseIntArray.get(on9.T);
        this.J = sparseIntArray.get(on9.H);
        this.K = sparseIntArray.get(on9.W);
        this.G = sparseIntArray.get(on9.Y);
        e6 e6Var = new e6(context);
        this.d = e6Var;
        e6Var.setVisibility(8);
        e6Var.setOnClickListener(this);
        e6Var.setPadding(i2);
        g5 g5Var = new g5(context);
        this.h = g5Var;
        g5Var.setVisibility(8);
        g5Var.setOnClickListener(this);
        l3a.k(g5Var, -2013265920, -1, -1, sparseIntArray.get(on9.e), sparseIntArray.get(on9.f));
        Button button = new Button(context);
        this.i = button;
        button.setTextColor(-1);
        button.setLines(sparseIntArray.get(on9.g));
        button.setTextSize(1, sparseIntArray.get(on9.h));
        button.setMaxWidth(sparseIntArray.get(on9.d));
        button.setOnClickListener(this);
        button.setBackgroundColor(0);
        button.setIncludeFontPadding(false);
        int i4 = sparseIntArray.get(on9.i);
        this.B = i4;
        this.C = sparseIntArray.get(on9.m);
        this.D = sparseIntArray.get(on9.n);
        int i5 = sparseIntArray.get(on9.r);
        this.E = i5;
        this.O = sparseIntArray.get(on9.o);
        this.H = sparseIntArray.get(on9.p);
        m mVar = new m(context);
        this.l = mVar;
        mVar.setFixedHeight(i5);
        this.x = wfa.a(TypedValues.CycleType.TYPE_EASING, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCy8fw79+rQAAAhVJREFUeNrt2y9IXlEYx3H3ooIiiCAIC4JgMRgsCyaLwWaxLK0srZhWVtYWVtYWlpYMNsvK0sKKRTANBivDIIggIiLiZ+URDncHFgzbznN+8d77nvPwvec99zz/xsa6uv4oPMWjzADgK55kBnCvj3icGQBc4hWmsgK41w/sZAPwswLiC9ayAJjGa1wNrt/hAxaaBlBcW8ReZTVc4CUmmwZQ3FvHYQXEd2w3DyDuj/AMJxUQn7HaNIDiuRm8wfUAwi3eY75pAMXzS9ivrIZz7GKiaQDF7zZwVAHxDVvNAyj2h+c4rYD4hJWmARRjzOItbir7wzvMNQ2gGGsZB5XVcIYXGG8aQDHmJo4rII6x2TyAGHc83vpZBcQBlpsGUIw/F/vA7QDCTewbs00DKOZZiS/DUKfxJRk1DaCYbyvOCkMdYaN5ADHnRJwazysg9rHUNIBi7vnwI4b7w3X4HTNNAyhsWA3PcqiT8ERHTQMobNmOWMNQh1hvHkDYMxlRp4sKiD0sNg2gsGsh4pB3AwhXEbecbhpAYd9aRKZVItgPT+v96wAKO3ciVzHUw9J6/wuAsHUqslaXFRC/pfVGY139L9A3wf4Z7AehfhTuzlB3h3tApIfE/jqAtEHRtGHx1ImRtKmxtMnRtOnx1AUSaUtk0hZJpS2TS10ombZUNm2xdPpy+d4w0VtmetNU2ra51I2TuVtnuxrWL/YiKQ6CN9uRAAAAAElFTkSuQmCC");
        this.y = wfa.a(TypedValues.CycleType.TYPE_EASING, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCjM59gfMOgAAA59JREFUeNrtmkloFEEUhl/N6KgxriiJOHEXF4gENYlgRFA8uyAoCNGggl68CCJ6EQx6cCFqUFzABQQRMYh4EfSi4IJbiFERQVxRgxuRMWri5yE1UBY9yWh6Znq6+z+96a6ZV/8/tbz3qkRChAgRwiMAFgJngWgQyVcDHXTiFKCCRH4Df6MFKAkK+W0W+VfAxCAQV8A+i/wTIB4E8lHgpEX+LjA8COQHAM8t8o3ATKC338kXA59IjXbgEVAPLAb6+k2AHRbhVrrGV+AwMNVPIpx3INncjRi/gTPAWL+IcMIieBGIAXFgGXAU+OggRALY7ItIEdhvkTsNRIz3MWCp3h1sXAGK/RAHnLKIHUzRdgnwwmr7Epjsh3jggkWsNkXbQuC4Q8g8Ld9F6ANctYht7KL9GiNpAnib94ujDo5uaUIdwMo00uafhghNQL98F2EYcA9YlGb75daoOeqHnSHyj+23WyLMC1oRJQpct7LJXkETYSrwyxBhlQQNwAFrFKigCTDK2hXmBnEUnDMEOBZEARYaArwLogAF1jRIq4YQ8YsASqmEiNw2HpUHSgCNB4Y9KYgCPDXs8UEU4LNhF6bzhW7DRmCEiFTqjx+VUtc8LECrYfd3RQA9lxq03SgiZR4WIGbYv9yaAt8Me5DHp8DAFP3ukQDvDTvu8WxrnGG/dUUApdQrEUkYU2a8hwWYnGJH6PEu0GzYczwaCSoRqTIeNbkpwFXDnu/Rf79URJKnyz9E5Kab6i4wYuxvQKEHR8BO8+DE7R+PAu8MB6s9Rj4GvDH6tzYTTvZaVZeIhwSoMfr2HRiUCSd21aXGI+T7WRcu6jLp7Ijh6AMw1AMCmKXxtozeLgOKgC+Gw4ZcFiCB2fpWSRLbsuF0nXUYsSlH5EfqE+IknmblSo0+1m6wRKjOMvnB+jzQHPpl2ezAEOCx0YEOYH2WfMct8rlZkIES4LXVkXqgTwZ9Vjn43JrLFXgC8Mzq0H2g0mU/BTrSa7d8bfHCPlwE3HC41XWyp9fbdIS3Tt8fxprzq7wUivYGdmnithCXgRXpxgw67K4A9ljhdxKPgVK3+q5cFqJcRA6JyAyn1zpFfaBz9RZdtYnpStNonc/PEpEhDt9vE5FaEdmtlPrh2YoEEAEWpbje9j9o1aNrhOQbgOlAncNC2R0SwCVgZaZTb5VFMUpEpEJEpojIGBEZLJ21+zbpLGe3iMgTEXkoIneUUj8lRIgQIUKECJFJ/AEepzU1TSID5QAAAABJRU5ErkJggg==");
        this.z = wfa.a(TypedValues.CycleType.TYPE_EASING, "iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMXCjITNKc0rQAAAJFJREFUeNrt2tENgCAMQEEwLuD+QzpC3cBURWLsvV+JNRfhi9YkSSpbP3sYETF0WO89s27m3KX6H1AeYL2wdrs5Y3/4ja/OTZ8B2f074h0z5zoDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/lr6rvDoK+xfmWsLNEmSVLUD47EiX/OuE8UAAAAASUVORK5CYII=");
        this.v = wfa.a(320, "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAdVBMVEUAAAAAAAAgICDf398QEBDv7+/Pz8+fn58gICAQEBDe3t5AQEBwcHDv7+9/f3/f398wMDCAgIBgYGCQkJDAwMC/v7/Pz8+fn59QUFBAQECvr69QUFCPj4+/v79wcHBvb29gYGBfX1++vr6urq6Ojo5hYWH///+8blWlAAAAJnRSTlOAAJDviPfnzyAQ3qC478DfmICvx9/fz59QQK+oj79wb2Bfvq6OsPCmZBAAAAJhSURBVEjHndbXYuIwEAXQiSQXueAGtmkhJNn7/5+4I8JmbJAWw33iQYex7FGhN0/s9jT0FTjVcXfavvlC92o8lpil3J0fQ9s4FXdtrYij8qKLXeUhDUFhm8LQLKp1tknDcKyY5eRJnQDZOQDtwcOkrAa+rQ+mPaKC/pMiQpbew7SCVgEiRUWSuNjQg5hYJP26hBYkYTmFluvRosTo7QQeoM0yaDS+BX4gUrQwKsJ4hW6CRfBF6ruvgsxeYROcYB4BdJs1mh+YAoEHXQEemKO0FzgEvoRJAKbkL8mwQh3okygnhv6SxK80DkxPKxI4Lzky3KH1Ty8x9AM14mQ/f7GfDEso//SIfiEwWwEGpaUtYhke4Ro3vX+QU//hCdfTxtvSOzrpYIkigS6mm3ZXh3faSddEN8PlUTet+9vNL2wx0BH5ZFAAuhmbSEbW6KmCegTJFGC0kkZRyGRMEHIYbXi0ngxdCA0i9/sViNdggQ3ViCdDl72cFdBSO385PeqFn0NjL+vjkwa0DxsgcidDBz3p8t3ilktuWi7U5Ho/hWoV3TW5LWGWLKuN1COFktfjEcXDhayT2fHXYsdwxJo82evw1hHjzNCWyAObld57YY3ssss1WD+3PSYYHJSSCzdkBaQOSknfRD1QX48ALpk9eeikF8gZnzvmzi8erIfpUd4vP8ozO7s8ZK9dHpx8+roi8skLksjHV7I+DV0C42DRfA0cbODa+ZEBSR1i2Ri+6KYNuGp7U9YUzMpGygmc0CFztivyi1Z128UQ5oPywF+3l/njKEygL9vT12cGTtUPp631DfkLyeFPR/ZOiKIAAAAASUVORK5CYII=");
        this.w = wfa.a(320, "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAclBMVEUAAAAAAAAgICDf39+goKAgICAQEBDe3t7Pz88QEBDv7+9wcHBAQEDf39+AgIDv7+/AwMCQkJDPz8+/v7+vr69gYGCfn5+Pj49fX19QUFBAQEAwMDBQUFDu7u5/f39/f39wcHBvb2+/v78wMDCvr6////9R0hTPAAAAJXRSTlOAAJDvzyAQ3ueI97ig34Dv38fPv6+vn49fUECYqO7Av3Bv35fYiozA+AAAAjJJREFUSMe91um2mjAUBeBDGMOkjDJoe63d7/+KTbyxpzZJgXat7j8i8nkICUkocCRZ7mNbQaXq+vsSuEK2mrsT3nLqp22Y1FplzbAKUhFl0WS68hj7ILNvhaS3iEHbOvbDuVKsJEfWCEgnD0wuzOyIELgkLhi3yAv6Q4ocaWzDuEIoPISLsiR2maSNyIwl/XQR7Uj0lAwTVY92JUOb/AIvCOU+KENcGE7IBe2MyDEbqBtYeB9kaPUK0sTA2tvAMgesk2fUnzAGhNt9ARywxC15wtHTEzICvhpoldSwwuoZJ3lJBlolFZyQeZoXCjLQKjkr2GNwNy+S5IEFOgVPEO7mEfmgVPdKCzK+PIeJbp4fUoaFPtDwCOYIYihfXx5k0uCDeh41+dvlfBSGwvzx1ZwdMFKHki9yH0VQ0nx8ZkVLFcQGNIQdkUCqf9mEGrHTAXZBLdn9Fxgh/P4mgb9/OC3WLdhY3VGioxHD8QFQoN8z5IR89TvxkPMN8vC6NciTE+TR10rgFlDQoTj6Ig/oFZxxJkeuoX/qyDApqO61dEmh5NUJV6TPWa7G+dj0GGHUkEvunJAFEGvIJZ0NtWFolgBVMj246MQGBvOxZW7694U1SNr9S3mavG0e0uObh5c8vF1heXCDxHJ7S9bGvk1g5i1anq1NIGdKgejhY+ns3+jGNYBs+K2sLBQ71UnggEzHVNumKJ9aPIYmAzMH5Ez9DRytupkZQ1eWe9+l2lTteF+UsvMDBKFIvMRHIr8AAAAASUVORK5CYII=");
        zh zhVar = new zh(context);
        this.j = zhVar;
        ProgressBar progressBar = new ProgressBar(context, null, R.attr.progressBarStyleLarge);
        this.m = progressBar;
        progressBar.setVisibility(8);
        View view2 = new View(context);
        this.n = view2;
        view2.setBackgroundColor(-1728053248);
        view2.setVisibility(8);
        View view3 = new View(context);
        this.p = view3;
        View view4 = new View(context);
        this.o = view4;
        TextView textView = new TextView(context);
        this.r = textView;
        textView.setTextSize(1, sparseIntArray.get(on9.s));
        textView.setTextColor(-1);
        textView.setMaxLines(sparseIntArray.get(on9.t));
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setGravity(17);
        textView.setIncludeFontPadding(false);
        TextView textView2 = new TextView(context);
        this.s = textView2;
        textView2.setTextSize(1, sparseIntArray.get(on9.u));
        textView2.setTextColor(-1);
        textView2.setMaxLines(sparseIntArray.get(on9.v));
        textView2.setEllipsize(truncateAt);
        textView2.setGravity(17);
        textView2.setIncludeFontPadding(false);
        Button button2 = new Button(context);
        this.q = button2;
        button2.setLines(1);
        button2.setTextSize(1, sparseIntArray.get(on9.w));
        button2.setEllipsize(truncateAt);
        button2.setIncludeFontPadding(false);
        button2.setMinimumWidth(i3);
        button2.setPadding(i4, 0, i4, 0);
        TextView textView3 = new TextView(context);
        this.t = textView3;
        textView3.setPadding(sparseIntArray.get(on9.y), 0, 0, 0);
        textView3.setTextColor(-1);
        textView3.setMaxLines(sparseIntArray.get(on9.B));
        textView3.setIncludeFontPadding(false);
        textView3.setTextSize(1, sparseIntArray.get(on9.X));
        fk fkVar = new fk(context);
        this.u = fkVar;
        e6 e6Var2 = new e6(context);
        this.b = e6Var2;
        e6Var2.setPadding(i2);
        zh zhVar2 = new zh(context);
        this.k = zhVar2;
        setContentDescription("ad_view");
        l3a.n(this, "ad_view");
        textView.setContentDescription(TJAdUnitConstants.String.TITLE);
        l3a.n(textView, TJAdUnitConstants.String.TITLE);
        textView2.setContentDescription("description");
        l3a.n(textView2, "description");
        zhVar.setContentDescription("image");
        l3a.n(zhVar, "image");
        button2.setContentDescription("cta");
        l3a.n(button2, "cta");
        e6Var.setContentDescription("dismiss");
        l3a.n(e6Var, "dismiss");
        g5Var.setContentDescription("play");
        l3a.n(g5Var, "play");
        zhVar2.setContentDescription("ads_logo");
        l3a.n(zhVar2, "ads_logo");
        view2.setContentDescription("media_dim");
        l3a.n(view2, "media_dim");
        view4.setContentDescription("top_dim");
        l3a.n(view4, "top_dim");
        view3.setContentDescription("bot_dim");
        l3a.n(view3, "bot_dim");
        textView3.setContentDescription("age_bordering");
        l3a.n(textView3, "age_bordering");
        mVar.setContentDescription("ad_choices");
        l3a.n(mVar, "ad_choices");
        l3a.n(e6Var2, "sound_button");
        if (view != null) {
            addView(view);
        }
        addView(zhVar);
        addView(view2);
        addView(view3);
        addView(view4);
        addView(bgVar);
        addView(e6Var);
        addView(textView);
        addView(textView2);
        addView(button2);
        addView(textView3);
        addView(zhVar2);
        addView(mVar);
        addView(fkVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View, android.widget.Button] */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View, com.my.target.zh] */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.view.View, android.view.View$OnClickListener, com.my.target.hg] */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void setClickArea(t2a t2aVar) {
        c1 c1Var = this.A;
        setOnTouchListener(c1Var);
        ?? r1 = this.q;
        r1.setOnTouchListener(c1Var);
        ?? r2 = this.r;
        r2.setOnTouchListener(c1Var);
        ?? r3 = this.t;
        r3.setOnTouchListener(c1Var);
        ?? r4 = this.s;
        r4.setOnTouchListener(c1Var);
        ?? r5 = this.j;
        r5.setOnTouchListener(c1Var);
        boolean z = t2aVar.m;
        boolean z2 = t2aVar.g;
        if (z) {
            setOnClickListener(this);
            r1.setOnClickListener(this);
            r2.setOnClickListener(this);
            r3.setOnClickListener(this);
            r4.setOnClickListener(this);
            r5.setOnClickListener(this);
            return;
        }
        setOnClickListener(t2aVar.l ? this : 0);
        r1.setEnabled(z2);
        r1.setOnClickListener(z2 ? this : 0);
        r2.setOnClickListener(t2aVar.a ? this : 0);
        r3.setOnClickListener((t2aVar.h || t2aVar.i) ? this : 0);
        r4.setOnClickListener(t2aVar.b ? this : 0);
        ?? r8 = this;
        if (!t2aVar.d) {
            r8 = 0;
        }
        r5.setOnClickListener(r8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.view.View, android.widget.Button] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.view.View, android.view.View$OnClickListener, com.my.target.hg] */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View, com.my.target.zh] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void setClickAreaLegacy(t2a t2aVar) {
        boolean z = t2aVar.m;
        boolean z2 = t2aVar.g;
        ?? r2 = this.q;
        if (z) {
            setOnClickListener(this);
            r2.setOnClickListener(this);
            return;
        }
        setOnClickListener(t2aVar.l ? this : 0);
        r2.setEnabled(z2);
        r2.setOnClickListener(z2 ? this : 0);
        this.r.setOnClickListener(t2aVar.a ? this : 0);
        this.t.setOnClickListener((t2aVar.h || t2aVar.i) ? this : 0);
        this.s.setOnClickListener(t2aVar.b ? this : 0);
        this.j.setOnClickListener(t2aVar.d ? this : 0);
    }

    public final void a(int i, String str) {
        g5 g5Var = this.h;
        g5Var.setVisibility(0);
        if (i == 1) {
            g5Var.setImageBitmap(this.z);
            this.P = 1;
        } else if (i == 2) {
            g5Var.setImageBitmap(this.y);
            this.P = 2;
        } else {
            g5Var.setImageBitmap(this.x);
            this.P = 0;
        }
        Button button = this.i;
        if (str == null) {
            button.setVisibility(8);
        } else {
            button.setVisibility(0);
            button.setText(str);
        }
    }

    public final void b(boolean z) {
        this.j.setVisibility(z ? 0 : 4);
    }

    public final boolean c(int i) {
        View view = this.L;
        return ((double) l3a.e(view != null ? view.getMeasuredWidth() : 0, this.j.getMeasuredWidth())) * 1.6d <= ((double) i);
    }

    public final void d(boolean z) {
        this.n.setVisibility(z ? 0 : 8);
    }

    public final void e(boolean z) {
        this.m.setVisibility(z ? 0 : 8);
    }

    public final void f() {
        this.h.setVisibility(8);
        this.i.setVisibility(8);
    }

    @Override // defpackage.gw9
    public View getCloseButton() {
        return this.d;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z = this.R;
        m mVar = this.l;
        zh zhVar = this.k;
        View view2 = this.n;
        View view3 = this.L;
        Button button = this.i;
        g5 g5Var = this.h;
        e6 e6Var = this.b;
        e6 e6Var2 = this.d;
        c3 c3Var = this.g;
        Button button2 = this.q;
        int i = 2;
        if (!z) {
            if (view == e6Var2) {
                t2 t2Var = c3Var.l;
                if (t2Var != null) {
                    t2Var.g.h();
                    t2Var.e();
                    t2Var.d.destroy();
                    t2Var.e.b();
                }
                c3Var.o();
                c3Var.d.e(c3Var.b);
                return;
            }
            if (view == e6Var) {
                c3Var.k();
                return;
            }
            if (view == g5Var || view == button) {
                c3Var.g(this.P);
                return;
            }
            if (view == view3) {
                c3Var.b(new d6a());
                return;
            }
            if (view == view2) {
                c3Var.h(new d6a());
                return;
            }
            if (view == zhVar) {
                c3Var.o();
                String str = c3Var.b.c0;
                if (str == null) {
                    return;
                }
                hg hgVar = c3Var.e;
                hgVar.getClass();
                y14.n(hgVar.getContext(), str, null, null, null);
                return;
            }
            if (view == mVar) {
                c3Var.d();
                return;
            } else if (view == button2 && button2.isEnabled()) {
                c3Var.a(null, 2, new gia());
                return;
            } else {
                c3Var.a(null, 1, new gia());
                return;
            }
        }
        if (view == e6Var2) {
            t2 t2Var2 = c3Var.l;
            if (t2Var2 != null) {
                t2Var2.g.h();
                t2Var2.e();
                t2Var2.d.destroy();
                t2Var2.e.b();
            }
            c3Var.o();
            c3Var.d.e(c3Var.b);
            return;
        }
        if (view == e6Var) {
            c3Var.k();
            return;
        }
        if (view == g5Var || view == button) {
            c3Var.g(this.P);
            return;
        }
        if (view == view3) {
            c3Var.b(this.Q);
            return;
        }
        if (view == view2) {
            c3Var.h(this.Q);
            return;
        }
        if (view == zhVar) {
            c3Var.o();
            String str2 = c3Var.b.c0;
            if (str2 == null) {
                return;
            }
            hg hgVar2 = c3Var.e;
            hgVar2.getClass();
            y14.n(hgVar2.getContext(), str2, null, null, null);
            return;
        }
        if (view == mVar) {
            c3Var.d();
            return;
        }
        if (view == button2 && button2.isEnabled()) {
            c3Var.a(null, 2, new up9(64, this.Q));
            return;
        }
        if (view == button2) {
            i = 64;
        } else if (view == this.r) {
            i = 1;
        } else if (view == this.t) {
            i = 128;
        } else if (view != this.s) {
            i = view == this.j ? 8 : 2048;
        }
        c3Var.a(null, 1, new up9(i, this.Q));
    }

    @Override // defpackage.gw9
    public void setBackgroundImage(h14 h14Var) {
        this.j.setImageData(h14Var);
    }

    @Override // defpackage.gw9
    public void setBanner(xda xdaVar) {
        Bitmap bitmap;
        ev9 ev9Var = xdaVar.X;
        setBackgroundColor(ev9Var.d);
        int i = ev9Var.e;
        int i2 = ev9Var.f;
        TextView textView = this.r;
        textView.setTextColor(i2);
        TextView textView2 = this.s;
        textView2.setTextColor(i);
        this.R = xdaVar.Q.c;
        boolean zIsEmpty = TextUtils.isEmpty(xdaVar.g);
        TextView textView3 = this.t;
        if (zIsEmpty && TextUtils.isEmpty(xdaVar.n)) {
            textView3.setVisibility(8);
        } else {
            String strC = xdaVar.n;
            if (!TextUtils.isEmpty(xdaVar.g) && !TextUtils.isEmpty(xdaVar.n)) {
                strC = ni0.c(strC, " ");
            }
            StringBuilder sbC = ad2.c(strC);
            sbC.append(xdaVar.g);
            String string = sbC.toString();
            textView3.setVisibility(0);
            textView3.setText(string);
        }
        h14 h14Var = xdaVar.R;
        e6 e6Var = this.d;
        if (h14Var == null || (bitmap = (Bitmap) h14Var.d) == null) {
            Bitmap bitmapA = kv9.a(this.c.a.get(on9.r));
            if (bitmapA != null) {
                e6Var.a(bitmapA, false);
            }
        } else {
            e6Var.a(bitmap, true);
        }
        int i3 = ev9Var.a;
        int i4 = ev9Var.b;
        int i5 = this.O;
        Button button = this.q;
        l3a.o(button, i3, i4, i5);
        button.setTextColor(ev9Var.e);
        button.setText(xdaVar.g());
        textView.setText(xdaVar.e);
        textView2.setText(xdaVar.c);
        h14 h14Var2 = xdaVar.b0;
        if (h14Var2 != null && ((Bitmap) h14Var2.d) != null) {
            zh zhVar = this.k;
            zhVar.setImageData(h14Var2);
            zhVar.setOnClickListener(this);
        }
        q qVar = xdaVar.H;
        m mVar = this.l;
        if (qVar != null) {
            mVar.setImageBitmap((Bitmap) qVar.a.d);
            mVar.setOnClickListener(this);
        } else {
            mVar.setVisibility(8);
        }
        boolean z = this.R;
        t2a t2aVar = xdaVar.r;
        if (z) {
            setClickArea(t2aVar);
        } else {
            setClickAreaLegacy(t2aVar);
        }
    }

    @Override // defpackage.gw9
    public void setPanelColor(int i) {
        this.p.setBackgroundColor(i);
        this.o.setBackgroundColor(i);
    }

    @Override // defpackage.gw9
    public void setSoundState(boolean z) {
        e6 e6Var = this.b;
        if (z) {
            e6Var.a(this.v, false);
            e6Var.setContentDescription("sound_on");
        } else {
            e6Var.a(this.w, false);
            e6Var.setContentDescription("sound_off");
        }
    }
}
