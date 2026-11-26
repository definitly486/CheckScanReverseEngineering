package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class s52 extends yt5 implements wh1 {
    public final /* synthetic */ xh1 e;

    public s52(Context context) {
        super(context);
        this.e = new xh1();
    }

    @Override // yads.r16
    public final void a(View view) {
        this.e.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.e.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.e.d;
    }

    @Override // yads.s51
    public final void d() {
        this.e.d();
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
        this.e.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.e.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.e.b.g();
    }

    @Override // yads.s51
    public final l51 i() {
        return this.e.a.a;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.e.h();
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        this.e.release();
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.e.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.e.a.setBorder(ttVar, f51Var, view);
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.e.a.setNeedClipping(z);
    }

    @Override // yads.wh1
    public void setDiv(hq0 hq0Var) {
        this.e.c = hq0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (hq0) this.e.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.e.b();
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.e.a(tp0Var);
    }
}
