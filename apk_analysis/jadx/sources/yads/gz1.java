package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import defpackage.j59;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class gz1 extends ni5 implements wh1 {
    public final /* synthetic */ xh1 q;
    public nl3 r;

    public gz1(Context context) {
        super(context);
        this.q = new xh1();
    }

    @Override // yads.r16
    public final void a(View view) {
        this.q.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.q.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.q.d;
    }

    @Override // yads.s51
    public final void d() {
        this.q.d();
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
        this.q.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.q.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.q.b.g();
    }

    @Override // yads.s51
    public final l51 i() {
        return this.q.a.a;
    }

    @Override // yads.an2, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.q.h();
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        this.q.release();
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.q.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.q.a.setBorder(ttVar, f51Var, view);
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.q.a.setNeedClipping(z);
    }

    public void setValueUpdater(nl3<? super String, j59> nl3Var) {
        this.r = nl3Var;
    }

    @Override // yads.wh1
    public void setDiv(dq0 dq0Var) {
        this.q.c = dq0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (dq0) this.q.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.q.b();
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.q.a(tp0Var);
    }
}
