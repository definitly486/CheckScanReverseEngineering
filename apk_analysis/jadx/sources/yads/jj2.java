package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class jj2 extends bl6 implements wh1, g71 {
    public final /* synthetic */ xh1 A;
    public final /* synthetic */ h71 B;

    public jj2(Context context) {
        super(context);
        this.A = new xh1();
        this.B = new h71();
    }

    @Override // yads.r16
    public final void a(View view) {
        this.A.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.A.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.A.d;
    }

    @Override // yads.s51
    public final void d() {
        this.A.d();
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
        this.A.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.A.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.A.b.g();
    }

    @Override // yads.g71
    public final List h() {
        return this.B.a;
    }

    @Override // yads.s51
    public final l51 i() {
        return this.A.a.a;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.A.h();
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        this.A.release();
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.A.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.A.a.setBorder(ttVar, f51Var, view);
    }

    @Override // yads.g71
    public void setItems(List<cn1> list) {
        this.B.a = list;
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.A.a.setNeedClipping(z);
    }

    @Override // yads.wh1
    public void setDiv(up0 up0Var) {
        this.A.c = up0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (up0) this.A.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.A.b();
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.A.a(tp0Var);
    }
}
