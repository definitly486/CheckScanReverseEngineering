package yads;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class aj2 implements View.OnLayoutChangeListener {
    public final /* synthetic */ vq0 b;
    public final /* synthetic */ qb1 c;
    public final /* synthetic */ bj2 d;
    public final /* synthetic */ View e;
    public final /* synthetic */ fs2 f;
    public final /* synthetic */ br0 g;
    public final /* synthetic */ List h;
    public final /* synthetic */ List i;
    public final /* synthetic */ List j;

    public aj2(vq0 vq0Var, qb1 qb1Var, bj2 bj2Var, View view, fs2 fs2Var, br0 br0Var, List list, List list2, List list3) {
        this.b = vq0Var;
        this.c = qb1Var;
        this.d = bj2Var;
        this.e = view;
        this.f = fs2Var;
        this.g = br0Var;
        this.h = list;
        this.i = list2;
        this.j = list3;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        if (defpackage.aa4.e(this.b.O, this.c)) {
            this.d.f.a(this.e, this.b, this.f, this.g, this.h);
            bj2 bj2Var = this.d;
            vq0 vq0Var = this.b;
            fs2 fs2Var = this.f;
            View view2 = this.e;
            br0 br0Var = this.g;
            List list = this.i;
            bj2Var.getClass();
            ArrayList arrayListA = bj2.a(list, fs2Var);
            bj2 bj2Var2 = this.d;
            List list2 = this.j;
            fs2 fs2Var2 = this.f;
            bj2Var2.getClass();
            bj2Var.a(vq0Var, fs2Var, view2, br0Var, arrayListA, bj2.a(list2, fs2Var2));
        }
        this.d.h.remove(this.e);
    }
}
