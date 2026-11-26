package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.my.target.common.views.StarsRatingView;
import com.my.target.l;
import com.my.target.w2;
import com.my.target.wf;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.h14;
import defpackage.kha;
import defpackage.kv9;
import defpackage.l3a;
import defpackage.ml0;
import defpackage.nk7;
import defpackage.p9;
import defpackage.pfa;
import defpackage.pk7;
import defpackage.q9;
import defpackage.rn9;
import defpackage.rz;
import defpackage.t2a;
import defpackage.wfa;
import defpackage.xda;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public class wf extends RelativeLayout implements c {
    public static final int z = View.generateViewId();
    public final ml0 b;
    public final p9 c;
    public final zh d;
    public final wj e;
    public final zf f;
    public final ef g;
    public final f6 h;
    public final fk i;
    public final l3a j;
    public final f6 k;
    public final m l;
    public final Bitmap m;
    public final Bitmap n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final int s;
    public l.a t;
    public float u;
    public r0.a v;
    public final c1 w;
    public e6a x;
    public boolean y;

    public interface a {
    }

    public interface b {
        void a(View view, pfa pfaVar);
    }

    public wf(Context context, x2 x2Var) {
        super(context);
        this.x = new d6a();
        this.y = false;
        boolean z2 = (getContext().getResources().getConfiguration().screenLayout & 15) >= 3;
        l3a l3aVar = new l3a(context);
        this.j = l3aVar;
        zh zhVar = new zh(context);
        this.d = zhVar;
        Context context2 = x2Var.b;
        wj wjVar = new wj(context2, l3aVar, z2);
        this.e = wjVar;
        zf zfVar = new zf(context2, l3aVar, z2);
        this.f = zfVar;
        int i = z;
        zfVar.setId(i);
        f6 f6Var = new f6(context);
        this.h = f6Var;
        fk fkVar = new fk(context);
        this.i = fkVar;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(3, i);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(14, -1);
        ef efVar = new ef(context, l3aVar);
        this.g = efVar;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(12, -1);
        efVar.setLayoutParams(layoutParams3);
        f6 f6Var2 = new f6(context);
        this.k = f6Var2;
        this.m = wfa.a(320, "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAdVBMVEUAAAAAAAAgICDf398QEBDv7+/Pz8+fn58gICAQEBDe3t5AQEBwcHDv7+9/f3/f398wMDCAgIBgYGCQkJDAwMC/v7/Pz8+fn59QUFBAQECvr69QUFCPj4+/v79wcHBvb29gYGBfX1++vr6urq6Ojo5hYWH///+8blWlAAAAJnRSTlOAAJDviPfnzyAQ3qC478DfmICvx9/fz59QQK+oj79wb2Bfvq6OsPCmZBAAAAJhSURBVEjHndbXYuIwEAXQiSQXueAGtmkhJNn7/5+4I8JmbJAWw33iQYex7FGhN0/s9jT0FTjVcXfavvlC92o8lpil3J0fQ9s4FXdtrYij8qKLXeUhDUFhm8LQLKp1tknDcKyY5eRJnQDZOQDtwcOkrAa+rQ+mPaKC/pMiQpbew7SCVgEiRUWSuNjQg5hYJP26hBYkYTmFluvRosTo7QQeoM0yaDS+BX4gUrQwKsJ4hW6CRfBF6ruvgsxeYROcYB4BdJs1mh+YAoEHXQEemKO0FzgEvoRJAKbkL8mwQh3okygnhv6SxK80DkxPKxI4Lzky3KH1Ty8x9AM14mQ/f7GfDEso//SIfiEwWwEGpaUtYhke4Ro3vX+QU//hCdfTxtvSOzrpYIkigS6mm3ZXh3faSddEN8PlUTet+9vNL2wx0BH5ZFAAuhmbSEbW6KmCegTJFGC0kkZRyGRMEHIYbXi0ngxdCA0i9/sViNdggQ3ViCdDl72cFdBSO385PeqFn0NjL+vjkwa0DxsgcidDBz3p8t3ilktuWi7U5Ho/hWoV3TW5LWGWLKuN1COFktfjEcXDhayT2fHXYsdwxJo82evw1hHjzNCWyAObld57YY3ssss1WD+3PSYYHJSSCzdkBaQOSknfRD1QX48ALpk9eeikF8gZnzvmzi8erIfpUd4vP8ozO7s8ZK9dHpx8+roi8skLksjHV7I+DV0C42DRfA0cbODa+ZEBSR1i2Ri+6KYNuGp7U9YUzMpGygmc0CFztivyi1Z128UQ5oPywF+3l/njKEygL9vT12cGTtUPp631DfkLyeFPR/ZOiKIAAAAASUVORK5CYII=");
        this.n = wfa.a(320, "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAclBMVEUAAAAAAAAgICDf39+goKAgICAQEBDe3t7Pz88QEBDv7+9wcHBAQEDf39+AgIDv7+/AwMCQkJDPz8+/v7+vr69gYGCfn5+Pj49fX19QUFBAQEAwMDBQUFDu7u5/f39/f39wcHBvb2+/v78wMDCvr6////9R0hTPAAAAJXRSTlOAAJDvzyAQ3ueI97ig34Dv38fPv6+vn49fUECYqO7Av3Bv35fYiozA+AAAAjJJREFUSMe91um2mjAUBeBDGMOkjDJoe63d7/+KTbyxpzZJgXat7j8i8nkICUkocCRZ7mNbQaXq+vsSuEK2mrsT3nLqp22Y1FplzbAKUhFl0WS68hj7ILNvhaS3iEHbOvbDuVKsJEfWCEgnD0wuzOyIELgkLhi3yAv6Q4ocaWzDuEIoPISLsiR2maSNyIwl/XQR7Uj0lAwTVY92JUOb/AIvCOU+KENcGE7IBe2MyDEbqBtYeB9kaPUK0sTA2tvAMgesk2fUnzAGhNt9ARywxC15wtHTEzICvhpoldSwwuoZJ3lJBlolFZyQeZoXCjLQKjkr2GNwNy+S5IEFOgVPEO7mEfmgVPdKCzK+PIeJbp4fUoaFPtDwCOYIYihfXx5k0uCDeh41+dvlfBSGwvzx1ZwdMFKHki9yH0VQ0nx8ZkVLFcQGNIQdkUCqf9mEGrHTAXZBLdn9Fxgh/P4mgb9/OC3WLdhY3VGioxHD8QFQoN8z5IR89TvxkPMN8vC6NciTE+TR10rgFlDQoTj6Ig/oFZxxJkeuoX/qyDApqO61dEmh5NUJV6TPWa7G+dj0GGHUkEvunJAFEGvIJZ0NtWFolgBVMj246MQGBvOxZW7694U1SNr9S3mavG0e0uObh5c8vF1heXCDxHJ7S9bGvk1g5i1anq1NIGdKgejhY+ns3+jGNYBs+K2sLBQ71UnggEzHVNumKJ9aPIYmAzMH5Ez9DRytupkZQ1eWe9+l2lTteF+UsvMDBKFIvMRHIr8AAAAASUVORK5CYII=");
        this.b = new ml0(this, 8);
        this.c = new p9(this, 5);
        this.o = l3aVar.b(64.0f);
        this.p = l3aVar.b(20.0f);
        m mVar = new m(context);
        this.l = mVar;
        int iB = l3aVar.b(28.0f);
        this.s = iB;
        mVar.setFixedHeight(iB);
        l3a.n(zhVar, "icon_image");
        l3a.n(f6Var2, "sound_button");
        l3a.n(wjVar, "vertical_view");
        l3a.n(zfVar, "media_view");
        l3a.n(efVar, "panel_view");
        l3a.n(f6Var, "close_button");
        l3a.n(fkVar, "progress_wheel");
        addView(efVar, 0);
        addView(zhVar, 0);
        addView(wjVar, 0, layoutParams);
        addView(zfVar, 0, layoutParams2);
        addView(f6Var2);
        addView(mVar);
        addView(f6Var);
        addView(fkVar);
        this.q = l3aVar.b(28.0f);
        this.r = l3aVar.b(10.0f);
        this.w = new c1(new q9(this, 6));
    }

    @Override // com.my.target.c
    public final void a(boolean z2) {
        this.i.setVisibility(8);
        this.g.c(this.k);
        this.f.e(z2);
    }

    @Override // com.my.target.c
    public final void b(boolean z2) {
        f6 f6Var = this.k;
        if (z2) {
            f6Var.a(this.n, false);
            f6Var.setContentDescription("sound_off");
        } else {
            f6Var.a(this.m, false);
            f6Var.setContentDescription("sound_on");
        }
    }

    @Override // com.my.target.c
    public final void c(boolean z2) {
        View[] viewArr = {this.k};
        ef efVar = this.g;
        if (efVar.getVisibility() == 0) {
            efVar.a(300, viewArr);
        }
        this.f.a(z2);
    }

    @Override // com.my.target.c
    public final void d() {
    }

    @Override // com.my.target.c
    public final void destroy() {
        this.f.b();
    }

    @Override // com.my.target.l
    public View getCloseButton() {
        return this.h;
    }

    @Override // com.my.target.c
    public zf getPromoMediaView() {
        return this.f;
    }

    @Override // com.my.target.l
    public View getView() {
        return this;
    }

    @Override // com.my.target.c
    public final boolean isPlaying() {
        return this.f.h();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i, int i2, int i3, int i4) {
        f6 f6Var = this.h;
        f6Var.layout(i3 - f6Var.getMeasuredWidth(), 0, i3, f6Var.getMeasuredHeight());
        fk fkVar = this.i;
        int measuredWidth = fkVar.getMeasuredWidth();
        int i5 = this.r;
        fkVar.layout(i5, i5, measuredWidth + i5, fkVar.getMeasuredHeight() + i5);
        int left = f6Var.getLeft();
        m mVar = this.l;
        l3a.j(mVar, left - mVar.getMeasuredWidth(), f6Var.getTop(), f6Var.getLeft(), f6Var.getBottom());
        wj wjVar = this.e;
        zh zhVar = this.d;
        ef efVar = this.g;
        f6 f6Var2 = this.k;
        zf zfVar = this.f;
        if (i4 > i3) {
            if (f6Var2.getTranslationY() > 0.0f) {
                f6Var2.setTranslationY(0.0f);
            }
            setBackgroundColor(-1);
            int measuredWidth2 = (i3 - zfVar.getMeasuredWidth()) / 2;
            zfVar.layout(measuredWidth2, 0, zfVar.getMeasuredWidth() + measuredWidth2, zfVar.getMeasuredHeight());
            wjVar.layout(0, zfVar.getBottom(), i3, i4);
            int measuredHeight = zfVar.getMeasuredHeight();
            int i6 = this.p;
            int bottom = measuredHeight != 0 ? zfVar.getBottom() - (zhVar.getMeasuredHeight() / 2) : i6;
            zhVar.layout(i6, bottom, zhVar.getMeasuredWidth() + i6, zhVar.getMeasuredHeight() + bottom);
            efVar.layout(0, 0, 0, 0);
            f6Var2.layout(i3 - f6Var2.getMeasuredWidth(), zfVar.getBottom() - f6Var2.getMeasuredHeight(), i3, zfVar.getBottom());
            return;
        }
        setBackgroundColor(-16777216);
        int measuredWidth3 = (i3 - zfVar.getMeasuredWidth()) / 2;
        int measuredHeight2 = (i4 - zfVar.getMeasuredHeight()) / 2;
        zfVar.layout(measuredWidth3, measuredHeight2, zfVar.getMeasuredWidth() + measuredWidth3, zfVar.getMeasuredHeight() + measuredHeight2);
        zhVar.layout(0, 0, 0, 0);
        wjVar.layout(0, 0, 0, 0);
        efVar.layout(0, i4 - efVar.getMeasuredHeight(), i3, i4);
        f6Var2.layout(i3 - f6Var2.getMeasuredWidth(), efVar.getTop() - f6Var2.getMeasuredHeight(), i3, efVar.getTop());
        if (zfVar.h()) {
            View[] viewArr = {f6Var2};
            if (efVar.getVisibility() == 0) {
                efVar.a(0, viewArr);
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        this.k.measure(i, i2);
        this.h.measure(i, i2);
        int i3 = this.q;
        this.i.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE);
        m mVar = this.l;
        int i4 = this.s;
        l3a.i(mVar, i4, i4, 1073741824);
        ef efVar = this.g;
        zf zfVar = this.f;
        if (size2 > size) {
            zfVar.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            this.e.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2 - zfVar.getMeasuredHeight(), Integer.MIN_VALUE));
            this.d.measure(View.MeasureSpec.makeMeasureSpec(this.o, Integer.MIN_VALUE), iMakeMeasureSpec2);
            efVar.setVisibility(8);
        } else {
            efVar.setVisibility(0);
            zfVar.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            efVar.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), iMakeMeasureSpec2);
        }
        setMeasuredDimension(i, i2);
    }

    @Override // com.my.target.c
    public final void pause() {
        this.g.c(this.k);
        this.f.i();
    }

    @Override // com.my.target.c
    public final void resume() {
        View[] viewArr = {this.k};
        ef efVar = this.g;
        if (efVar.getVisibility() == 0) {
            efVar.a(300, viewArr);
        }
        zf zfVar = this.f;
        zfVar.d.setVisibility(8);
        n nVar = zfVar.l;
        if (nVar == null || zfVar.m == null) {
            return;
        }
        nVar.resume();
        zfVar.b.setVisibility(8);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x007d  */
    /* JADX WARN: Code duplicated, block: B:24:0x0093  */
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
    @Override // com.my.target.l
    public void setBanner(xda xdaVar) {
        boolean z2;
        float f;
        int iB;
        int i;
        int i2;
        f6 f6Var;
        Bitmap bitmap;
        int i3;
        int i4;
        l3a l3aVar = this.j;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.q, l3aVar.b(28.0f));
        layoutParams.addRule(9);
        layoutParams.topMargin = l3aVar.b(10.0f);
        layoutParams.leftMargin = l3aVar.b(10.0f);
        fk fkVar = this.i;
        fkVar.setLayoutParams(layoutParams);
        fkVar.setVisibility(8);
        this.y = xdaVar.Q.c;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(11);
        f6 f6Var2 = this.h;
        f6Var2.setVisibility(8);
        f6Var2.setLayoutParams(layoutParams2);
        kha khaVar = xdaVar.Z;
        f6 f6Var3 = this.k;
        if (khaVar == null) {
            f6Var3.setVisibility(8);
        }
        Point pointQ = l3a.q(getContext());
        if (pointQ.x + pointQ.y < 1280) {
            z2 = true;
        } else {
            kha khaVar2 = xdaVar.Z;
            if (khaVar2 != null) {
                rn9 rn9Var = (rn9) khaVar2.h0;
                if (rn9Var != null) {
                    i3 = rn9Var.c;
                    i4 = rn9Var.b;
                } else {
                    i4 = 0;
                    i3 = 0;
                }
            } else {
                h14 h14Var = xdaVar.p;
                if (h14Var != null) {
                    i3 = h14Var.c;
                    i4 = h14Var.b;
                } else {
                    i4 = 0;
                    i3 = 0;
                }
            }
            if (i3 <= 0 || i4 <= 0 || (i3 <= i4 && i4 / i3 >= 1.4f)) {
                z2 = false;
            } else {
                z2 = true;
            }
        }
        ef efVar = this.g;
        efVar.setBackgroundColor(1711276032);
        TextView textView = efVar.b;
        textView.setTextColor(-2236963);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        TextView textView2 = efVar.h;
        textView2.setTextColor(-6710887);
        textView2.setVisibility(8);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        gradientDrawable.setStroke(1, -3355444);
        TextView textView3 = efVar.d;
        l3a l3aVar2 = efVar.k;
        boolean z3 = z2;
        textView3.setPadding(l3aVar2.b(4.0f), l3aVar2.b(4.0f), l3aVar2.b(4.0f), l3aVar2.b(4.0f));
        textView3.setBackground(gradientDrawable);
        textView3.setTextSize(2, 12.0f);
        textView3.setTextColor(-3355444);
        textView3.setVisibility(8);
        LinearLayout linearLayout = efVar.e;
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setVisibility(8);
        TextView textView4 = efVar.g;
        textView4.setTextColor(-6710887);
        textView4.setGravity(16);
        textView4.setTextSize(2, 14.0f);
        Button button = efVar.i;
        button.setPadding(l3aVar2.b(15.0f), 0, l3aVar2.b(15.0f), 0);
        button.setMinimumWidth(l3aVar2.b(100.0f));
        button.setTransformationMethod(null);
        button.setTextSize(2, 22.0f);
        button.setMaxEms(10);
        button.setSingleLine();
        button.setEllipsize(truncateAt);
        fj fjVar = efVar.c;
        q1 rightBorderedView = fjVar.getRightBorderedView();
        rightBorderedView.a(-7829368, 0);
        rightBorderedView.setPadding(l3aVar2.b(2.0f), 0, 0, 0);
        rightBorderedView.setTextColor(-1118482);
        rightBorderedView.a(-1118482, l3aVar2.b(3.0f));
        rightBorderedView.setBackgroundColor(1711276032);
        StarsRatingView starsRatingView = efVar.f;
        starsRatingView.setStarSize(l3aVar2.b(12.0f));
        linearLayout.addView(starsRatingView);
        linearLayout.addView(textView4);
        linearLayout.setVisibility(8);
        textView2.setVisibility(8);
        efVar.addView(fjVar);
        efVar.addView(linearLayout);
        efVar.addView(textView2);
        efVar.addView(textView);
        efVar.addView(textView3);
        efVar.addView(efVar.j);
        efVar.addView(button);
        efVar.setBanner(xdaVar);
        int i5 = pointQ.x;
        int i6 = pointQ.y;
        wj wjVar = this.e;
        boolean z4 = wjVar.g;
        f5 f5Var = wjVar.e;
        q1 q1Var = wjVar.d;
        Button button2 = wjVar.c;
        l3a l3aVar3 = wjVar.f;
        int iMax = Math.max(i6, i5) / 8;
        p1 p1Var = wjVar.b;
        StarsRatingView starsRatingView2 = p1Var.h;
        TextView textView5 = p1Var.i;
        TextView textView6 = p1Var.g;
        LinearLayout linearLayout2 = p1Var.e;
        LinearLayout linearLayout3 = p1Var.f;
        linearLayout3.setOrientation(1);
        linearLayout3.setGravity(1);
        TextView textView7 = p1Var.b;
        textView7.setGravity(1);
        textView7.setTextColor(-16777216);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 1;
        l3a l3aVar4 = p1Var.j;
        layoutParams3.leftMargin = l3aVar4.b(8.0f);
        layoutParams3.rightMargin = l3aVar4.b(8.0f);
        textView7.setLayoutParams(layoutParams3);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 1;
        TextView textView8 = p1Var.c;
        textView8.setLayoutParams(layoutParams4);
        textView8.setLines(1);
        textView8.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        TextView textView9 = p1Var.d;
        textView9.setGravity(1);
        textView9.setTextColor(-16777216);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        if (z3) {
            textView9.setTextSize(2, 12.0f);
            textView9.setLines(2);
            textView9.setEllipsize(truncateAt);
            layoutParams5.topMargin = 0;
            layoutParams5.leftMargin = l3aVar4.b(4.0f);
            layoutParams5.rightMargin = l3aVar4.b(4.0f);
        } else {
            textView9.setTextSize(2, 16.0f);
            layoutParams5.topMargin = l3aVar4.b(8.0f);
            layoutParams5.leftMargin = l3aVar4.b(16.0f);
            layoutParams5.rightMargin = l3aVar4.b(16.0f);
        }
        layoutParams5.gravity = 1;
        textView9.setLayoutParams(layoutParams5);
        linearLayout2.setOrientation(0);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams6.gravity = 1;
        linearLayout2.setLayoutParams(layoutParams6);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(l3aVar4.b(73.0f), l3aVar4.b(12.0f));
        layoutParams7.topMargin = l3aVar4.b(4.0f);
        layoutParams7.rightMargin = l3aVar4.b(4.0f);
        starsRatingView2.setLayoutParams(layoutParams7);
        textView5.setTextColor(-6710887);
        textView5.setTextSize(2, 14.0f);
        textView6.setTextColor(-6710887);
        textView6.setGravity(1);
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams8.gravity = 1;
        if (z3) {
            layoutParams8.leftMargin = l3aVar4.b(4.0f);
            layoutParams8.rightMargin = l3aVar4.b(4.0f);
        } else {
            layoutParams8.leftMargin = l3aVar4.b(16.0f);
            layoutParams8.rightMargin = l3aVar4.b(16.0f);
        }
        layoutParams8.gravity = 1;
        textView6.setLayoutParams(layoutParams8);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams9.gravity = 17;
        p1Var.addView(linearLayout3, layoutParams9);
        linearLayout3.addView(textView7);
        linearLayout3.addView(textView8);
        linearLayout3.addView(linearLayout2);
        linearLayout3.addView(textView9);
        linearLayout3.addView(textView6);
        linearLayout2.addView(starsRatingView2);
        linearLayout2.addView(textView5);
        f5Var.getClass();
        ImageView imageView = f5Var.d;
        ImageView imageView2 = f5Var.c;
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams10.addRule(12, -1);
        RelativeLayout relativeLayout = f5Var.b;
        relativeLayout.setLayoutParams(layoutParams10);
        f5Var.getContext();
        imageView2.setImageBitmap(wfa.a(320, "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"));
        relativeLayout.addView(imageView2);
        relativeLayout.addView(imageView);
        f5Var.addView(relativeLayout);
        View view = new View(wjVar.getContext());
        view.setBackgroundColor(-5592406);
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, 1));
        int i7 = wj.k;
        f5Var.setId(i7);
        l3a l3aVar5 = f5Var.e;
        int i8 = iMax / 3;
        if (f5Var.f) {
            i8 = iMax / 5;
        }
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-2, i8);
        if (z3) {
            layoutParams11.setMargins(l3aVar5.b(24.0f), l3aVar5.b(4.0f), l3aVar5.b(24.0f), l3aVar5.b(8.0f));
        } else {
            layoutParams11.setMargins(l3aVar5.b(24.0f), l3aVar5.b(16.0f), l3aVar5.b(24.0f), l3aVar5.b(16.0f));
        }
        layoutParams11.addRule(15, -1);
        layoutParams11.addRule(20);
        imageView.setScaleType(ImageView.ScaleType.FIT_START);
        imageView.setLayoutParams(layoutParams11);
        RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(-2, i8);
        if (z3) {
            layoutParams12.setMargins(l3aVar5.b(8.0f), l3aVar5.b(4.0f), l3aVar5.b(8.0f), l3aVar5.b(8.0f));
        } else {
            layoutParams12.setMargins(l3aVar5.b(24.0f), l3aVar5.b(16.0f), l3aVar5.b(24.0f), l3aVar5.b(16.0f));
        }
        layoutParams12.addRule(15, -1);
        layoutParams12.addRule(21);
        imageView2.setScaleType(ImageView.ScaleType.FIT_END);
        imageView2.setLayoutParams(layoutParams12);
        imageView2.setOnClickListener(f5Var.g);
        button2.setPadding(l3aVar3.b(15.0f), 0, l3aVar3.b(15.0f), 0);
        button2.setMinimumWidth(l3aVar3.b(100.0f));
        button2.setTransformationMethod(null);
        button2.setSingleLine();
        button2.setEllipsize(truncateAt);
        q1Var.a(-7829368, 0);
        q1Var.setPadding(l3aVar3.b(2.0f), 0, 0, 0);
        q1Var.setTextColor(-1118482);
        q1Var.setMaxEms(5);
        q1Var.a(-1118482, l3aVar3.b(3.0f));
        q1Var.setBackgroundColor(1711276032);
        int i9 = wj.l;
        p1Var.setId(i9);
        if (z3) {
            p1Var.setPadding(l3aVar3.b(4.0f), l3aVar3.b(4.0f), l3aVar3.b(4.0f), l3aVar3.b(4.0f));
        } else {
            p1Var.setPadding(l3aVar3.b(16.0f), l3aVar3.b(16.0f), l3aVar3.b(16.0f), l3aVar3.b(16.0f));
        }
        RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams13.addRule(2, i7);
        p1Var.setLayoutParams(layoutParams13);
        RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams(-2, -2);
        if (z3) {
            iB = l3aVar3.b(8.0f);
            f = 16.0f;
        } else {
            f = 16.0f;
            iB = l3aVar3.b(16.0f);
        }
        layoutParams14.setMargins(l3aVar3.b(f), iB, l3aVar3.b(f), l3aVar3.b(4.0f));
        layoutParams14.addRule(21, -1);
        q1Var.setLayoutParams(layoutParams14);
        RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(-2, z4 ? l3aVar3.b(64.0f) : l3aVar3.b(52.0f));
        layoutParams15.addRule(14, -1);
        layoutParams15.addRule(8, i9);
        if (z3) {
            layoutParams15.bottomMargin = (int) (((double) (-l3aVar3.b(52.0f))) / 1.5d);
        } else {
            layoutParams15.bottomMargin = (-l3aVar3.b(52.0f)) / 2;
        }
        button2.setLayoutParams(layoutParams15);
        RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(-1, iMax);
        layoutParams16.addRule(12, -1);
        f5Var.setLayoutParams(layoutParams16);
        wjVar.addView(p1Var);
        wjVar.addView(view);
        wjVar.addView(q1Var);
        wjVar.addView(f5Var);
        wjVar.addView(button2);
        wjVar.setClickable(true);
        if (z4) {
            button2.setTextSize(2, 32.0f);
        } else {
            button2.setTextSize(2, 22.0f);
        }
        wjVar.setBanner(xdaVar);
        zf zfVar = this.f;
        zfVar.f();
        zfVar.d(xdaVar, 0);
        h14 h14Var2 = xdaVar.R;
        if (h14Var2 == null || (bitmap = (Bitmap) h14Var2.d) == null) {
            Bitmap bitmapA = kv9.a(this.s);
            if (bitmapA != null) {
                f6Var2.a(bitmapA, false);
            }
        } else {
            f6Var2.a(bitmap, true);
        }
        h14 h14Var3 = xdaVar.q;
        if (h14Var3 != null) {
            i2 = h14Var3.b;
            i = h14Var3.c;
        } else {
            i = 0;
            i2 = 0;
        }
        RelativeLayout.LayoutParams layoutParams17 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams17.bottomMargin = l3aVar.b(4.0f);
        if (i2 != 0 && i != 0) {
            int iB2 = (int) (l3aVar.b(64.0f) * (i / i2));
            layoutParams17.width = this.o;
            layoutParams17.height = iB2;
            if (!z3) {
                layoutParams17.bottomMargin = (-iB2) / 2;
            }
        }
        layoutParams17.addRule(8, z);
        layoutParams17.setMarginStart(l3aVar.b(20.0f));
        zh zhVar = this.d;
        zhVar.setLayoutParams(layoutParams17);
        if (h14Var3 != null) {
            zhVar.setImageBitmap((Bitmap) h14Var3.d);
        }
        if (khaVar != null && khaVar.Y) {
            c(true);
            post(new rz(this, 4));
        }
        if (khaVar != null) {
            this.u = khaVar.z;
            if (khaVar.X) {
                f6Var = f6Var3;
                f6Var.a(this.n, false);
                f6Var.setContentDescription("sound_off");
            } else {
                f6Var = f6Var3;
                f6Var.a(this.m, false);
                f6Var.setContentDescription("sound_on");
            }
        } else {
            f6Var = f6Var3;
        }
        f6Var.setOnClickListener(new pk7(this, 1));
        q qVar = xdaVar.H;
        m mVar = this.l;
        if (qVar == null) {
            mVar.setVisibility(8);
        } else {
            mVar.setImageBitmap((Bitmap) qVar.a.d);
            mVar.setOnClickListener(new View.OnClickListener() { // from class: ega
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i10 = wf.z;
                    l.a aVar = this.b.t;
                    if (aVar != null) {
                        ((w2.b) aVar).a();
                    }
                }
            });
        }
    }

    @Override // com.my.target.l
    public void setClickArea(t2a t2aVar) {
        if (this.y) {
            setClickAreaActual(t2aVar);
        } else {
            setClickAreaLegacy(t2aVar);
        }
    }

    public void setClickAreaActual(t2a t2aVar) {
        StringBuilder sb = new StringBuilder("PromoDefaultStyleView: Apply click area ");
        int i = t2aVar.q;
        boolean z2 = t2aVar.m;
        sb.append(i);
        sb.append(" to view");
        y14.r(null, sb.toString());
        boolean z3 = t2aVar.c;
        c1 c1Var = this.w;
        zh zhVar = this.d;
        if (z3 || z2) {
            zhVar.setOnTouchListener(c1Var);
            zhVar.setOnClickListener(new View.OnClickListener() { // from class: bga
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i2 = wf.z;
                    wf wfVar = this.b;
                    wfVar.c.a(view, new up9(4, wfVar.x));
                }
            });
        } else {
            zhVar.setOnClickListener(null);
        }
        zf zfVar = this.f;
        if (z2 || t2aVar.d) {
            zfVar.getImageView().setOnTouchListener(c1Var);
            zfVar.getImageView().setOnClickListener(new View.OnClickListener() { // from class: cga
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i2 = wf.z;
                    wf wfVar = this.b;
                    wfVar.c.a(view, new up9(8, wfVar.x));
                }
            });
        }
        if (z2 || t2aVar.n) {
            zfVar.getClickableLayout().setOnTouchListener(c1Var);
            zfVar.getClickableLayout().setOnClickListener(new View.OnClickListener() { // from class: dga
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i2 = wf.z;
                    wf wfVar = this.b;
                    wfVar.c.a(view, new up9(8192, wfVar.x));
                }
            });
        } else {
            zfVar.getClickableLayout().setOnClickListener(zfVar.e);
        }
        wj wjVar = this.e;
        ml0 ml0Var = this.b;
        wjVar.a(t2aVar, ml0Var);
        this.g.b(t2aVar, ml0Var);
    }

    public void setClickAreaLegacy(t2a t2aVar) {
        StringBuilder sb = new StringBuilder("PromoDefaultStyleView: Apply click area ");
        int i = t2aVar.q;
        boolean z2 = t2aVar.m;
        sb.append(i);
        sb.append(" to view");
        y14.r(null, sb.toString());
        nk7 nk7Var = new nk7(this, 1);
        this.d.setOnClickListener((t2aVar.c || z2) ? nk7Var : null);
        zf zfVar = this.f;
        zfVar.getImageView().setOnClickListener((z2 || t2aVar.d) ? nk7Var : null);
        if (z2 || t2aVar.n) {
            zfVar.getClickableLayout().setOnClickListener(nk7Var);
        } else {
            zfVar.getClickableLayout().setOnClickListener(zfVar.e);
        }
        wj wjVar = this.e;
        ml0 ml0Var = this.b;
        wjVar.a(t2aVar, ml0Var);
        this.g.b(t2aVar, ml0Var);
    }

    @Override // com.my.target.l
    public void setInterstitialPromoViewListener(l.a aVar) {
        this.t = aVar;
    }

    @Override // com.my.target.c
    public void setMediaListener(r0.a aVar) {
        this.v = aVar;
        zf zfVar = this.f;
        zfVar.setInterstitialPromoViewListener(aVar);
        zfVar.d.setOnClickListener(zfVar.e);
    }

    @Override // com.my.target.c
    public void setTimeChanged(float f) {
        fk fkVar = this.i;
        fkVar.setVisibility(0);
        float f2 = this.u;
        if (f2 > 0.0f) {
            fkVar.setProgress(f / f2);
        }
        fkVar.setDigit((int) ((this.u - f) + 1.0f));
    }

    @Override // com.my.target.c
    public final void a(xda xdaVar) {
        this.k.setVisibility(8);
        this.h.setVisibility(0);
        a(false);
        zf zfVar = this.f;
        zfVar.b();
        zfVar.c(xdaVar);
    }

    @Override // com.my.target.c
    public final boolean b() {
        return this.f.g();
    }

    @Override // com.my.target.l
    public final void c() {
        this.h.setVisibility(0);
    }

    @Override // com.my.target.c
    public final void a() {
        zf zfVar = this.f;
        zfVar.b.setVisibility(8);
        zfVar.h.setVisibility(8);
    }

    @Override // com.my.target.c
    public final void a(int i) {
        n nVar = this.f.l;
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
