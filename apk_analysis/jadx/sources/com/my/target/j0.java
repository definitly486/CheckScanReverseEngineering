package com.my.target;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import defpackage.h14;
import defpackage.l3a;
import defpackage.om;
import defpackage.q31;
import defpackage.t2a;
import defpackage.vy9;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public final class j0 implements t1 {
    public final Handler b = new Handler(Looper.getMainLooper());
    public final om c;
    public final m2.a d;
    public final vy9 e;
    public final o f;
    public final lb g;
    public long h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.view.View, com.my.target.i0] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r11v10, types: [android.view.View, android.widget.ImageView] */
    /* JADX WARN: Type inference failed for: r11v12, types: [android.view.View, android.widget.Button] */
    /* JADX WARN: Type inference failed for: r11v16, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r11v18, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r11v24, types: [android.view.View, com.my.target.zh] */
    /* JADX WARN: Type inference failed for: r11v26, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r11v28 */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v43, types: [android.view.View, android.widget.ImageView] */
    /* JADX WARN: Type inference failed for: r11v45, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r11v47, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r11v49, types: [android.view.View, android.widget.Button] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v55, types: [android.view.View, com.my.target.zh] */
    /* JADX WARN: Type inference failed for: r11v57, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r11v6, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.my.target.m2$a] */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.view.View, android.view.View$OnClickListener, com.my.target.lb] */
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
    public j0(s sVar, vy9 vy9Var, m2.a aVar) {
        this.e = vy9Var;
        this.d = aVar;
        Context context = sVar.b;
        ?? lbVar = new lb(new i0(context), new r1(context), new i6(context), this, sVar.b);
        this.g = lbVar;
        c();
        boolean z = vy9Var.Q.c;
        t2a t2aVar = vy9Var.r;
        lbVar.f = z;
        ?? r0 = lbVar.b;
        if (z) {
            c1 c1Var = lbVar.n;
            lbVar.setOnTouchListener(c1Var);
            r0.setOnTouchListener(c1Var);
            s3 s3Var = lbVar.g;
            if (s3Var != null) {
                s3Var.getTitleTextView().setOnTouchListener(c1Var);
                lbVar.g.getDescriptionTextView().setOnTouchListener(c1Var);
                lbVar.g.getCtaButton().setOnTouchListener(c1Var);
                r0.getAdsIcon().setOnTouchListener(c1Var);
                if (lbVar.g.getDomainTextView() != null && lbVar.g.getLogoImageView() != null) {
                    lbVar.g.getLogoImageView().setOnTouchListener(c1Var);
                    lbVar.g.getDomainTextView().setOnTouchListener(c1Var);
                }
            }
        }
        boolean z2 = t2aVar.m;
        boolean z3 = t2aVar.j;
        boolean z4 = t2aVar.g;
        if (z2) {
            lbVar.setOnClickListener(lbVar);
            r0.setOnClickListener(lbVar);
            r0.getAdsIcon().setOnClickListener(lbVar);
            s3 s3Var2 = lbVar.g;
            if (s3Var2 != null) {
                s3Var2.getTitleTextView().setOnClickListener(lbVar);
                lbVar.g.getDescriptionTextView().setOnClickListener(lbVar);
                lbVar.g.getCtaButton().setOnClickListener(lbVar);
                if (lbVar.g.getDomainTextView() != null && lbVar.g.getLogoImageView() != null) {
                    lbVar.g.getLogoImageView().setOnClickListener(lbVar);
                    lbVar.g.getDomainTextView().setOnClickListener(lbVar);
                }
            }
        } else {
            lbVar.setOnClickListener(t2aVar.l ? lbVar : 0);
            r0.setOnClickListener((t2aVar.h || t2aVar.i) ? lbVar : 0);
            r0.getAdsIcon().setOnClickListener(t2aVar.c ? lbVar : 0);
            s3 s3Var3 = lbVar.g;
            if (s3Var3 != null) {
                s3Var3.getCtaButton().setOnClickListener(z4 ? lbVar : 0);
                lbVar.g.getCtaButton().setEnabled(z4);
                lbVar.g.getTitleTextView().setOnClickListener(t2aVar.a ? lbVar : 0);
                lbVar.g.getDescriptionTextView().setOnClickListener(t2aVar.b ? lbVar : 0);
                if (lbVar.g.getDomainTextView() != null && lbVar.g.getLogoImageView() != null) {
                    lbVar.g.getLogoImageView().setOnClickListener(z3 ? lbVar : 0);
                    lbVar.g.getDomainTextView().setOnClickListener(z3 ? lbVar : 0);
                }
            }
        }
        this.c = new om(this, 4);
        q qVar = vy9Var.H;
        boolean z5 = true;
        if (qVar == null) {
            lbVar.setShowingChoiceButton(false);
        } else {
            lbVar.setShowingChoiceButton(true);
            if (qVar.c != null) {
                o oVar = new o(qVar, vy9Var.d(), lbVar.getContext());
                this.f = oVar;
                oVar.e = new q31(this, vy9Var);
            }
        }
        if (vy9Var.V) {
            long j = (long) (vy9Var.S * 1000.0f);
            this.h = j;
            if (j > 0) {
                y14.r(null, "InterstitialPresenterS4: Banner will be allowed to close in " + this.h + " millis");
                b();
            } else {
                y14.r(null, "InterstitialPresenterS4: CloseDelayState.DISABLED: Banner is allowed to close");
                a();
            }
            aVar.a.i = z5;
            aVar.o(vy9Var, lbVar);
        }
        lbVar.d.getProgressFrame().setVisibility(8);
        z5 = false;
        aVar.a.i = z5;
        aVar.o(vy9Var, lbVar);
    }

    public final void a() {
        r1 r1Var = this.g.d;
        r1Var.getCloseButton().setVisibility(0);
        r1Var.getSkipButton().setVisibility(8);
        r1Var.getProgressFrame().setVisibility(8);
        this.b.removeCallbacks(this.c);
        m2.a aVar = this.d;
        aVar.n(0.0d);
        aVar.a.i = true;
    }

    public final void b() {
        Handler handler = this.b;
        om omVar = this.c;
        handler.removeCallbacks(omVar);
        handler.postDelayed(omVar, 200L);
        this.d.n(this.h / 1000.0d);
        this.g.setRemainingAllowCloseDelay((int) ((this.h / 1000) + 1));
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00b0  */
    public final void c() {
        float fD;
        int i;
        s3 uhVar;
        LinearLayout.LayoutParams layoutParams;
        LinearLayout.LayoutParams layoutParams2;
        vy9 vy9Var = this.e;
        h14 h14Var = vy9Var.a0;
        h14 h14Var2 = vy9Var.Z;
        lb lbVar = this.g;
        lbVar.j = h14Var;
        lbVar.i = h14Var2;
        i6 i6Var = lbVar.k;
        Point pointQ = l3a.q(lbVar.getContext());
        int i2 = pointQ.x;
        int i3 = pointQ.y;
        if (i2 > 0 && i3 > 0) {
            h14 h14Var3 = ((float) i2) / ((float) i3) > 1.0f ? lbVar.j : lbVar.i;
            if (h14Var3 == null && (h14Var3 = lbVar.j) == null) {
                h14Var3 = lbVar.i;
            }
            if (h14Var3 != null) {
                i6Var.getImageView().setImageData(h14Var3);
                int i4 = h14Var3.b;
                int i5 = h14Var3.c;
                Point pointL = l3a.l(lbVar.getContext());
                int i6 = pointL.x;
                int i7 = pointL.y;
                float f = i4;
                float f2 = f / i5;
                if (f2 != 1.0f) {
                    if (lbVar.l == 2) {
                        fD = l3a.d(282, lbVar.getContext());
                        if (f2 > 1.0f) {
                            float f3 = (i6 / 3.0f) * 2.0f;
                            i6 = (int) (i7 * f2);
                            float f4 = i6;
                            if (f4 < fD) {
                                i = (int) fD;
                            } else if (f4 > f3) {
                                i = (int) f3;
                            }
                            i7 = (int) (i / f2);
                            i6 = i;
                        } else {
                            i6 = (int) (i7 * f2);
                            if (i6 < fD) {
                            }
                        }
                    } else if (i5 > l3a.d(693, lbVar.getContext())) {
                        float f5 = (i7 * 85.0f) / 100.0f;
                        i7 = (int) f5;
                        fD = f5 * (f / f5);
                    } else {
                        i7 = (int) (i6 / f2);
                    }
                    i6 = (int) fD;
                } else if (i6 < i7) {
                    i7 = (int) (i6 / f2);
                } else {
                    fD = i7 / f2;
                    i6 = (int) fD;
                }
                LinearLayout linearLayout = lbVar.c;
                s3 s3Var = lbVar.g;
                if (s3Var != null) {
                    linearLayout.removeView(s3Var);
                }
                Point pointQ2 = l3a.q(lbVar.getContext());
                int i8 = pointQ2.x;
                int i9 = pointQ2.y;
                if (i8 <= 0 || i9 <= 0) {
                    uhVar = null;
                } else {
                    int i10 = lbVar.getContext().getResources().getConfiguration().orientation;
                    if (((Activity) lbVar.getContext()).isInMultiWindowMode()) {
                        uhVar = new uh(lbVar.getContext());
                    } else if (i10 == 2) {
                        uhVar = i6 < (i8 / 3) * 2 ? new l1(lbVar.getContext()) : new ch(lbVar.getContext());
                    } else {
                        int i11 = i9 / 2;
                        uhVar = ((i7 <= i11 || i7 >= (i9 / 4) * 3) && i7 >= i11) ? new uh(lbVar.getContext()) : new l1(lbVar.getContext());
                    }
                }
                lbVar.g = uhVar;
                if (uhVar != null) {
                    if (((Activity) lbVar.getContext()).isInMultiWindowMode()) {
                        layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                    } else {
                        int i12 = lbVar.l;
                        s3 s3Var2 = lbVar.g;
                        if (i12 == 2) {
                            if (s3Var2 instanceof ch) {
                                layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
                            } else {
                                layoutParams2 = new LinearLayout.LayoutParams(-2, -1);
                                layoutParams2.weight = 1.0f;
                            }
                        } else if (s3Var2 instanceof uh) {
                            layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
                        } else {
                            layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                            layoutParams2.weight = 1.0f;
                        }
                    }
                    uhVar.setLayoutParams(layoutParams2);
                    linearLayout.addView(lbVar.g);
                }
                if (((Activity) lbVar.getContext()).isInMultiWindowMode()) {
                    layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                } else {
                    layoutParams = lbVar.l == 2 ? new LinearLayout.LayoutParams(i6, -1) : new LinearLayout.LayoutParams(-1, i7);
                }
                i6Var.setLayoutParams(layoutParams);
            }
        }
        q qVar = vy9Var.H;
        h14 h14Var4 = qVar != null ? qVar.a : null;
        String strD = vy9Var.d();
        i0 i0Var = lbVar.b;
        i0Var.setVisibility((h14Var4 == null && TextUtils.isEmpty(strD)) ? 8 : 0);
        i0Var.getAgeRestrictionsTextView().setText(strD);
        if (h14Var4 != null) {
            i0Var.getAdsIcon().setImageBitmap((Bitmap) h14Var4.d);
        }
        lbVar.setTitleAction(vy9Var.g());
        lbVar.setTitle(vy9Var.e);
        lbVar.setDescription(vy9Var.c);
        h14 h14Var5 = vy9Var.q;
        String str = vy9Var.l;
        s3 s3Var3 = lbVar.g;
        if (s3Var3 instanceof uh) {
            if (TextUtils.isEmpty(str) && h14Var5 == null) {
                i6Var.getDomainContainer().setVisibility(8);
                return;
            }
            i6Var.getDomainTextView().setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
            i6Var.getDomainTextView().setText(str);
            i6Var.getLogoImageView().setVisibility(h14Var5 == null ? 8 : 0);
            i6Var.getLogoImageView().setImageData(h14Var5);
            return;
        }
        if (s3Var3 != null) {
            if (s3Var3.getDomainTextView() != null) {
                lbVar.g.getDomainTextView().setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
                lbVar.g.getDomainTextView().setText(str);
            }
            if (lbVar.g.getLogoImageView() != null) {
                lbVar.g.getLogoImageView().setVisibility(h14Var5 == null ? 8 : 0);
                lbVar.g.getLogoImageView().setImageData(h14Var5);
            }
        }
    }

    @Override // com.my.target.t1
    public final void destroy() {
        this.b.removeCallbacks(this.c);
    }

    @Override // com.my.target.t1
    public final View getCloseButton() {
        return this.g.getCloseButton();
    }

    @Override // com.my.target.t1
    public final View i() {
        return this.g;
    }

    @Override // com.my.target.t1
    public final void pause() {
    }

    @Override // com.my.target.t1
    public final void resume() {
    }

    @Override // com.my.target.t1
    public final void stop() {
    }
}
