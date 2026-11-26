package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import com.yandex.mobile.ads.R$attr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class mh2 extends g03 implements wh1, r55 {
    public final /* synthetic */ xh1 l;

    public /* synthetic */ mh2(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, R$attr.monetization_ads_divkit_divImageStyle);
    }

    @Override // yads.r16
    public final void a(View view) {
        this.l.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.l.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.l.d;
    }

    @Override // yads.s51
    public final void d() {
        this.l.d();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        l51 l51VarI = i();
        if (l51VarI == null) {
            super.draw(canvas);
            return;
        }
        int iSave = canvas.save();
        try {
            l51VarI.a(canvas);
            super.draw(canvas);
            l51VarI.b(canvas);
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    @Override // yads.s51
    public final void e() {
        this.l.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.l.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.l.b.g();
    }

    @Override // android.view.View
    public final int getBaseline() {
        return getMeasuredHeight() - getPaddingBottom();
    }

    @Override // yads.s51
    public final l51 i() {
        return this.l.a.a;
    }

    public final mv1 j() {
        getChildCount();
        View childAt = getChildAt(0);
        if (childAt == null || !(childAt instanceof mv1)) {
            return null;
        }
        return (mv1) childAt;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.l.h();
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        super.release();
        j();
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.l.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.l.a.setBorder(ttVar, f51Var, view);
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.l.a.setNeedClipping(z);
    }

    @Override // yads.wh1
    public void setDiv(kq0 kq0Var) {
        this.l.c = kq0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (kq0) this.l.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.l.b();
    }

    public mh2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.l.a(tp0Var);
    }

    public mh2(Context context) {
        this(context, null, 6, 0);
    }

    public mh2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = new xh1();
    }
}
