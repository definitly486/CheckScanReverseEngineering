package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class op1 extends gt3 implements wh1, g71 {
    public final /* synthetic */ xh1 C;
    public final /* synthetic */ h71 D;

    public op1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.C = new xh1();
        this.D = new h71();
    }

    @Override // yads.r16
    public final void a(View view) {
        this.C.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.C.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.C.d;
    }

    @Override // yads.s51
    public final void d() {
        this.C.d();
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
        this.C.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.C.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.C.b.g();
    }

    @Override // yads.g71
    public final List h() {
        return this.D.a;
    }

    @Override // yads.s51
    public final l51 i() {
        return this.C.a.a;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.C.h();
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        this.C.release();
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.C.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.C.a.setBorder(ttVar, f51Var, view);
    }

    @Override // yads.g71
    public void setItems(List<cn1> list) {
        this.D.a = list;
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.C.a.setNeedClipping(z);
    }

    @Override // yads.wh1
    public void setDiv(up0 up0Var) {
        this.C.c = up0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (up0) this.C.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.C.b();
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.C.a(tp0Var);
    }

    public op1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ op1(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public op1(Context context) {
        this(context, null, 6, 0);
    }
}
