package yads;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class vb2 implements View.OnLayoutChangeListener {
    public final /* synthetic */ vq0 b;
    public final /* synthetic */ View c;
    public final /* synthetic */ View d;
    public final /* synthetic */ qb2 e;
    public final /* synthetic */ fs2 f;
    public final /* synthetic */ xb2 g;
    public final /* synthetic */ gc5 h;
    public final /* synthetic */ tt i;
    public final /* synthetic */ br0 j;
    public final /* synthetic */ sb2 k;

    public vb2(vq0 vq0Var, View view, View view2, qb2 qb2Var, fs2 fs2Var, xb2 xb2Var, gc5 gc5Var, tt ttVar, br0 br0Var, sb2 sb2Var) {
        this.b = vq0Var;
        this.c = view;
        this.d = view2;
        this.e = qb2Var;
        this.f = fs2Var;
        this.g = xb2Var;
        this.h = gc5Var;
        this.i = ttVar;
        this.j = br0Var;
        this.k = sb2Var;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        vq0 vq0Var = this.b;
        Rect rect = new Rect();
        vq0Var.getWindowVisibleDisplayFrame(rect);
        Point pointA = yb2.a(this.c, this.d, this.e, this.f);
        int iMin = Math.min(this.c.getWidth(), rect.width());
        int iMin2 = Math.min(this.c.getHeight(), rect.height());
        if (iMin < this.c.getWidth()) {
            bo2 bo2Var = this.g.d;
            vq0 vq0Var2 = this.b;
            ao2 ao2VarA = bo2Var.a(vq0Var2.Q, vq0Var2.O);
            ao2VarA.d.add(new Throwable("Tooltip width > screen size, width was changed"));
            ao2VarA.a();
        }
        if (iMin2 < this.c.getHeight()) {
            bo2 bo2Var2 = this.g.d;
            vq0 vq0Var3 = this.b;
            ao2 ao2VarA2 = bo2Var2.a(vq0Var3.Q, vq0Var3.O);
            ao2VarA2.d.add(new Throwable("Tooltip height > screen size, height was changed"));
            ao2VarA2.a();
        }
        this.h.update(pointA.x, pointA.y, iMin, iMin2);
        xb2 xb2Var = this.g;
        tt ttVar = this.i;
        br0 br0Var = this.j;
        sb2 sb2Var = this.k;
        bj2.a(xb2Var.b, ttVar.a, ttVar.b, null, br0Var);
        bj2.a(xb2Var.b, ttVar.a, ttVar.b, sb2Var, br0Var);
        this.g.a.a();
    }
}
