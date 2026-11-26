package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class wz1 extends ri5 implements wh1 {
    public final /* synthetic */ xh1 g;

    public wz1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new xh1();
        setDividerColor(335544320);
    }

    @Override // yads.r16
    public final void a(View view) {
        this.g.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.g.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.g.d;
    }

    @Override // yads.s51
    public final void d() {
        this.g.d();
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
        this.g.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.g.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.g.b.g();
    }

    @Override // yads.s51
    public final l51 i() {
        return this.g.a.a;
    }

    @Override // yads.ri5, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.g.h();
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        this.g.release();
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.g.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.g.a.setBorder(ttVar, f51Var, view);
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.g.a.setNeedClipping(z);
    }

    @Override // yads.wh1
    public void setDiv(eq0 eq0Var) {
        this.g.c = eq0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (eq0) this.g.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.g.b();
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.g.a(tp0Var);
    }

    public wz1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ wz1(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public wz1(Context context) {
        this(context, null, 6, 0);
    }
}
