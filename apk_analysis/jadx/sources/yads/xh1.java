package yads;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class xh1 implements wh1, s51, r16 {
    public br0 c;
    public tt d;
    public final /* synthetic */ t51 a = new t51();
    public final /* synthetic */ u16 b = new u16();
    public final ArrayList e = new ArrayList();

    @Override // yads.r16
    public final void a(View view) {
        this.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.d;
    }

    @Override // yads.s51
    public final void d() {
        this.a.d();
    }

    @Override // yads.s51
    public final void e() {
        this.a.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.b.g();
    }

    public final void h() {
        l51 l51Var = this.a.a;
        if (l51Var != null) {
            l51Var.d();
        }
    }

    @Override // yads.s51
    public final l51 i() {
        return this.a.a;
    }

    @Override // yads.wh1
    public final void setBindingContext(tt ttVar) {
        this.d = ttVar;
    }

    @Override // yads.s51
    public final void setBorder(tt ttVar, f51 f51Var, View view) {
        this.a.setBorder(ttVar, f51Var, view);
    }

    @Override // yads.wh1
    public final void setDiv(br0 br0Var) {
        this.c = br0Var;
    }

    @Override // yads.s51
    public final void setNeedClipping(boolean z) {
        this.a.setNeedClipping(z);
    }

    @Override // yads.wh1
    public final br0 a() {
        return this.c;
    }
}
