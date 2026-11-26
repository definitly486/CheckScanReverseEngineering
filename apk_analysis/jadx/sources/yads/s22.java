package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class s22 extends kn5 implements wh1 {
    public final /* synthetic */ xh1 I;

    public s22(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.I = new xh1();
    }

    @Override // yads.r16
    public final void a(View view) {
        this.I.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.I.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.I.d;
    }

    @Override // yads.s51
    public final void d() {
        this.I.d();
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
        this.I.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.I.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.I.b.g();
    }

    @Override // yads.s51
    public final l51 i() {
        return this.I.a.a;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.I.h();
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        this.I.release();
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.I.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.I.a.setBorder(ttVar, f51Var, view);
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.I.a.setNeedClipping(z);
    }

    @Override // yads.wh1
    public void setDiv(fq0 fq0Var) {
        this.I.c = fq0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (fq0) this.I.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.I.b();
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.I.a(tp0Var);
    }
}
