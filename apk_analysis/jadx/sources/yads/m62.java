package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class m62 extends yu5 implements wh1 {
    public final /* synthetic */ xh1 f;

    public m62(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = new xh1();
    }

    @Override // yads.r16
    public final void a(View view) {
        this.f.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.f.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.f.d;
    }

    @Override // yads.s51
    public final void d() {
        this.f.d();
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

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        if (view != null && view.getVisibility() == 0) {
            tq.a(view, canvas);
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // yads.s51
    public final void e() {
        this.f.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.f.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.f.b.g();
    }

    @Override // yads.s51
    public final l51 i() {
        return this.f.a.a;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f.h();
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        this.f.release();
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.f.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.f.a.setBorder(ttVar, f51Var, view);
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.f.a.setNeedClipping(z);
    }

    @Override // yads.wh1
    public void setDiv(iq0 iq0Var) {
        this.f.c = iq0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (iq0) this.f.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.f.b();
    }

    public m62(Context context) {
        this(context, null);
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.f.a(tp0Var);
    }
}
