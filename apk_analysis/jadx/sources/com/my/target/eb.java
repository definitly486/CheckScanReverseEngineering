package com.my.target;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.bj;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.fo9;
import defpackage.gia;
import defpackage.h14;
import defpackage.ix9;
import defpackage.r2a;
import defpackage.t2a;
import defpackage.up9;
import defpackage.uq;
import defpackage.v2a;
import defpackage.xda;
import defpackage.yu9;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class eb extends LinearLayout implements p, View.OnClickListener {
    public static final /* synthetic */ int i = 0;
    public final ij b;
    public final wh c;
    public final d2 d;
    public final z1 e;
    public e6a f;
    public final c1 g;
    public boolean h;

    public eb(Context context, z1 z1Var, p.a aVar, d2.b bVar) {
        super(context);
        this.f = new d6a();
        this.g = new c1(new uq(this));
        this.h = false;
        this.e = z1Var;
        yu9 yu9Var = new yu9(context);
        setOrientation(1);
        setBackgroundColor(yu9Var.a.get(yu9.r));
        ij ijVar = new ij(context);
        ijVar.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        ijVar.getButtonsView().getCloseButton().setOnClickListener(this);
        ijVar.getButtonsView().getAdChoicesButton().setOnClickListener(this);
        this.b = ijVar;
        addView(ijVar);
        wh whVar = new wh(context, aVar, bVar);
        whVar.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.c = whVar;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        d2 d2Var = new d2(context, bVar);
        d2Var.setLayoutParams(layoutParams);
        this.d = d2Var;
        if (context.getResources().getConfiguration().orientation == 2) {
            addView(d2Var);
        } else {
            addView(whVar);
        }
        e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r2v11, types: [android.view.View, com.my.target.wh] */
    /* JADX WARN: Type inference failed for: r2v13, types: [android.view.View, com.my.target.zh] */
    /* JADX WARN: Type inference failed for: r2v14, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r2v15, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r2v16, types: [android.view.View, com.my.target.zh] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View, android.view.View$OnClickListener, com.my.target.eb] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
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
        c1 c1Var = this.g;
        setOnTouchListener(c1Var);
        ij ijVar = this.b;
        ijVar.setOnTouchListener(c1Var);
        ijVar.getLogoIcon().setOnTouchListener(c1Var);
        ijVar.getTitleTextView().setOnTouchListener(c1Var);
        ijVar.getDomainTextView().setOnTouchListener(c1Var);
        ijVar.getAdsIcon().setOnTouchListener(c1Var);
        ijVar.getButtonsView().getCloseButton().setOnTouchListener(c1Var);
        ijVar.getButtonsView().getAdChoicesButton().setOnTouchListener(c1Var);
        ijVar.getAgeRestrictionTextView().setOnTouchListener(c1Var);
        d2 d2Var = this.d;
        d2Var.setOnTouchListener(c1Var);
        d2Var.getMoreButton().setOnTouchListener(c1Var);
        ?? r2 = this.c;
        r2.setOnTouchListener(c1Var);
        r2.getAdCardView().getDescriptionTextView().setOnTouchListener(c1Var);
        r2.getAdCardView().getAdImage().setOnTouchListener(c1Var);
        boolean z = t2aVar.m;
        boolean z2 = t2aVar.l;
        if (z) {
            setOnClickListener(this);
            ijVar.getAgeRestrictionTextView().setOnClickListener(this);
            ijVar.getTitleTextView().setOnClickListener(this);
            ijVar.getLogoIcon().setOnClickListener(this);
            r2.setOnClickListener(this);
            r2.getAdCardView().getAdImage().setOnClickListener(this);
            return;
        }
        setOnClickListener(z2 ? this : 0);
        r2.setOnClickListener(z2 ? this : 0);
        r2.getAdCardView().getAdImage().setOnClickListener(t2aVar.d ? this : 0);
        ijVar.getTitleTextView().setOnClickListener(t2aVar.a ? this : 0);
        ijVar.getDomainTextView().setOnClickListener(t2aVar.j ? this : 0);
        ijVar.getLogoIcon().setOnClickListener(t2aVar.c ? this : 0);
        ?? ageRestrictionTextView = ijVar.getAgeRestrictionTextView();
        ?? r5 = this;
        if (!t2aVar.h) {
            r5 = 0;
        }
        ageRestrictionTextView.setOnClickListener(r5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.view.View, com.my.target.zh] */
    /* JADX WARN: Type inference failed for: r1v6, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.view.View, com.my.target.wh] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r2v5, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r2v6, types: [android.view.View, com.my.target.zh] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v10, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.view.View, android.view.View$OnClickListener, com.my.target.eb] */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View$OnClickListener] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
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
        boolean z2 = t2aVar.l;
        ?? r2 = this.c;
        if (z) {
            setOnClickListener(this);
            r2.setOnClickListener(this);
            r2.getAdCardView().getAdImage().setOnClickListener(this);
            return;
        }
        setOnClickListener(z2 ? this : 0);
        r2.setOnClickListener(z2 ? this : 0);
        r2.getAdCardView().getAdImage().setOnClickListener(t2aVar.d ? this : 0);
        ij ijVar = this.b;
        ijVar.getTitleTextView().setOnClickListener(t2aVar.a ? this : 0);
        ijVar.getDomainTextView().setOnClickListener(t2aVar.j ? this : 0);
        ijVar.getLogoIcon().setOnClickListener(t2aVar.c ? this : 0);
        ?? ageRestrictionTextView = ijVar.getAgeRestrictionTextView();
        ?? r4 = this;
        if (!t2aVar.h) {
            r4 = 0;
        }
        ageRestrictionTextView.setOnClickListener(r4);
    }

    @Override // com.my.target.p
    public final void a(List list, ix9 ix9Var) {
        wh whVar = this.c;
        y1 y1Var = whVar.b;
        fo9 fo9Var = ix9Var.a;
        if (fo9Var.p == null) {
            return;
        }
        y1Var.setCard(fo9Var);
        y1Var.setOnClickListeners(whVar.d);
        o2 o2Var = whVar.c;
        o2Var.i = list;
        for (int i2 = 0; i2 < o2Var.i.size(); i2++) {
            o2Var.notifyItemChanged(i2, o2Var.i.get(i2));
        }
    }

    @Override // com.my.target.z0
    public final void b() {
        ij ijVar = this.b;
        ijVar.getButtonsView().getCloseButton().setVisibility(0);
        ijVar.getButtonsView().getProgressFrame().setVisibility(8);
    }

    @Override // com.my.target.z0
    public final void c() {
        this.b.getButtonsView().getProgressFrame().setVisibility(8);
    }

    @Override // com.my.target.z0
    public final void d() {
    }

    public final void e() {
        yu9 yu9Var = new yu9(getContext());
        int i2 = yu9.r;
        SparseIntArray sparseIntArray = yu9Var.a;
        setBackgroundColor(sparseIntArray.get(i2));
        ij ijVar = this.b;
        TextView ageRestrictionTextView = ijVar.getAgeRestrictionTextView();
        int i3 = yu9.q;
        ageRestrictionTextView.setTextColor(sparseIntArray.get(i3));
        ijVar.getDomainTextView().setTextColor(sparseIntArray.get(i3));
        ijVar.getTitleTextView().setTextColor(sparseIntArray.get(yu9.s));
    }

    @Override // com.my.target.z0
    public View getCloseButton() {
        return this.b.getButtonsView().getCloseButton();
    }

    @Override // com.my.target.z0
    public LinearLayout getTopBar() {
        return null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2;
        boolean z = this.h;
        wh whVar = this.c;
        ij ijVar = this.b;
        z1 z1Var = this.e;
        if (!z) {
            if (view == ijVar.getButtonsView().getCloseButton()) {
                z1Var.e();
                return;
            }
            if (view == ijVar.getLogoIcon()) {
                z1Var.d();
                return;
            }
            if (view == ijVar.getButtonsView().getAdChoicesButton()) {
                z1Var.p();
                return;
            } else if (view == whVar.getAdCardView()) {
                z1Var.c(2, new gia());
                return;
            } else {
                z1Var.c(1, new gia());
                return;
            }
        }
        if (view == ijVar.getButtonsView().getCloseButton()) {
            z1Var.e();
            return;
        }
        if (view == ijVar.getLogoIcon()) {
            z1Var.d();
            return;
        }
        if (view == ijVar.getButtonsView().getAdChoicesButton()) {
            z1Var.p();
            return;
        }
        if (view == whVar.getAdCardView()) {
            z1Var.c(2, new up9(64, this.f));
            return;
        }
        if (view == ijVar.getTitleTextView()) {
            i2 = 1;
        } else if (view == ijVar.getAgeRestrictionTextView()) {
            i2 = 128;
        } else if (view == ijVar.getLogoIcon()) {
            i2 = 4;
        } else {
            i2 = view == ijVar.getDomainTextView() ? 512 : 2048;
        }
        z1Var.c(1, new up9(i2, this.f));
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        wh whVar = this.c;
        removeView(whVar);
        d2 d2Var = this.d;
        removeView(d2Var);
        if (configuration.orientation == 2) {
            addView(d2Var);
        } else {
            addView(whVar);
        }
        e();
    }

    @Override // com.my.target.z0
    public void setBanner(xda xdaVar) {
        h14 h14Var = xdaVar.q;
        ij ijVar = this.b;
        if (h14Var != null) {
            ijVar.getLogoIcon().setImageBitmap(r2a.a((Bitmap) h14Var.d));
        }
        ijVar.getTitleTextView().setText(xdaVar.e);
        ijVar.getDomainTextView().setText(xdaVar.m.equals("store") ? xdaVar.j : xdaVar.l);
        TextView ageRestrictionTextView = ijVar.getAgeRestrictionTextView();
        String str = xdaVar.g;
        String str2 = xdaVar.n;
        String strC = TextUtils.isEmpty(str2) ? "" : bj.c("", str2);
        if (!TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str)) {
                strC = strC.concat(" ");
            }
            strC = bj.c(strC, str);
        }
        ageRestrictionTextView.setText(strC);
        if (xdaVar.b0 != null) {
            ijVar.getAdsIcon().setImageBitmap((Bitmap) xdaVar.b0.d);
        }
        this.d.setData(xdaVar.Y);
        boolean z = xdaVar.Q.c;
        t2a t2aVar = xdaVar.r;
        this.h = z;
        if (z) {
            setClickArea(t2aVar);
        } else {
            setClickAreaLegacy(t2aVar);
        }
    }

    @Override // com.my.target.z0
    public void setDoubleBanners(List<v2a> list) {
    }

    @Override // com.my.target.z0
    public void setRemainingAllowCloseDelay(int i2) {
        this.b.getButtonsView().getProgress().setText(String.valueOf(i2));
    }

    @Override // com.my.target.z0
    public final View a() {
        return this;
    }
}
