package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import defpackage.h14;
import defpackage.jj2;
import defpackage.t2a;
import defpackage.wv9;
import defpackage.y14;
import defpackage.yf2;

/* JADX INFO: loaded from: classes4.dex */
public final class b0 implements t1 {
    public final ib b;
    public final wv9 c;
    public long d;
    public final Handler e = new Handler(Looper.getMainLooper());
    public final jj2 f;
    public final o g;
    public final m2.a h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.my.target.m2$a] */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.view.View, android.view.View$OnClickListener, com.my.target.ib] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.view.View, com.my.target.i0] */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r9v13, types: [android.view.View, android.widget.ImageView] */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v30, types: [android.view.View, android.widget.ImageView] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public b0(s sVar, wv9 wv9Var, m2.a aVar) {
        this.h = aVar;
        this.c = wv9Var;
        Context context = sVar.b;
        ?? ibVar = new ib(new i0(context), new r1(context), new e1(context), this, sVar.b);
        this.b = ibVar;
        ibVar.setHtmlSource(wv9Var);
        q qVar = wv9Var.H;
        h14 h14Var = qVar != null ? qVar.a : null;
        String strB = b();
        boolean z = false;
        int i = (h14Var == null && TextUtils.isEmpty(strB)) ? 8 : 0;
        ?? r5 = ibVar.c;
        r5.setVisibility(i);
        r5.getAgeRestrictionsTextView().setText(strB);
        if (h14Var != null) {
            r5.getAdsIcon().setImageBitmap((Bitmap) h14Var.d);
        }
        boolean z2 = wv9Var.Q.c;
        t2a t2aVar = wv9Var.r;
        ibVar.f = z2;
        if (z2) {
            c1 c1Var = ibVar.g;
            ibVar.setOnTouchListener(c1Var);
            r5.setOnTouchListener(c1Var);
        }
        if (t2aVar.m) {
            ibVar.setOnClickListener(ibVar);
            r5.setOnClickListener(ibVar);
            r5.getAdsIcon().setOnClickListener(ibVar);
        } else {
            ibVar.setOnClickListener(t2aVar.l ? ibVar : 0);
            r5.setOnClickListener((t2aVar.h || t2aVar.i) ? ibVar : 0);
            r5.getAdsIcon().setOnClickListener(t2aVar.c ? ibVar : 0);
        }
        this.f = new jj2(this, 5);
        q qVar2 = wv9Var.H;
        if (qVar2 == null) {
            ibVar.setShowingChoiceButton(false);
        } else {
            ibVar.setShowingChoiceButton(true);
            if (qVar2.c != null) {
                o oVar = new o(qVar2, b(), ibVar.getContext());
                this.g = oVar;
                oVar.e = new yf2(this, wv9Var);
            }
        }
        if (wv9Var.V) {
            long j = (long) (wv9Var.S * 1000.0f);
            this.d = j;
            if (j > 0) {
                y14.r(null, "InterstitialPresenterS4: Banner will be allowed to close in " + this.d + " millis");
                c();
            } else {
                y14.r(null, "InterstitialPresenterS4: CloseDelayState.DISABLED: Banner is allowed to close");
                a();
                z = true;
            }
        } else {
            ibVar.d.getProgressFrame().setVisibility(8);
        }
        aVar.a.i = z;
        aVar.o(wv9Var, ibVar);
    }

    public final void a() {
        r1 r1Var = this.b.d;
        r1Var.getCloseButton().setVisibility(0);
        r1Var.getSkipButton().setVisibility(8);
        r1Var.getProgressFrame().setVisibility(8);
        this.e.removeCallbacks(this.f);
        m2.a aVar = this.h;
        aVar.n(0.0d);
        aVar.a.i = true;
    }

    public final String b() {
        wv9 wv9Var = this.c;
        String strConcat = "";
        if (!TextUtils.isEmpty(wv9Var.n)) {
            strConcat = "" + wv9Var.n;
        }
        if (TextUtils.isEmpty(wv9Var.g)) {
            return strConcat;
        }
        if (!TextUtils.isEmpty(strConcat)) {
            strConcat = strConcat.concat(" ");
        }
        return strConcat + wv9Var.g;
    }

    public final void c() {
        Handler handler = this.e;
        jj2 jj2Var = this.f;
        handler.removeCallbacks(jj2Var);
        handler.postDelayed(jj2Var, 200L);
        this.h.n(this.d / 1000.0d);
        this.b.setRemainingAllowCloseDelay((int) ((this.d / 1000) + 1));
    }

    @Override // com.my.target.t1
    public final void destroy() {
        this.e.removeCallbacks(this.f);
    }

    @Override // com.my.target.t1
    public final View getCloseButton() {
        return this.b.getCloseButton();
    }

    @Override // com.my.target.t1
    public final View i() {
        return this.b;
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
